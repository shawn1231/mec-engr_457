#include <unistd.h>
#include <cstdio>
#include <iostream>

#include "PWM.h"
#include "Util.h"

#include "ros/ros.h"
#include <me457common/PWM.h>

#define MAX_NUM_PINS 14
#define PWM_PERIOD 50

#define MAX_DUTY_CYCLE 2.000
#define MIN_DUTY_CYCLE 1.000

// set true to run the calibration
const bool cal = false;

// this is done in favor of creating a static global
// we need to refer to the same PWM object in both the main()
// function and the motorCallback() function
// by creating an anonymous namespace, anytime we use "pwm_out"
// within this file it will refer to the same object
// this is achieved in rospy with keyword "global"
namespace
{
	PWM pwm_out;
}


void motorCallback(const me457common::PWM msg)
{

	// we assume that the maximum number of values are always passed
	// even if some channels are not being used
	for( int i = 0 ; i < MAX_NUM_PINS ; i++ )
	{
		pwm_out.set_duty_cycle(i,msg.channel[i]);
	}

}

// initialization occurs in here
int main(int argc, char ** argv)
{
	// cal delay is used for initial calibration of esc (they will
	// not spin unless they recieve a min-max-min signal)
	const float cal_signal_delay  = 50000; // 0.050s

	// create object of the type
	PWM pwm_out;

	// do the ros dance
	ros::init(argc,argv,"servo");
	ros::NodeHandle n;

	// init and enable here assuming that we always want to open as many
	// pins as we have available, changing the enum MAX_NUM_PINS will
	// allow some other number of pins to be enabled if desired
	// have to split into three for loops here to avoid error about 
	// pwm pins already running.  It's okay for 4 pins but anymore than
	// that and the enable/init is unreliable (sometimes pins are okay,
	// sometimes pins are not okay)
	for( int i = 0 ; i < MAX_NUM_PINS ; i++ )
	{
		pwm_out.init(i);
	}

	for( int i = 0 ; i < MAX_NUM_PINS ; i++ )
	{
		pwm_out.enable(i);
	}

	for( int i = 0 ; i < MAX_NUM_PINS ; i++ )
	{
		pwm_out.set_period(i,PWM_PERIOD);
	}

	if(cal)
	{

		// now pins are enabled, let's send out calibration signal for escs
		// this is going to be a bit messy, we are going to use 3 for loops
		// separated by sleep events, not sure how to clean this up
		for( int i = 0 ; i < MAX_NUM_PINS ; i++ )
		{
			pwm_out.set_duty_cycle(i,MIN_DUTY_CYCLE);
		}

		usleep(cal_signal_delay);

		for( int i = 0 ; i < MAX_NUM_PINS ; i++ )
		{
			pwm_out.set_duty_cycle(i,MAX_DUTY_CYCLE);
		}

		usleep(cal_signal_delay);

		for( int i = 0 ; i < MAX_NUM_PINS ; i++ )
		{
			pwm_out.set_duty_cycle(i,MIN_DUTY_CYCLE);
		}

		usleep(cal_signal_delay);

	}

	ros::Subscriber sub = n.subscribe<me457common::PWM>("motorcommand",1000,motorCallback);

	ros::spin();

	return 0;

}
