#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""imu.py: polls the ICM20948 on board the Auto pHAT and publishs the data to an IMU topic"""

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
import qwiic_icm20948 as qwiic_icm20948
import time
import sys
from me457common.msg import IMU

__author__     = "Shawn Herrington, Travis Fields, and Sparkfun Electronics"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, and Sparkfun Electronics"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

# set the output data rate for the IMU, this has been tested up to 250 and it seems
# to run comfortably, do not arbitrarily set this rate higher and expect perfect
# timing, you must verify on your own
imu_odr = 250 # Hz

def imu_publisher():

	# start the IMU node
	rospy.init_node('imu')
	# create a publisher, especially with the IMU we have no use for old data
	# so we set the buffer size to 1
	pub = rospy.Publisher('imupub', IMU, queue_size=1)

	# establish the data rate according to the user parameter set above
	rate = rospy.Rate(imu_odr)

	# create an object of the type
	IMUchip = qwiic_icm20948.QwiicIcm20948()

	# check that the constructor worked as expected, exit if not
	if IMUchip.connected == False:
		print("The Qwiic ICM20948 device isn't connected to the system. Please check your connection", file=sys.stderr)
		return

	# start up the chip now that we know we can talk to it
	IMUchip.begin()

	# create an empty message
	message = IMU()

	while not rospy.is_shutdown():

		# make sure it is ready for use before banging registers
		if IMUchip.dataReady():

			# built in function which gets it all for us
			IMUchip.getAgmt()

			# always fill in the time stamp in the header
			message.accelerometer.header.stamp = rospy.Time.now()
			message.gyroscope.header.stamp     = message.accelerometer.header.stamp
			message.magnetometer.header.stamp  = message.accelerometer.header.stamp

			# Package the imu data into IMU message format and publish
			message.gyroscope.x = IMUchip.gxRaw
			message.gyroscope.y = IMUchip.gyRaw
			message.gyroscope.z = IMUchip.gzRaw

			message.accelerometer.x = IMUchip.axRaw
			message.accelerometer.y = IMUchip.ayRaw
			message.accelerometer.z = IMUchip.azRaw

			message.magnetometer.x = IMUchip.mxRaw
			message.magnetometer.y = IMUchip.myRaw
			message.magnetometer.z = IMUchip.mzRaw

			# publish the message
			pub.publish(message)

			# wait for a calculated amount of time before doing it all over again
			rate.sleep()


if __name__ == '__main__':

	try:
		imu_publisher()

	except rospy.ROSInterruptException:

		pass
