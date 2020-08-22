#!/usr/bin/env python3

import rospy
import qwiic_icm20948 as qwiic_icm20948
import time
import sys
from me457common.msg import IMU

imu_odr = 250

def imu_publisher():

	rospy.init_node('imu')
	pub = rospy.Publisher('imupub', IMU, queue_size=1)

	rate = rospy.Rate(imu_odr)

	IMUchip = qwiic_icm20948.QwiicIcm20948()

	if IMUchip.connected == False:
		print("The Qwiic ICM20948 device isn't connected to the system. Please check your connection", file=sys.stderr)
		return

	IMUchip.begin()

	message = IMU()

	while not rospy.is_shutdown():

		if IMUchip.dataReady():

			IMUchip.getAgmt() # read all axis and temp from sensor, note this also updates all instance variables

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

			pub.publish(message)

			rate.sleep()


if __name__ == '__main__':

	try:
		imu_publisher()

	except rospy.ROSInterruptException:

		pass
