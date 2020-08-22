#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""encoder.py: establishes communication with Sparkfun dual encoder reader on the Auto pHAT and publishes the counts as a ROS message"""

#=======================================================================
# Original work: Copyright (c) 2019 SparkFun Electronics
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

import rospy
import time
import qwiic_dual_encoder_reader as qwiic_dual_encoder_reader
from me457common.msg import Encoder

__author__     = "Shawn Herrington, Travis Fields, Dietrich Kruse, and Simeon Karnes"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, and Sparkfun Electronics"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"


# establish the output data rate for the encoder, how fast do we need
# to read and publish in order for this information to be useful?
encoder_odr = 50 # Hz

def EncoderRead():

	# startup a node to read the encoder
	rospy.init_node('encoder')
	# create a publisher, we don't want old info, set the queue size to 1
	pub = rospy.Publisher('encoderpub', Encoder, queue_size=1)

	# setup the timer
	rate = rospy.Rate(encoder_odr)

	# create an object of encoder type
	encoders = qwiic_dual_encoder_reader.QwiicDualEncoderReader()

	# check and make sure the board is connected
	if encoders.connected == False:
		print("The Qwiic Dual Encoder Reader device isn't connected to the system. Please check your connection")
		return

	# if everything went well start the encoders up
	encoders.begin()

	# create an empty message object
	message = Encoder()

	while not rospy.is_shutdown():

		# always set the header time stamp
		message.header.stamp = rospy.Time.now()
		message.count[0] = encoders.count1
		message.count[1] = encoders.count2

		# always publish the message
		pub.publish(message)
		# sleep according to the desired odr
		rate.sleep()

if __name__ == '__main__':

	try:
		EncoderRead()

	except rospy.ROSInterruptException:

		pass

