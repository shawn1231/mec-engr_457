#!/usr/bin/env python3

import rospy
import time
import qwiic_dual_encoder_reader as qwiic_dual_encoder_reader
from me457common.msg import Encoder

encoder_odr = 50

def EncoderRead():

	rospy.init_node('encoder')
	pub = rospy.Publisher('encoder_pub', Encoder, queue_size=1)

	rate = rospy.Rate(encoder_odr)

	encoders = qwiic_dual_encoder_reader.QwiicDualEncoderReader()

	if encoders.connected == False:
		print("The Qwiic Dual Encoder Reader device isn't connected to the system. Please check your connection")
		return

	encoders.begin()

	message = Encoder()

	while not rospy.is_shutdown():

		message.header.stamp = rospy.Time.now()
		message.count[0] = encoders.count1 # Store encoder readings (grabs on a request
		message.count[1] = encoders.count2  # configuration I think)
		pub.publish(message) # Publish the new encoder values
		rate.sleep()

if __name__ == '__main__':

	try:
		EncoderRead()

	except rospy.ROSInterruptException:

		pass

