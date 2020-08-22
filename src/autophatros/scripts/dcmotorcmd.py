#!/usr/bin/env python3

import rospy
import time
from me457common.msg import DCMotor

dcmotor_odr = 10

def dcmotor_cmd():

	rospy.init_node('dcmotorcmd')
	pub = rospy.Publisher('dcmotorcmd', DCMotor, queue_size=1)

	rate = rospy.Rate(dcmotor_odr)

	cmd = DCMotor()

	while not rospy.is_shutdown():

		cmd.header.stamp = rospy.Time.now()

		# set all channels
		for this_channel in cmd.speed:
			this_channel = 0

		pub.publish(cmd)
		rate.sleep()


if __name__ == '__main__':

	try:
		dcmotor_cmd()

	except rospy.ROSInterruptException:

		pass




