// original system library includes
#include <unistd.h>
#include <cstdio>
#include <iostream>

// original includes for local C++ files
#include "ADC.h"
// util is needed for the ARRAY_SIZE call
#include "Util.h"

// ROS includes (borrowed from talker.cpp)
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

// include for custom heirarchal message designed to capture all information needed
// for a generic vehicle used in a hands-on mechatronics curriculum (Vehicle.h)
// an include for the ADC message is also needed here since it is used specifically
#include <me457common/Vehicle.h>
#include <me457common/ADC.h>

int main(int argc, char **argv)
{

	bool debug = false; // debug flag used for verbose debugging

	ADC adc{};
	adc.init();
	float results[adc.get_channel_count()] = {0.0f};

	ros::init(argc, argv, "adc");
	ros::NodeHandle n;

	ros::Publisher adc_pub = n.advertise<me457common::ADC>("adcpub", 1000);

	me457common::ADC adcmsg;

	// tested update rate, will run at up to 20,000Hz most of the time, some samples come
	// through as slow as about 250Hz, the specs from Emlid seems to suggest that the
	// internal sample rate dt = 20ms (50Hz) and there is no reason we would want ADC
	// data any faster than that if we are being reasonable
	ros::Rate loop_rate(50);

	while(ros::ok())
	{
		// publish the msg
		adc_pub.publish(adcmsg);

		for(int i = 0; i < ARRAY_SIZE(results)-1; i++)
		{
			adcmsg.channel[i] = adc.read(i);
			// only print this out if we are debugging, this is just cleaner than commenting out these lines
			if(debug == true)
			{
				std::cout << "A" << i << ": " << results[i] << "\t";
			}
		}
		// only print if we are debugging
		if(debug == true)
		{
			std::cout << std::endl;
		}

		// we are going to adopt the convention of using spinOnce() here inside of a loop
		// and we are always going to place our spin call right before out sleep command
		// which should result in a reliable execution of the code above prior to any
		// threading related confusion of execution order
		ros::spinOnce();
		loop_rate.sleep();

	}

	return 0;
}


