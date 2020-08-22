#!/usr/bin/env python3

#==================================================================================
# Copyright (c) 2019 SparkFun Electronics
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
import qwiic_scmd as qwiic_scmd
from me457common.msg import DCMotor

# not needed anymore
#import sys
#import math

# set up motor driver parameters
# motor pin order is determined by reading order, left = 0, right = 1
left_motor	= 0
right_motor	= 1

# motor commands will come in as values from -255 to 255 but for
# sending commands to the driver this command is restricted to
# positive only, forward and backward bit will be set separately
forward		= 0
backward	= 1

max_cmd 	= 255
min_cmd 	= 0

def cmd_direction(command):
	# treating 0 speed as positive rotation here
	direction = forward
	# only change if backward is detected as negative command
	if command < 0:
		direction = backward
	return direction

def cmd_magnitude(command):
	# remember we only care about the absolute value, neg/pos
	# is handled in a separate function
	command = abs(command)
	# catch command values that are too big and clamp to max
	if(command > max_cmd):
		command = max_cmd
	# catch command values that are too big and clamp to min
	elif(command < min_cmd):
		command = min_cmd
	# always return the command
	# command has been modified by abs() guaranteed and possibly
	# max/min clamped as well, omitted else condition implies
	# that command is valid after abs() transformation
	return command

# I hate this, it's hard to read, screw efficiency
#	return min(max(n, min_cmd), max_cmd)

def motor_callback(message):

# obsolete replaced with less code
	# pre treat the speed to get a value for direction
#	motor_left_dir = sign(message.speed[0]) # Sign is dictated by the +/- on the sent cmd
#	motor_right_dir = sign(message.speed[1])

	# pretreat the speed to get acceptable values
#	motor_left_cmd = abs(message.speed[0]) # Range of values is between -255 and 255
#	motor_right_cmd = abs(message.motor_right)
	#clamp within range
#	motor_left_cmd = clamp(motor_left_cmd, motor_min, motor_max) # Clamp to within accept.
#	motor_right_cmd = clamp(motor_right_cmd, motor_min, motor_max) # range

	motor.set_drive(left_motor,  cmd_direction(message.speed[left_motor]),  cmd_magnitude(message.speed[left_command]))
	motor.set_drive(right_motor, cmd_direction(message.speed[right_motor]), cmd_magnitude(message.speed[right_motor]))

def motor_startup():

	motor = qwiic_scmd.QwiicScmd()

	if motor.connected == False:
		print("Motor Driver not connected. Check connections.")
		return

	# put motor commands to safe state, 0 speed and 0 direction
	motor.set_drive(left_motor, cmd_direction(0), cmd_magnitude(0))
	motor.set_drive(left_motor, cmd_direction(0), cmd_magnitude(0))

	motor.enable()

def motor_listener():

	rospy.init_node('dcmotordriver', anonymous=True)
	rospy.Subscriber("dcmotordriver", DCMotor, motor_callback)
	rospy.spin()

if __name__ == '__main__':

# replaced with function
	# Zero Motor Speeds
#	motor.set_drive(0,0,0) #motor, dir, speed
#	motor.set_drive(1,0,0)
#	motor.enable() # Enable motors now that they are zeroed
#	rospy.sleep(0.25)

	motor_startup() # set speeds to 0 and enable

	motor_listener() # Wait until a command is received

