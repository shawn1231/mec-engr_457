// original system library includes
#include <unistd.h>
#include <cstdio>
#include <iostream>

// original includes for local C++ files
#include "Util.h"
#include "MPU9250.h"
#include "LSM9DS1.h"
#include "AHRS2.hpp"

// ROS includes (borrowed from talker.cpp)
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
// include for custom heirarchal message designed to capture all information needed
// for a generic vehicle with a Navio2 sensor hat
#include <navio2ros/Vehicle.h>

namespace
{
	AHRS mpu_madgwick;
	float roll_madgwick = 0, pitch_madgwick = 0, yaw_madgwick = 0;

}

void ahrs_callback(const navio2ros::IMU msg)
{

	const float dt = .002;

	mpu_madgwick.updateMadgwickIMU(msg.gyroscope.x,msg.gyroscope.y,msg.gyroscope.z,msg.accelerometer.x,msg.accelerometer.y,msg.accelerometer.z,dt);

	mpu_madgwick.getEuler(&roll_madgwick,&pitch_madgwick,&yaw_madgwick);

}

// had to modify main to include argc and argv according to ROS tutorial
int main(int argc, char **argv)
{


	ros::init(argc, argv, "ahrs_madgwick");
	ros::NodeHandle n;

	ros::Publisher pub = n.advertise<navio2ros::AHRS>("madgwickpub", 1000);

	ros::Subscriber sub = n.subscribe("imumpupub",1000,ahrs_callback);

	navio2ros::AHRS ahrs;

	ros::Rate loop_rate(100);

	// new while condition (borrowed from talker.cpp)
	while(ros::ok())
	{

		ahrs.angular.roll = roll_madgwick;
		ahrs.angular.pitch = pitch_madgwick;
		ahrs.angular.yaw = yaw_madgwick;

		pub.publish(ahrs);

		ros::spinOnce();
		loop_rate.sleep();

	}

	return 0;
}


