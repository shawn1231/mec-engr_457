#!/usr/bin/env python3

import rospy
from me457common.msg import DCMotor

def motor_demo():
	rospy.init_node('motor_demo')

	motor_pub = rospy.Publisher('motor_cmd', DCMotor, queue_size=10)

	rate = rospy.Rate(10) # Run at 10 hz

	motor_cmds = DCMotor()

	i = 0 # dummy to start sweep
	while not rospy.is_shutdown():
		if (i == 255): i = -254
		motor_cmds.speed[0] = i
		motor_cmds.speed[1] = i
		print(i)
		motor_pub.publish(motor_cmds)
		i = i + 1
		rate.sleep()


if __name__ == '__main__':
	motor_demo()


