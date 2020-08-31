#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""stepperdriver.py: establishes communication between a generic stepper motor driver board and the Sparkfun Auto pHAT and converts commands before sending them to signal pins"""

#=======================================================================
# Based in part on examples provided by stepper manufacturer S2Pi
# however no license information could be found on the software examples
# provided by the manufacturer, website is below:
# https://wiki.52pi.com/index.php/Stepper_Motor_SKU:_D-0011
#
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

import RPi.GPIO as GPIO
import time
import rospy
from me457common.msg import Stepper
from me457common.srv import StepperServer

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
coil_A_1_pin = 4 # pink #IN2
coil_A_2_pin = 17 # orange #IN4
coil_B_1_pin = 23 # blue # IN1
coil_B_2_pin = 24 # yellow #IN3

# changing to 2D list for Python 3 compatability
StepCount = 8
Seq = [[0,1,0,0],[0,1,0,1],[0,0,0,1],[1,0,0,1],[1,0,0,0],[1,0,1,0],[0,0,1,0],[0,1,1,0]]

GPIO.setup(coil_A_1_pin, GPIO.OUT)
GPIO.setup(coil_A_2_pin, GPIO.OUT)
GPIO.setup(coil_B_1_pin, GPIO.OUT)
GPIO.setup(coil_B_2_pin, GPIO.OUT)

fwd = 0
bwd = 1

delay = 1/1000 #s 1ms equivalent

def setStep(w1, w2, w3, w4):
	GPIO.output(coil_A_1_pin, w1)
	GPIO.output(coil_A_2_pin, w2)
	GPIO.output(coil_B_1_pin, w3)
	GPIO.output(coil_B_2_pin, w4)

def forward(this_delay, steps):
	for i in range(steps):
		for j in range(StepCount):
			setStep(Seq[j][0], Seq[j][1], Seq[j][2], Seq[j][3])
			time.sleep(this_delay)

def backward(this_delay, steps):
	for i in range(steps):
		for j in reversed(range(StepCount)):
			setStep(Seq[j][0], Seq[j][1], Seq[j][2], Seq[j][3])
			time.sleep(this_delay)

def handle_stepper(request):
	# using these global names for naming purposes
	global fwd
	global bwd
	global delay

	if request.direction == fwd:
		forward(delay, request.steps)
	elif request.direction == bwd:
		backward(delay, request.steps)

	# ROS wants a return value for services
	# this should be something more intelligent than this but we are
	# pressed for time and will fix it later
	return(1)

def stepper_server():
	rospy.init_node('stepperserver')
	s = rospy.Service('stepperserver', StepperServer, handle_stepper)
	print("Stepper service ready")
	rospy.spin()

if __name__ == '__main__':

	stepper_server()
