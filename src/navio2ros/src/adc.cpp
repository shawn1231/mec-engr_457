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
// for a generic vehicle with a Navio2 sensor hat
#include <navio2ros/Vehicle.h>

#include <ctime>

// had to modify main to include argc and argv according to ROS tutorial
int main(int argc, char **argv)
{

	// original initialization from ADC.cpp (added debug flag for printing)
	bool debug = false;
	ADC adc{};
	adc.init();
	float results[adc.get_channel_count()] = {0.0f};

	// ROS init (borrowed from talker.cpp)
	// must call init, I'm sure argc and argv can be eliminated somehow but not messing with it now
	// I think "ADC" is just an arbitrary name, not sure where it shows up
	// ADC is an arbitrary name but it does show up (either with rosmsg or rostopic)
	ros::init(argc, argv, "adc");
	ros::NodeHandle n;

	// adcpub shows up in either rosmsg or rostopic, the number is the buffer size to keep before
	// we start throwing old things out if they are not being consumed
	ros::Publisher adc_pub = n.advertise<navio2ros::ADC>("adcpub", 1000);

	// instantiate an object of the type, we will only fill up the input.adc.channel[] information
	navio2ros::ADC adcmsg;

	// keeping for now, adding the proper write inside the loop below
//	vehicle.input.adc.channel[0] = 100;
//	vehicle.input.adc.channel[1] = 101;
//	vehicle.input.adc.channel[2] = 102;

	// tested update rate, will run at up to 20,000Hz most of the time, some samples come
	// through as slow as about 250Hz, the specs from Emlid seems to suggest that the
	// internal sample rate dt = 20ms (50Hz) and there is no reason we would want ADC
	// data any faster than that if we are being reasonable
	ros::Rate loop_rate(50);

	// new while condition (borrowed from talker.cpp)
	while(ros::ok())
	{

		// publish the msg
		adc_pub.publish(adcmsg);

		// can't remember what spin does
		ros::spinOnce();

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

		loop_rate.sleep();

	}

	return 0;
}


