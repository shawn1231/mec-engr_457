#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""servocmdexample.py: generates a signal and publishes that signal to the servo message"""

import rospy
from me457common.msg import Servo

# set min and max cmd magnitude for tringular wave signal
max_val = 100
min_val = 0

# start value must be within the limits above but must not
# be equal to either limit
start_val = 1

# this rate is not equal to the rate (1/period) of the
# trinagular wave but instead is just a parameter controlling
# how fast the command is incremented/decrimented
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

__author__     = "Shawn Herrington, Travis Fields, Dietrich Kruse, and Simeon Karnes"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, and Simeon Karnes"]
__license__    = "BSD"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

def servo_demo():

	# this is the magic function that lets us send a final
	# command out to prevent leaving speed commands on motors
	# we expect to be disabled causing unsafe conditions
	rospy.on_shutdown(safe_shutdown)

	rate = rospy.Rate(sweep_speed)

	value = start_val
	sign = 1

	i = 0 # dummy to start sweep
	while not rospy.is_shutdown():

		# fill up the message header first
		cmd.header.stamp = rospy.Time.now()

		# if we are getting close to the end of our limits
		if value > max_val - 1 or value < min_val + 1:
			# then flip the sign
			sign = sign * -1

		# always increment/decriment the value
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
