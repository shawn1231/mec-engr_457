#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""servocmdexample.py: generates a signal and publishes that signal to the servo message"""

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

__author__     = "Shawn Herrington, Travis Fields, Dietrich Kruse, and Simeon Karnes"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, Wes Furuya, and Sparkfun Electronics"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

# set min and max cmd magnitude for triangular wave signal
max_val = 100
min_val = 0

# start value must be within the limits above but must not
# be equal to either limit
start_val = 1

# this rate is not equal to the rate (1/period) of the
# triangular wave but instead is just a parameter controlling
# how fast the command is incremented/decremented
sweep_speed = 25 # Hz

# all ROS init stuff has been moved to the leftmost scope
# inc order to get the shutdown working properly so that
# ESCs and motors can be properly shutdown, on_shutdown()
# seems to be the most reliable way to do this but it
# requires a shutdown function and in lieu of initializing
# a new node within the shutdown or passing a bunch of
# parameters, putting these vars within the scope of the
# shutdown function is the easiest solution
cmd = Servo()

# startup a node, give it a meaningful name, this node is
# sending a specific type of signal to the servo message
# which invokes the servo driver callback which puts the
# correct signal on the servo pins and moves the actuator
rospy.init_node('servosweep')
# all queue sizes should be set to 1, in general, we do not
# care to buffer messages and want to use the most recent
# message even if that means we lose old information
pub = rospy.Publisher('servocmd', Servo, queue_size=1)

def servo_demo():

	# this is the magic function that lets us send a final
	# command out to prevent leaving speed commands on motors
	# we expect to be disabled causing unsafe conditions
	rospy.on_shutdown(safe_shutdown)

	rate = rospy.Rate(sweep_speed)

	value = start_val
	sign = 1

	while not rospy.is_shutdown():

		# fill up the message header first
		cmd.header.stamp = rospy.Time.now()

		# if we are getting close to the end of our limits
		if value > max_val - 1 or value < min_val + 1:
			# then flip the sign
			sign = sign * -1

		# always increment/decrement the value
		value = value+sign

		# always write to all channels
		for i in range(len(cmd.channel)):
			cmd.channel[i] = value

		# publish the message to trigger the driver callback
		pub.publish(cmd)

		rate.sleep()

def safe_shutdown():

	# when we exit set all channels to 0 for safety
	for i in range(len(cmd.channel)):
		cmd.channel[i] = 0
	pub.publish(cmd)

if __name__ == '__main__':

	servo_demo()
