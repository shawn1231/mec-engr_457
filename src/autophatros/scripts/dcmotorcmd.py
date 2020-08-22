#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""dcmotorcmdexample.py: generates a signal and publishes that signal to the dcmotor message"""

#==================================================================================
# Original work: Copyright (c) 2019 SparkFun Electronics
# Modified work: Copyright (c) 2020 University of Missouri - Kansas City
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#==================================================================================

import rospy
import time
from me457common.msg import DCMotor

__author__     = "Shawn Herrington, Travis Fields, Dietrich Kruse, and Simeon Karnes"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, Mark Lidemer, and Sparkfun Electronics"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"


# set min and max cmd magnitude for triangular wave signal
max_val = 100
min_val = -100

# start value must be within the limits above but must not
# equal to either limits
start_val = 0

# this rate is not equal to the rate (1/period) of the
# triangular wave but instead it is just a parameter controlling
# how fast the command is incremented/decremented
sweep_speed = 25

# a lot of stuff in this file has been moved to the leftmost scope
# in order to avoid problems encountered when setting up the safe
# shutdown function
# I strongly suspect this is bad code smell but we are under time
# constraints at this point and there is no time to fix this
cmd = DCMotor()

# startup a node with a meaningul name, in this case, this node
# generates a triangular wave signal (representing the commanded
# speed for a dc motor) then publishes that signal
rospy.init_node('dcmotorspeedsweep')
# all queue sizes are set to 1 for this project, we always want
# the most recent data even if that means tossing out old messages
pub = rospy.Publisher('dcmotorcmd', DCMotor, queue_size=1)

def dcmotor_demo():

	# this is the magic function which lets us send a final
	# command out to prevent leaving speed commands on motors
	# we expect to be disabled causing unsafe conditions
	rospy.on_shutdown(safe_shutdown)

	rate = rospy.Rate(dcmotor_odr)

	value = start_val
	sign = 1

	while not rospy.is_shutdown():

		# fill up the header time stamp first
		cmd.header.stamp = rospy.Time.now()

		# if we are getting close to the end of our limits
		if value > max_val -1 or value < min_val + 1:
			# then flip the sign
			sign = sign*-1

		# always increment/decrement the value
		value = value + sign

		# always write to all channels
		for i in range(len(cmd.speed)):
			cmd.speed[i] = value

		# publish the message to trigger the driver callback
		pub.publish(cmd)

		rate.sleep()

def safe_shutdown():

	# when we exit set all channeel to 0 for safety
	for i in range(len(cmd.speed)):
		cmd.speed[i] = 0;
	pub.publish(cmd)


if __name__ == '__main__':

	dcmotor_cmd()

