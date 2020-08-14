#!/usr/bin/env python3

import rospy
from me457common.msg import Servo

def servo_demo():
	rospy.init_node('servo_demo')

	servo_pub = rospy.Publisher('servo_cmd', Servo, queue_size=10)

	rate = rospy.Rate(100) # Run at 10 hz

	servo_cmds = Servo()

	i = 0 # dummy to start sweep
	while not rospy.is_shutdown():
		if (i == 90): i = 0
		servo_cmds.channel[0] = i
		#print(i)
		servo_pub.publish(servo_cmds)
		i = i + 1
		rate.sleep()


if __name__ == '__main__':
	servo_demo()


