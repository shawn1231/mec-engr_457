#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""rctoservo_new.py - Use RC input and control the motors"""

#=======================================================================
# Original work: Copyright (c) 2019 SparkFun Electronics
# Modified work: Copyright (c) 2020 University of Missouri - Kansas City
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#=======================================================================

import rospy
from me457common.msg import Servo
from me457common.msg import RC

__author__     = "Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, Wes Furuya, and Sparkfun Electronics"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, Wes Furuya, and Sparkfun Electronics"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

# set min and max cmd magnitude
max_val = 100
min_val = 0

# Set refresh rate, Hz
refresh_rate = 50

# Dummy variable that will contain the single RC channel
outval = 1

# Channel for throttle from RC
throttle_channel = 0 

# all ROS init stuff has been moved to the leftmost scope
# inc order to get the shutdown working properly so that
# ESCs and motors can be properly shutdown, on_shutdown()
# seems to be the most reliable way to do this but it
# requires a shutdown function and in lieu of initializing
# a new node within the shutdown or passing a bunch of
# parameters, putting these vars within the scope of the
# shutdown function is the easiest solution
cmd = Servo()
rc = RC()

def callback_rc(data):
	global outval
	outval=data.channel[throttle_channel]
# startup a node, give it a meaningful name, this node is
# sending a specific type of signal to the servo message
# which invokes the servo driver callback which puts the
# correct signal on the servo pins and moves the actuator

# all queue sizes should be set to 1, in general, we do not
# care to buffer messages and want to use the most recent
# message even if that means we lose old information
servo_cmd = rospy.Publisher('servocmd', Servo, queue_size=1)

# Subscriber to grab RC data
rc_sub = rospy.Subscriber('/rcpub', RC,callback_rc, queue_size=1)
rospy.init_node('RCservoDemo')
# use this callback to get exactly one channel from the rc message and copy
# its value into a variable called outval

def rc_servo_demo():
    
	# this is the magic function that lets us send a final
	# command out to prevent leaving speed commands on motors
	# we expect to be disabled causing unsafe conditions
	rospy.on_shutdown(safe_shutdown)

	rate = rospy.Rate(refresh_rate)

    #global outval #Grab global motor output value
    
	while not rospy.is_shutdown():

		# fill up the message header first
		cmd.header.stamp = rospy.Time.now()

		

		# Only spinning ONE motor
		cmd.channel[0] = outval*.05

		# publish the message to trigger the driver callback
		servo_cmd.publish(cmd)

		rate.sleep()

def safe_shutdown():

	# when we exit set all channels to 0 for safety
	for i in range(len(cmd.channel)):
		cmd.channel[i] = 0
	servo_cmd.publish(cmd)

if __name__ == '__main__':

	rc_servo_demo()

