#!/usr/bin/env python3

from __future__ import print_function

import rospy
import qwiic_icm20948 as qwiic_icm20948
import time
import sys
from me457common.msg import IMU

def imu_publisher():

	rospy.init_node('imu')
	pub = rospy.Publisher('imupub', IMU, queue_size=1)

	debug = True

	if debug == True:
		zero_time = rospy.get_time()
		cnt = 0 # dummy counter for slowing prints down
		running_sum = 0

	rate = rospy.Rate(250) # Attempt to run at 250 Hz

	IMUchip = qwiic_icm20948.QwiicIcm20948()

	if IMUchip.connected == False:
		print("The Qwiic ICM20948 device isn't connected to the system. Please check your connection", file=sys.stderr)
		return

	data = IMU()

	IMUchip.begin()

	while not rospy.is_shutdown():

		if IMUchip.dataReady():

			IMUchip.getAgmt() # read all axis and temp from sensor, note this also updates all instance variables

			if debug == True:
				# get the most current time
				current_time = rospy.get_time()

				if cnt>=499:
					# print out the average of the last 100 sample times
					print('{:.6}'.format(running_sum/500))
					# reset the counter
					cnt = 0
					# reset the running_sum
					running_sum = 0

				# always increment the counter
				cnt = cnt + 1

				# add to the running total
				running_sum = (zero_time - current_time) + running_sum

				# reset the time reference
				zero_time = current_time

			# Package the imu data into IMU message format and publish
#			data = IMU()
			#data.time.time = time.time()
			data.gyroscope.x = IMUchip.gxRaw
			data.gyroscope.y = IMUchip.gyRaw
			data.gyroscope.z = IMUchip.gzRaw

			data.accelerometer.x = IMUchip.axRaw
			data.accelerometer.y = IMUchip.ayRaw
			data.accelerometer.z = IMUchip.azRaw

			data.magnetometer.x = IMUchip.mxRaw
			data.magnetometer.y = IMUchip.myRaw
			data.magnetometer.z = IMUchip.mzRaw

			pub.publish(data)

			rate.sleep()


if __name__ == '__main__':

	try:
		imu_publisher()

	except rospy.ROSInterruptException:

		pass
