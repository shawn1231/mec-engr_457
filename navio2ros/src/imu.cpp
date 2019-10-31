// original system library includes
#include <unistd.h>
#include <cstdio>
#include <iostream>

// original includes for local C++ files
#include "Util.h"
#include "MPU9250.h"
#include "LSM9DS1.h"

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

	InertialSensor *mpu_sensor;
	InertialSensor *lsm_sensor;

	mpu_sensor = new MPU9250();
	lsm_sensor = new LSM9DS1();

	// original initialization from ADC.cpp (added debug flag for printing)
	bool debug = false;

	mpu_sensor->initialize();
	float ax1, ay1, az1;
	float gx1, gy1, gz1;
	float mx1, my1, mz1;

	lsm_sensor->initialize();
	float ax2, ay2, az2;
	float gx2, gy2, gz2;
	float mx2, my2, mz2;

	// ROS init (borrowed from talker.cpp)
	// must call init, I'm sure argc and argv can be eliminated somehow but not messing with it now
	// I think "ADC" is just an arbitrary name, not sure where it shows up
	// ADC is an arbitrary name but it does show up (either with rosmsg or rostopic)
	ros::init(argc, argv, "imu_mpu9250");
	ros::NodeHandle n1;

	ros::init(argc,argv, "imu_lsm9ds1");
	ros::NodeHandle n2;

	// adcpub shows up in either rosmsg or rostopic, the number is the buffer size to keep before
	// we start throwing old things out if they are not being consumed
	ros::Publisher imumpu_pub = n1.advertise<navio2ros::IMU>("imumpupub", 1000);
	ros::Publisher imulsm_pub = n2.advertise<navio2ros::IMU>("imulsmpub", 1000);

	// instantiate an object of the type, we will only fill up the input.adc.channel[] information
	navio2ros::IMU imu1;
	navio2ros::IMU imu2;

	// tested, either IMU alone seems to run as slow as 6000Hz when let to run as fast as
	// possible, we don't need that kind of sample rate and since we are doing both
	// sensors all the time we are going to go with 500Hz to be conservative, this is an
	// area that could be improved by upping the sample rate and installing a filter to
	// get a better attitude estimate
	ros::Rate loop_rate(500);

	// new while condition (borrowed from talker.cpp)
	while(ros::ok())
	{


		mpu_sensor->update();
		mpu_sensor->read_accelerometer(&ax1, &ay1, &az1);
		mpu_sensor->read_gyroscope(&gx1, &gy1, &gz1);
		mpu_sensor->read_magnetometer(&mx1, &my1, &mz1);

		lsm_sensor->update();
		lsm_sensor->read_accelerometer(&ax2, &ay2, &az2);
		lsm_sensor->read_gyroscope(&gx2, &gy2, &gz2);
		lsm_sensor->read_magnetometer(&mx2, &my2, &mz2);

		// publish the msg
		imumpu_pub.publish(imu1);
		imulsm_pub.publish(imu2);

		// can't remember what spin does
		ros::spinOnce();

		imu1.accelerometer.x = ax2;
		imu1.accelerometer.y = ay2;
		imu1.accelerometer.z = az2;
		imu1.gyroscope.x = gx2;
		imu1.gyroscope.y = gy2;
		imu1.gyroscope.z = gz2;
		imu1.magnetometer.x = mx2;
		imu1.magnetometer.y = my2;
		imu1.magnetometer.z = mz2;

		imu2.accelerometer.x = ax2;
		imu2.accelerometer.y = ay2;
		imu2.accelerometer.z = az2;
		imu2.gyroscope.x = gx2;
		imu2.gyroscope.y = gy2;
		imu2.gyroscope.z = gz2;
		imu2.magnetometer.x = mx2;
		imu2.magnetometer.y = my2;
		imu2.magnetometer.z = mz2;

//		for(int i = 0; i < ARRAY_SIZE(results)-1; i++)
//		{
//			vehicle.input.rc.channel[i] = rcin.read(i);
			// only print this out if we are debugging, this is just cleaner than commenting out these lines
//			if(debug == true)
//			{
//				std::cout << "RC" << i << ": " << results[i] << "\t";
//			}

//		}
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


