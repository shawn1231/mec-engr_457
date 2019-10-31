#!/usr/bin/env python

#Cody Smith
#Mechatronics
#October 30th, 2019

# This file represents a demo to be used by students for testing PWM outputs
# by making sure that commanded values are capable of making servos/ESCs move
# as well as providing a template for writing the publisher for PWM outputs
# Additionally, for convenience as well as to provide a demo on how to use
# RC inputs, the servos/ESCs can be commanded to change position/speed by
# moving sticks on an RC transmitter.  This example only uses a single RC
# channel.  Modifications will be needed in order to use the other channels.

import rospy
import numpy as np

# import custom messages that we will have to use
from navio2ros.msg import RC # for reading in RC values from TX
from navio2ros.msg import PWM # for outputting values to the servo rail
from navio2ros.msg import Angular

#rcin = RC() # not currently using, should be used to get other RC channels
pwmout = PWM()

outval = 1 # write 1 if we don't have any other info
roll_channel = 0
pitch_channel = 1
throttle_channel = 2
yaw_channel = 3
emergency_switch_channel = 4

# use this callback to get exactly one channel from the rc message and copy
# its value into a variable called outval
def callback_rc(data):
	global roll
	roll = data.channel[roll_channel]
	global pitch
	pitch = data.channel[pitch_channel]
	global throttle
	throttle = data.channel[throttle_channel]
	global yaw
	yaw = data.channel[yaw_channel]
	global emergency_switch
	emergency_switch = data.channel[emergency_switch_channel]

def callback_Angular(data):
	global measured_roll_angle
	measured_roll_angle = data.roll
	global measured_pitch_angle
	measured_pitch_angle = data.pitch

#Initializing Variables
roll_error_p = np.zeros(2)
pitch_error_p = np.zeros(2)
roll_error_i = 0.0
pitch_error_i = 0.0
time = np.zeros(2)
dt = 0.0
kp = 0.0011
ki = 0.0000
kd = 0.0000

# setup a subscriber to the /rcpub topic, this topic has a maximum number
# of channels = 12 but most TX won't be able to broadcast that many channels
# use rostopic echo /rcpub to inspect values and identify which channel
# corresponds to which stick/switch
sub = rospy.Subscriber('/rcpub',RC,callback_rc, queue_size=10)
sub = rospy.Subscriber('/TrashCan',Angular,callback_Angular, queue_size=10)

# setup a publisher to the /motorcommand topic.  This will be used to output
# commands to the servo rail.  There are 14 channels.  You should always
# write all 14 even if you are not using that many.  The C++ code in the
# background might break if you try to send lists smaller than 14
pub = rospy.Publisher('/motorcommand',PWM, queue_size=10)

# register the node
rospy.init_node('rctoservodemo', anonymous=True)

if __name__ == '__main__':

	# try/except block here is a fancy way to allow code to cleanly exit on a keyboard break (ctrl+c)
	try:
		while not rospy.is_shutdown():

		
			if emergency_switch > 1500:

				for i in range(len(pwmout.channel)):
					pwmout.channel[i] = 1.0

				pub.publish(pwmout)
			
			else:
			
				time[1] = rospy.get_time()
				dt = time[1] - time[0]

				roll = roll / 1000.0
				pitch = pitch / 1000.0
				throttle = throttle / 1000.0
				yaw = yaw / 1000.0

				##Creating a 20 degree angle according to checkpoint 2's problem statement
			
				desired_roll_angle = (((roll-1.050)*40)/(1.97-1.05))-20
				desired_pitch_angle = (((pitch-1.050)*40)/(1.97-1.05))-20

				################### P Error Calculations ###################

				roll_error_p[1] = desired_roll_angle - measured_roll_angle
				pitch_error_p[1] = desired_pitch_angle - measured_pitch_angle
			
				#Accounting for abnormal data

				if roll_error_i> 150:
					roll_error_i = 150
				if roll_error_i < -150:
					roll_error_i = -150
				if pitch_error_i > 150:
					pitch_error_i = 150
				if pitch_error_i < -150:
					pitch_error_i = -150

				################### I Error Calculations ###################

				#Trapezoidal Rule for calculating I
				roll_error_i = roll_error_i + ((roll_error_p[1] - roll_error_p[0])/2)*dt #Roll Error I
				pitch_error_i = pitch_error_i + ((pitch_error_p[1] - pitch_error_p[0])/2)*dt #Pitch Error I
			
				################### D Error Calculations ###################
				roll_error_d = (roll_error_p[1]-roll_error_p[0])/dt
				pitch_error_d = (pitch_error_p[1]-pitch_error_p[0])/dt
	

				#Storing old data for new iterations
				time[0] = time[1]
				roll_error_p[0] = roll_error_p[1]
				pitch_error_p[0] = pitch_error_p[1]

				################### PID Calculations ###################

				roll_PID = (roll_error_p[1]*kp)+(roll_error_i*ki)+(roll_error_d*kd)
				pitch_PID = (pitch_error_p[1]*kp)+(pitch_error_i*ki)+(pitch_error_d*kd)

				# human pilot cannot change sticks faster than 50Hz
				rate = rospy.Rate(50)

				################### Writing Values to Motors ###################

				motor_1_cmd = (throttle + pitch_PID)				
				pwmout.channel[0] = motor_1_cmd

				motor_2_cmd = (throttle - roll_PID)
				pwmout.channel[1] = motor_2_cmd	

				motor_3_cmd = (throttle - pitch_PID)
				pwmout.channel[2] = motor_3_cmd
			
				motor_4_cmd = (throttle + roll_PID)
				pwmout.channel[3] = motor_4_cmd
			
				# publish the topic to motor command
				pub.publish(pwmout)

				# this is ros magic, basically just a sleep function with the specified dt
				rate.sleep()

	# as stated before, try/except is used to nicely quit the program using ctrl+c
	except rospy.ROSInterruptException:

		# before shutting down, turn all outputs back to 1 for safety
		for i in range(len(pwmout.channel)):
			pwmout.channel[i] = 1.0

		# publish the topic before closing
		pub.publish(pwmout)

		pass

