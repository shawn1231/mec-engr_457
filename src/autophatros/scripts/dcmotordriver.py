#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""dcmotorcmdriver.py: establishes communication with the Sparkfun dc motor drive on the Auto pHAT and converts commands before sending them to the pins"""

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
import qwiic_scmd as qwiic_scmd
from me457common.msg import DCMotor

__author__     = "Shawn Herrington, Travis Fields, Dietrich Kruse, and Simeon Karnes, Mark Lidemer, and Sparkfun Electronics"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, Mark Lidemer, and Sparkfun Electronics"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

# these limits represents the actual integer values of the absolute value of the
# commands we want to send, the actual absolute value of the range is 0-255, we
# are intentionally avoiding space in the middle to avoid stalling the motors
# because the large gear reduction seems to be causing a large asymmetrical
# deadband
max_spd = 255 # decimal value of largest possible command
min_spd = 200 # chosen due to weird dead band issues (insufficien start torque)

# this is the range of user commands, for simplicity we are going to have the users
# input commands from -100 (reverse) to 100 percent
max_in = 100  # percent
min_in = -100 # percent

# set up motor driver parameters
# motor pin order is determined by reading order, left = 0, right = 1
left_motor	= 0
right_motor	= 1

# motor commands will come in as values from -255 to 255 but for
# sending commands to the driver this command is restricted to
# positive only, forward and backward bit will be set separately
forward		= 0
backward	= 1

# these are the clamp limits, this limiter is not for usefulness but
# rather to stay within the limitations of the numerical value which
# can be transmitted, this just keeps things from breaking, doesn't
# necessarily make it work though
max_cmd 	= 255
min_cmd 	= 0

# create the motor object out here
motor = qwiic_scmd.QwiicScmd()

# calculate values for the scale command
m = (max_spd - min_spd)/(max_in-min_in) # slope
b = max_spd - max_in*m                  # intercept

def scale(input):

	return(m*input+b)

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

def motor_callback(message):

	print("callback happening")

	if message.speed[left_motor] == 0:
		motor.set_drive(left_motor,  0,  0)
	else:
		motor.set_drive(left_motor,  cmd_direction(message.speed[left_motor]),  scale(cmd_magnitude(message.speed[left_motor])))

	if message.speed[right_motor] == 0:
		motor.set_drive(right_motor,  0,  0)
	else:
		motor.set_drive(right_motor, cmd_direction(message.speed[right_motor]), scale(cmd_magnitude(message.speed[right_motor])))

	print(cmd_direction(message.speed[right_motor]))
	print(cmd_magnitude(message.speed[right_motor]))

def motor_startup():

	if motor.connected == False:
		print("Motor Driver not connected. Check connections.")
		return

	# put motor commands to safe state, 0 speed and 0 direction
	motor.set_drive(left_motor, cmd_direction(0), cmd_magnitude(0))
	motor.set_drive(left_motor, cmd_direction(0), cmd_magnitude(0))

	motor.enable()

def motor_listener():

	rospy.init_node('dcmotordriver', anonymous=True)
	rospy.Subscriber("dcmotorcmd", DCMotor, motor_callback)
	rospy.spin()

if __name__ == '__main__':

	motor_startup() # set speeds to 0 and enable

	motor_listener() # Wait until a command is received

