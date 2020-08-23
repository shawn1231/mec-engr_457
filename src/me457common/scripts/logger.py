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
import datetime
import os
import csv
from me457common.msg import *

__author__     = "Shawn Herrington"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

# set the output data rate for the log
log_odr = 100 # Hz

v = Vehicle()

# startup the logger node
rospy.init_node('logger', anonymous=True)

#---------Logfile Setup-------------#
# populate the data header, these are just strings, you can name them anything
myData = ["time","accel_x","accel_y","accel_z","gyro_x","gyro_y","gyro_z","mag_x","mag_y","mag_z","dcm_0","dcm_1","servo_0","servo_1","enc_0","enc_1"]

# this creates a filename which contains the current date/time RaspberryPi does not have a real time clock, the files
# will have the correct sequence (newest to oldest is preserved) but unless you set it explicitely the time will not
# be the correct (it will not be the "real" time
# the syntax for the command to set the time is:  bashrc: $ sudo time -s "Mon Aug 26 22:20:00 CDT 2019"
# note that the path used here is an absolute path, if you want to put the log files somewhere else you will need
# to include an updated absolute path here to the new directory where you want the files to appear
fileNameBase = "/home/pi/catkin_ws/src/autophatros/scripts/logfiles/" + datetime.datetime.now().strftime("%b_%d_%H_%M")
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

zero_time = rospy.get_time()

def servo_callback(message):

	global v

	v.servo = message

def dcmotor_callback(message):

	global v

	v.dcmotor = message

def imu_callback(message):

	global v

	v.imu = message

def encoder_callback(message):

	global v

	v.encoder = message

def logger():

	# establish the data rate according to the user parameter set above
	rate = rospy.Rate(log_odr)

	while not rospy.is_shutdown():

		rospy.Subscriber('imupub', IMU, imu_callback)

		rospy.Subscriber('encoderpub', Encoder, encoder_callback)

		rospy.Subscriber('servocmd', Servo, servo_callback)

		rospy.Subscriber('dcmotorcmd', DCMotor, dcmotor_callback)

		# get the current time and subtract off the zero_time offset
		now = (rospy.get_time()-zero_time)
		# create the data vector which we will write to the file, remember if you change
		# something here, but don't change the header string, your column headers won't
		# match the data
		myData = [now, v.imu.accelerometer.x,  v.imu.accelerometer.y,  v.imu.accelerometer.z,  v.imu.gyroscope.x,  v.imu.gyroscope.y ,  v.imu.gyroscope.z,  v.imu.magnetometer.x,  v.imu.magnetometer.y,  v.imu.magnetometer.z, v.dcmotor.speed[0], v.dcmotor.speed[1], v.servo.channel[0], v.servo.channel[1], v.encoder.count[0], v.encoder.count[1]]

		# stick everything in the file
		myFile = open(fileName, 'a')
		with myFile:
			writer = csv.writer(myFile)
			writer.writerow(myData)

		# wait for a calculated amount of time before doing it all over again
		rate.sleep()

if __name__ == '__main__':

	try:
		logger()

	except rospy.ROSInterruptException:

		pass
