#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""logger.py: establishes callbacks for all relevant message types then logs to a file at a consistent rate"""

#==================================================================================
# Original work: Copyright (c) 2020 University of Missouri - Kansas City
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
from msg import *

__author__     = "Shawn Herrington"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

# set the output data rate for the log
log_odr = 100 # Hz

vehicle = Vehicle()

# startup the logger node
rospy.init_node('logger')


def servo_callback(message):

	rospy.Subscriber('dcmotorcmd', DCMotor, queue_size=1)

	vehicle.dcmotor = message

def dcmotor_callback(message):

	rospy.Subscriber('dcmotorcmd', DCMotor, queue_size=1)

	vehicle.servo = message

def imu_callback(message):

	rospy.subscriber('imupub', IMU, queue_size=1)

	vehicle.imu = message

def encoder_callback(message):

	rospy.subscriber('encoderpub', Encoder, queue_size=1)

	vehicle.encoder = message


def logger():

	# establish the data rate according to the user parameter set above
	rate = rospy.Rate(imu_odr)


	while not rospy.is_shutdown():

		message.magnetometer.z = IMUchip.mzRaw

		#log data


		# wait for a calculated amount of time before doing it all over again
		rate.sleep()


if __name__ == '__main__':

	try:
		logger()

	except rospy.ROSInterruptException:

		pass
