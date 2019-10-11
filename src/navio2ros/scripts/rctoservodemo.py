#!/usr/bin/env python

# This file represents a demo to be used by students for testing PWM outputs
# by making sure that commanded values are capable of making servos/ESCs move
# as well as providing a template for writing the publisher for PWM outputs
# Additionally, for convenience as well as to provide a demo on how to use
# RC inputs, the servos/ESCs can be commanded to change position/speed by
# moving sticks on an RC transmitter.  This example only uses a single RC
# channel.  Modifications will be needed in order to use the other channels.

import rospy

# import custom messages that we will have to use
from navio2ros.msg import RC # for reading in RC values from TX
from navio2ros.msg import PWM # for outputting values to the servo rail

#rcin = RC() # not currently using, should be used to get other RC channels
pwmout = PWM()

outval = 1 # write 1 if we don't have any other info
throttle_channel = 2 # use this channel to move servos, change if desired

# use this callback to get exactly one channel from the rc message and copy
# its value into a variable called outval
def callback_rc(data):
	global outval
	outval=data.channel[throttle_channel]

# setup a subscriber to the /rcpub topic, this topic has a maximum number
# of channels = 12 but most TX won't be able to broadcast that many channels
# use rostopic echo /rcpub to inspect values and identify which channel
# corresponds to which stick/switch
sub = rospy.Subscriber('/rcpub',RC,callback_rc, queue_size=10)

# setup a publisher to the /motorcommand topic.  This will be used to output
# commands to the servo rail.  There are 14 channels.  You should always
# write all 14 even if you are not using that many.  The C++ code in the
# background might break if you try to send lists smaller than 14
pub = rospy.Publisher('/motorcommand',PWM, queue_size=10)

# register the node
rospy.init_node('rctoservodemo', anonymous=True)

if __name__ == '__main__':

	# try/except block here is a fancy way to allow code to cleanly exit on a keyboard break (ctrl+c)
	try:
		while not rospy.is_shutdown():

			# human pilot cannot change sticks faster than 50Hz
			rate = rospy.Rate(50)

			# write the pwmout values, using outval as the commmand for all channels
			for i in range(len(pwmout.channel)):
				pwmout.channel[i] = outval/1000.0 # rc values are integers (1000-2000), we want 1.0-2.0

			# publish the topic to motor command
			pub.publish(pwmout)

			# this is ros magic, basically just a sleep function with the specified dt
			rate.sleep()

	# as stated before, try/except is used to nicely quit the program using ctrl+c
	except rospy.ROSInterruptException:

		# before shutting down, turn all outputs back to 1 for safety
		for i in range(len(pwmout.channel)):
			pwmout.channel[i] = 1.0

		# publish the topic before closing
		pub.publish(pwmout)

		pass

