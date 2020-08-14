// original system library includes
#include <unistd.h>
#include <cstdio>
#include <iostream>

// original includes for local C++ files
#include "RCInput.h"
#include "Util.h"

// ROS includes (borrowed from talker.cpp)
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
// include for custom heirarchal message designed to capture all information needed
// for a generic vehicle with a Navio2 sensor hat
#include <me457common/Vehicle.h>
#include <me457common/RC.h>

// had to modify main to include argc and argv according to ROS tutorial
int main(int argc, char **argv)
{

	// original initialization from ADC.cpp (added debug flag for printing)
	bool debug = false;

	RCInput rcin{};
	rcin.init();
	float results[rcin.channel_count] = {0.0f};


	// ROS init (borrowed from talker.cpp)
	// must call init, I'm sure argc and argv can be eliminated somehow but not messing with it now
	// I think "ADC" is just an arbitrary name, not sure where it shows up
	// ADC is an arbitrary name but it does show up (either with rosmsg or rostopic)
	ros::init(argc, argv, "rc");
	ros::NodeHandle n;

	// adcpub shows up in either rosmsg or rostopic, the number is the buffer size to keep before
	// we start throwing old things out if they are not being consumed
	ros::Publisher rc_pub = n.advertise<me457common::RC>("rcpub", 1000);

	// instantiate an object of the type, we will only fill up the input.adc.channel[] information
	me457common::RC rc;

	// this is a fancy wrapper for a 10Hz dt (calculated internally and masked by this function call
	ros::Rate loop_rate(50);

	// new while condition (borrowed from talker.cpp)
	while(ros::ok())
	{

		// publish the msg
		rc_pub.publish(rc);

		// can't remember what spin does
		ros::spinOnce();

		for(int i = 0; i < ARRAY_SIZE(results)-1; i++)
		{
			rc.channel[i] = rcin.read(i);
			// only print this out if we are debugging, this is just cleaner than commenting out these lines
			if(debug == true)
			{
				std::cout << "RC" << i << ": " << results[i] << "\t";
			}
		}
		// only print if we are debugging
		if(debug == true)
		{
			std::cout << std::endl;
		}

		// replace with ROS approved version
		loop_rate.sleep();

	}

	return 0;
}


