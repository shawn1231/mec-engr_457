#!/usr/bin/env python

import rospy
import time
import csv
import os
import datetime

# import custom messages that we will have to use
# Vehicle is the "big" custom message
# IMU is needed for the IMU publisher
from navio2ros.msg import Vehicle
from navio2ros.msg import IMU

# create a message of type Vehicle(), this is a custom type which contains all the parts
# we are going to need in order to make the quads fly
veh = Vehicle()

def callback_imu(data):
	global veh
	veh.imu.accelerometer.x = data.accelerometer.x
	veh.imu.accelerometer.y = data.accelerometer.y
	veh.imu.accelerometer.z = data.accelerometer.z
	veh.imu.gyroscope.x = data.gyroscope.x
	veh.imu.gyroscope.y = data.gyroscope.y
	veh.imu.gyroscope.z = data.gyroscope.z
	veh.imu.magnetometer.x = data.magnetometer.x
	veh.imu.magnetometer.y = data.magnetometer.y
	veh.imu.magnetometer.z = data.magnetometer.z

# uncomment one of these, there are two IMUs MPU9250 and LSM9DS1
message_name = '/imumpupub'
#message_name = '/imulsmpub'

# setup a subscriber, for this assignment we only want IMU
sub = rospy.Subscriber(message_name,IMU,callback_imu)

# register the node with the name logger
rospy.init_node('logger', anonymous=True)

#---------Logfile Setup-------------#
# populate the data header, these are just strings, you can name them anything
myData = ["time","accel_x","accel_y","accel_z","gyro_x","gyro_y","gyro_z","mag_x","mag_y","mag_z"]

# this creates a filename which contains the current date/time RaspberryPi does not have a real time clock, the files
# will have the correct sequence (newest to oldest is preserved) but unless you set it explicitely the time will not
# be the correct (it will not be the "real" time
# the syntax for the command to set the time is:  bashrc: $ sudo time -s "Mon Aug 26 22:20:00 CDT 2019"
# note that the path used here is an absolute path, if you want to put the log files somewhere else you will need
# to include an updated absolute path here to the new directory where you want the files to appear
fileNameBase = "/home/pi/catkin_ws/src/navio2ros/scripts/logfiles/" + datetime.datetime.now().strftime("%b_%d_%H_%M")
fileNameSuffix = ".csv"
# num is used for incrementing the file path if we already have a file in the directory with the same name
num = 1
fileName = fileNameBase + fileNameSuffix
# check if the file already exists and increment num until the name is unique
while os.path.isfile(fileName):
	fileName = fileNameBase + "_" + str(num) + fileNameSuffix
	num = num + 1

# now we know we have a unique name, let's open the file, 'a' is append mode, in the unlikely event that we open
# a file that already exists, this will simply add on to the end of it (rather than destroy or overwrite data)
myFile = open(fileName, 'a')
with myFile:
	writer = csv.writer(myFile)
	writer.writerow(myData)

# get the CPU time at which we started the node, we will use this to subtract off so that our time vector
# starts near 0
zero_time = rospy.get_time()

# this is some ros magic to control the loop timing, you can change this to log data faster/slower as needed
# note that the IMU publisher publishes data at a specified rate (500Hz) and while this number could be
# changes, in general, you should keep the loop rate for the logger below the loop rate for the IMU publisher
rate = rospy.Rate(100) #100 Hz


if __name__ == '__main__':

	# try/except block here is a fancy way to allow code to cleanly exit on a keyboard break (ctrl+c)
	try:
		while not rospy.is_shutdown():

			# get the current time and subtract off the zero_time offset
			now = (rospy.get_time()-zero_time)
			# create the data vector which we will write to the file, remember if you change
			# something here, but don't change the header string, your column headers won't
			# match the data
			myData = [now, veh.imu.accelerometer.x,  veh.imu.accelerometer.y,  veh.imu.accelerometer.z,  veh.imu.gyroscope.x,  veh.imu.gyroscope.y ,  veh.imu.gyroscope.z,  veh.imu.magnetometer.x,  veh.imu.magnetometer.y,  veh.imu.magnetometer.z]

			# stick everything in the file
			myFile = open(fileName, 'a')
			with myFile:
				writer = csv.writer(myFile)
				writer.writerow(myData)

			# this is ros magic, basically just a sleep function with the specified dt
			rate.sleep()

	# as stated before, try/except is used to nicely quit the program using ctrl+c
	except rospy.ROSInterruptException:
		pass

