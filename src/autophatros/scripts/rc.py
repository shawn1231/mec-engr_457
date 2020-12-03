#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""rc.py: reads ms values from remote control reciever plugged into UART 5 on the raspberry pi 4"""

#==================================================================================
# Adapted from: (c) 2016 Fabrizio Scimia, fabrizio.scimia@gmail.com
# Original work: (c) 2019 fifteenhex (github username)
# Modified work: Copyright (c) 2020 University of Missouri - Kansas City
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

# original comments from github project retained for clarity and attribution
#Based on:
#	Sokrates80/sbus_driver_micropython git hub
#	https://os.mbed.com/users/Digixx/code/SBUS-Library_16channel/file/83e415034198/FutabaSBUS/FutabaSBUS.cpp/
#	https://os.mbed.com/users/Digixx/notebook/futaba-s-bus-controlled-by-mbed/
#	https://www.ordinoscope.net/index.php/Electronique/Protocoles/SBUS

import rospy
import asyncio
import serial
import serial_asyncio
import signal
from me457common.msg import RC

__author__     = "Shawn Herrington, Travis Fields, and Sparkfun Electronics"
__copyright__  = "Copyright 2020, University of Missouri - Kansas City"
__credits__    = ["Shawn Herrington, Travis Fields, Dietrich Kruse, Simeon Karnes, and Sparkfun Electronics"]
__license__    = "MIT"
__maintainer__ = "Shawn Herrington"
__email__      = "shawn.herrington@umkc.edu"
__status__     = "Development"

class SBUSReceiver:
	class SBUSFramer(asyncio.Protocol):

		START_BYTE = 0x0f
		END_BYTE = 0x00
		SBUS_FRAME_LEN = 25

		def __init__(self):
			super().__init__()
			self._in_frame = False
			self.transport = None
			self._frame = bytearray()
			self.frames = asyncio.Queue()

		def connection_made(self, transport):
			self.transport = transport

		def data_received(self, data):
			for b in data:
				if self._in_frame:
					self._frame.append(b)
					if len(self._frame) == SBUSReceiver.SBUSFramer.SBUS_FRAME_LEN:
						decoded_frame = SBUSReceiver.SBUSFrame(self._frame)
						# print(decoded_frame)
						asyncio.run_coroutine_threadsafe(self.frames.put(decoded_frame), asyncio.get_running_loop())
						self._in_frame = False
				else:
					if b == SBUSReceiver.SBUSFramer.START_BYTE:
						self._in_frame = True
						self._frame.clear()
						self._frame.append(b)

		def connection_lost(self, exc):
			asyncio.get_event_loop().stop()

	class SBUSFrame:
		OUT_OF_SYNC_THD = 5
		SBUS_NUM_CHANNELS = 18
		SBUS_SIGNAL_OK = 0
		SBUS_SIGNAL_LOST = 1
		SBUS_SIGNAL_FAILSAFE = 2

		def __init__(self, frame):
			self.sbusChannels = [None] * SBUSReceiver.SBUSFrame.SBUS_NUM_CHANNELS

			channel_sum = int.from_bytes(frame[1:23], byteorder="little")

			for ch in range(0, 16):
				self.sbusChannels[ch] = channel_sum & 0x7ff
				channel_sum = channel_sum >> 11

			# to be tested, No 17 & 18 channel on taranis X8R
			if (frame[23]) & 0x0001:
				self.sbusChannels[16] = 2047
			else:
				self.sbusChannels[16] = 0
			# to be tested, No 17 & 18 channel on taranis X8R
			if ((frame[23]) >> 1) & 0x0001:
				self.sbusChannels[17] = 2047
			else:
				self.sbusChannels[17] = 0

			# Failsafe
			self.failSafeStatus = SBUSReceiver.SBUSFrame.SBUS_SIGNAL_OK
			if (frame[SBUSReceiver.SBUSFramer.SBUS_FRAME_LEN - 2]) & (1 << 2):
				self.failSafeStatus = SBUSReceiver.SBUSFrame.SBUS_SIGNAL_LOST
			if (frame[SBUSReceiver.SBUSFramer.SBUS_FRAME_LEN - 2]) & (1 << 3):
				self.failSafeStatus = SBUSReceiver.SBUSFrame.SBUS_SIGNAL_FAILSAFE

		def get_rx_channels(self):
			"""
			Used to retrieve the last SBUS channels values reading
			:return:  an array of 18 unsigned short elements containing 16 standard channel values + 2 digitals (ch 17 and 18)
			"""
			return self.sbusChannels

		def get_rx_channel(self, num_ch):
			"""
			Used to retrieve the last SBUS channel value reading for a specific channel
			:param: num_ch: the channel which to retrieve the value for
			:return:  a short value containing
			"""
			return self.sbusChannels[num_ch]

		def get_failsafe_status(self):
			"""
			Used to retrieve the last FAILSAFE status
			:return:  a short value containing
			"""
			return self.failSafeStatus

		def __repr__(self):
			return ",".join(str(ch) for ch in self.sbusChannels)

	def __init__(self):
		self._transport = None
		self._protocol = None

	@staticmethod
	# modified to work with uart5 on the raspberrypi 4
	async def create(port='/dev/ttyAMA1'):
		receiver = SBUSReceiver()
		receiver._transport, receiver._protocol = await serial_asyncio.create_serial_connection(
			asyncio.get_running_loop(),
			SBUSReceiver.SBUSFramer,
			port,
			baudrate=100000,
			parity=serial.PARITY_EVEN,
			stopbits=serial.STOPBITS_TWO,
			bytesize=serial.EIGHTBITS)
		return receiver

	async def get_frame(self):
		return await self._protocol.frames.get()

async def rc_publisher():

	# the following framework has been set up to prevent weird behavior when
	# initializing the RC module, this behavior has not been fully explained
	# but may be related to the conflict between non-thread-safe asyncio
	# functions and the threading interface provided by ROS
	# the fix presented here should be considered a patch in order to allow
	# the class to continue to progress, development of a SBUS interpretter
	# was outside the scope of this project and the best module available
	# online uses asyncio (which is unfamiliar to the author)

	# set the loop continue flag to false
	async_loop_okay = False

	# we want to keep "rebooting" the asyncio loop until we get good values
	while async_loop_okay == False:

		# using uart5 on raspberrypi4, create sbus object and loop
		sbus = await SBUSReceiver.create("/dev/ttyAMA1")
		loop = asyncio.get_event_loop()

		# get a single frame of RC data using the asyncio await
		frame = await sbus.get_frame()

		# convert to iterable using member function
		channels = frame.get_rx_channels()

		# retain for troubleshooting
		#print(channels)

		# assume it worked okay, set the flag to True preemptively
		async_loop_okay = True

		# set up iterable to search through channels for nonesense data
		for ch in range(0, 16):

			# this threshold isn't scientific, it was just empirical,
			# the final 2 channels are always 0 so we ignore them by
			# only setting up the for loop from 0-16 (non-inclusive)
			# but the 115 seems to work based on limited testing, when
			# bad data is coming down from the SBUS item, it seems to
			# consistently display most channels fixed at a value of
			# 124, unfortunately, the minimum on most channels is near
			# that values (about 126) so we can't just use 125 as the
			# nonesense threshold
			if channels[ch] < 125:

				# retain for troubleshooting
				#print("we caught a bad one")

				# if this fails a single time, we set this flag
				# back to false and start over again
				async_loop_okay = False

			# this is becoming a bit of a kludge/hack, I have done some
			# testing to identify bad cases sneaking through, and
			# the dead channels 16,17 (at the end) occassionally wig out
			# for some reason which makes a convenient case to search for
			# error handling
			if channels[16] > 0 or channels[17] > 0:

				# retain for troubleshooting
				#print("we caught a different bad one")

				# if this fails a single time, we set this flag
				# back to false and start over again
				async_loop_okay = False


	# start the rc node, disable_signals has been set to True in order to allow
	# signal handling to be taken care of in an asyncio friendly way
	rospy.init_node('rc', disable_signals=True)
	# create a publisher, we have no use for old data so we set the buffer size to 1
	pub = rospy.Publisher('rcpub', RC, queue_size=1)

	# create an empty message
	message = RC()

	# this structure (while/try/except) is hacked together in order to get some
	# semblance of proper shutdown with the blending of asyncio and ROS threads
	while True:

		try:

			# get one frame
			frame = await sbus.get_frame()

			# convert to iterable using member function
			channels = frame.get_rx_channels()

			# use the member function to convert the frame to something we can access
			channels = frame.get_rx_channels()

			# add the time stamp onto the message
			message.header.stamp = rospy.Time.now()

			# iterate through the channels from 0-16 (not inclusive), 17 and 18 are
			# enabled as 'extra' digital channels but are not going to be supported
			# by this ROS wrapper
			for ch in range(0, 16):

				# fill in the message with info from each channel
				message.channel[ch] = channels[ch]

			# publish the filled message
			pub.publish(message)

		# grab all keyboard event signals, this should capture ctrl+c, I don't have a lot
		# of faith that this is working as intended but the results seems okay so we are
		# going to ship it
		except KeyboardInterrupt:

			# run the asyncio shutdown function
			await shutdown()


# to reiterate, I don't think this is actually being called but some part of all this
# hacking actually resulted in some of the right behavior (or maybe we just got rid
# of all the problem children), in the interest of brevity, this is going to ship as
# is instead of risking messing it back up trying to troubleshoot why my diagnostic
# messages seem to indicate that this isn't running as expected
async def shutdown():

	# get the loop handle
	loop = asyncio.get_event_loop()

	# grab all tasks
	tasks = [t for t in asyncio.all_tasks() if t is not asyncio.current_task()]

	# cancel and gather cancelled tasks
	[task.cancel() for task in tasks]
	await asyncio.gather(*tasks)

	# stop and close, not sure of the difference
	loop.stop()
	loop.close()

	# tell ROS what is happening since we shut off the signal handler in the node
	rospy.signal_shutdown("keyboard interrupt")


if __name__ == '__main__':

	# get loop handle
	loop = asyncio.get_event_loop()

	# call the publisher
	loop.run_until_complete(rc_publisher())

	# shutdown if we get here
	loop.close()

