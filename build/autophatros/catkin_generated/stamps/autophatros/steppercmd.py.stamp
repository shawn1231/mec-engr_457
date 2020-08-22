#!/usr/bin/env python3

import rospy
import time
from me457common.msg import Stepper
#from autophatros.srv import *

def servo_cmd_client():

	rospy.wait_for_service('stepperserver')

	try:

		stepperserver = rospy.ServiceProxy('stepperserver', StepperServer)

	except:

		pass


if __name__ == '__main__':

	# add input processing later to ensure command has correct format
	print("sending command then exiting")

#	try:
#		servo_cmd()
#
#	except rospy.ROSInterruptException:
#
#		pass


