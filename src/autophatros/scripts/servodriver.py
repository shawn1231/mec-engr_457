#!/usr/bin/env python3

#=======================================================================
# Copyright (c) 2019 SparkFun Electronics
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
import pi_servo_hat
import time
import sys
from me457common.msg import Servo

###-------------------BEGIN USER CONFIGURATION--------------------###

# let's go with standard servo frequency of 50Hz, other frequencies may
# be supported but have not been tested
pwm_frequency = 50.0 #Hz

# SET THESE LIMITS WITH CARE
# set the desired RC PWM output bound, this will be used to set the
# duty cycle percentage for the driver, since the duty cycle for the
# driver represents true PWM (rather than RC) the duty cycle value
# must be modified in order to meet the requirements on output
# values in milliseconds
# these limits may be expanded up to 800-2200 for servos/ESCs however
# ESCs are known to be more particular about limits and further
# extending the range may cause ESCs to require calibration or result
# in non-working ESCs after a calibration is applies which cannot be
# overwritten due to inability to exceed the calibrated range in
# order to cause the device to go into calibration mode
# the actual percentage duty cycle command which will be sent is
# proportional to, but not equal to this ms value since it must be
# converted into percent duty cycle considering a standard square
# wave, these limits have been provided with these units as a
# convenience
max_ms = 2200.0 # ms
min_ms = 800.0 # ms

# in most cases the two sets of limits below should be set to the same
# values; however, it is not required. The driver can support an
# extended set of calibration limits even though the software would be
# capping commands to occur within some subset of that range, if the
# command and input limits are assigned different values you should
# have a good reason for doing it

# Set motor output bounds in terms of input checking, we will capture
# and modify non-complying input commands without throwing an error
# or exiting, note that this is important since some ESCs will go
# into a safe mode (or worse, a brake mode) where the motors are no
# longer commanded to spin once the upper limit of the throttle
# calibration is reached, this causes intermitten shutoffs and
# usually results in confusion, crashes and typically an incorrect
# solution is applied which can make the problem worse, since the
# commands are capped, the actuators can saturate non-linearly (hard
# saturation) but this is considered a better outcome than actuator
# shut down in mid flight
max_cmd = 100.0 # percent
min_cmd = 0.0   # percent

# these parameters are set as variables here to improve readability
# of this code, 0-100 percent is the most logical input limit to apply
# although others are possible. Realistically, these values can be set
# to any arbitrary numbers as long as the user is prepared to send
# commands which properly utilize the arbitrarily set limits
# for this class, students will command motor speed in terms of
# percentage with a max value of 100 and a min value of 0, this is an
# improvement over commanding the ms value for the RC pwm duty cycle
# since it doesn't require the odious explanation of the mechanics
# of the difference in RC and standard PWM square wave signals
max_in = 100.0 # percent
min_in = 0.0   # percent

###-------------------END OF USER CONFIGURATION-------------------###

# set up functions at this outermost scope, these have been borrowed
# from Sparkfun Examples
servos = pi_servo_hat.PiServoHat()

# not entirely sure why we need to restart here, no diagnostic
# "is connected?" function seems to be provided so we cannot check
# intelligently here and instead resort to blindly following some
# example code we found which always restarts during setup
servos.restart()

servos.set_pwm_frequency(pwm_frequency)

###------------MAKE SQUARE WAVE PWM BEHAVE LIKE RC PWM------------###

# set up some vars which will be used inside the range function
dt = 1/pwm_frequency
# convert from ms to percentage duty cycle for standard square
# wave since that is the language that our provided driver natively
# speaks, divide by 1000000 to convert ms to s, then divide by dt
# to convert to decimal of duty cycle for square wave with
# pwm_frequency then multiply by 100 to get percentage
min_out = min_ms / 1000000 / dt * 100
max_out = max_ms / 1000000 / dt * 100
# now solve for the linear scaling function, note that we do not
# want to send out 0% commands to the motors in most cases even
# when the user selects 0% we want to send out some minimum
# heartbeat signal since this is RC PWM, therefore we must
# use both slope and intercept rather than just a multiplier
m = (max_out - min_out)/(max_in-min_in) # slope
b = max_out - max_in*m                  # intercept

# quick scaling function added on top of the rest of the driver
# after discovering that the ouput is standard square wave instead
# of RC PWM, this may seem clunky but it was the lowest entropy
# solution at the time of this writing
def scale(input):

	return (m*input+b)

# saturation function for ensuring out of limit commands are not
# written to the output pins
def cmd_magnitude(command):

	if(command > max_cmd):
		command = max_cmd
	elif(command < min_cmd):
		command = min_cmd

	return command

# callback to handle routing/conversion from incoming commands into
# signals on the servo pins
def servo_callback(message):

	# cycle through all channels
	for i in range(len(message.channel)):
		# set the duty cycle according to the command in the message
		servos.set_duty_cycle(i,scale(cmd_magnitude(message.channel[i])))

# functionify our little program, the servo setup functions do not
# work properly if not at the left-most scope (this is in contrast
# to other devices which have been supported by following
# Sparkfun guides) so this function is smaller than would be
# expected
def servo_listener():

	rospy.init_node('servodriver', anonymous=True)
	rospy.Subscriber('servocmd', Servo, servo_callback)
	rospy.spin()

# run our listerner using the functions we have created
if __name__ == '__main__':

	servo_listener()


