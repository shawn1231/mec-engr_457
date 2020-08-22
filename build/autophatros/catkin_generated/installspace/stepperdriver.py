#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time
import rospy
from srv import *
#import StepperServer
#from autophatros.srv import StepperServer

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
coil_A_1_pin = 4 # pink #IN2
coil_A_2_pin = 17 # orange #IN4
coil_B_1_pin = 23 # blue # IN1
coil_B_2_pin = 24 # yellow #IN3

# this doesn't work in Python 3
# adjust if different
#StepCount = 8
#Seq = list(0, StepCount)

#Seq[0] = [0,1,0,0]
#Seq[1] = [0,1,0,1]
#Seq[2] = [0,0,0,1]
#Seq[3] = [1,0,0,1]
#Seq[4] = [1,0,0,0]
#Seq[5] = [1,0,1,0]
#Seq[6] = [0,0,1,0]
#Seq[7] = [0,1,1,0]

# changing to 2D list for Python 3 compatability
Seq = [[0,1,0,0],[0,1,0,1],[0,0,0,1],[1,0,0,1],[1,0,0,0],[1,0,1,0],[0,0,1,0],[0,1,1,0]]

GPIO.setup(coil_A_1_pin, GPIO.OUT)
GPIO.setup(coil_A_2_pin, GPIO.OUT)
GPIO.setup(coil_B_1_pin, GPIO.OUT)
GPIO.setup(coil_B_2_pin, GPIO.OUT)

forward		= 0
backward	= 1

delay		= 1 #ms

def setStep(w1, w2, w3, w4):
	GPIO.output(coil_A_1_pin, w1)
	GPIO.output(coil_A_2_pin, w2)
	GPIO.output(coil_B_1_pin, w3)
	GPIO.output(coil_B_2_pin, w4)

def forward(delay, steps):
	for i in range(steps):
		for j in range(StepCount):
			setStep(Seq[j][0], Seq[j][1], Seq[j][2], Seq[j][3])
			time.sleep(delay)

def backward(delay, steps):
	for i in range(steps):
		for j in reversed(range(StepCount)):
			setStep(Seq[j][0], Seq[j][1], Seq[j][2], Seq[j][3])
			time.sleep(delay)

def handle_stepper(request):
	if request.dir == forward:
		forward(delay, request.steps)
	elif request.dir == forward:
		backward(delay, request.steps)

def stepper_server():
	rospy.init_node('stepperserver')
	s = rospy.Service('stepperserver', StepperServer, handle_stepper)
	print("Stepper service ready")
	rospy.spin()

if __name__ == '__main__':
#	while True:
#		delay = 1 #1 ms is the smallest delay, it needs some small amount of time to move a step.
#	        steps = 50 # Number of steps you want to move.
#		forward(int(delay) / 1000.0, int(steps))
#	        backwards(int(delay) / 1000.0, int(steps))

	stepper_server()


