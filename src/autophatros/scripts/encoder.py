#!/usr/bin/env python3

import rospy
import time
import qwiic_dual_encoder_reader as qwiic_dual_encoder_reader
from me457common.msg import Encoder

def EncoderRead():
	while True:	
		data = Encoder()
		data.count[0] = encoders.count1 # Store encoder readings (grabs on a request
		data.count[1] = encoders.count2  # configuration I think)
		encoder_pub.publish(data) # Publish the new encoder values
		rate.sleep()

if __name__ == '__main__':
	rospy.init_node('encoder_reader')
	rate = rospy.Rate(50) # Run at 100 hz
	encoder_pub = rospy.Publisher('encoder', Encoder, queue_size=10)
	encoders = qwiic_dual_encoder_reader.QwiicDualEncoderReader()

	if encoders.connected == False:
		print("The Qwiic Dual Encoder Reader device isn't connected to the system. Please check your connection")

	encoders.begin()

	EncoderRead()

