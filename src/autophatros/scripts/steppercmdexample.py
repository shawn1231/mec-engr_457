#!/usr/bin/env python3

# -*- coding: utf-8 -*-

"""steppercmdexample.py: generates a signal and sends the signal to the stepper service"""

#=======================================================================
# Based in part on examples provided by stepper manufacturer S2Pi
# however no license information could be found on the software examples
# provided by the manufacturer, website is below:
# https://wiki.52pi.com/index.php/Stepper_Motor_SKU:_D-0011
#
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
from me457common.msg import Stepper
from me457common.srv import *

direction = 0 # 0 for forward, 1 for backward
steps = 1000

def servo_cmd_client():

	rospy.wait_for_service('stepperserver')

	stepperserver = rospy.ServiceProxy('stepperserver', StepperServer)
	stepperserver(steps, direction)
	print("command sent")
#	return(1)

if __name__ == '__main__':

	# add input processing later to ensure command has correct format
	print("sending command then exiting")

	servo_cmd_client()


