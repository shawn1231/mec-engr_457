#include "MS5611.h"
#include <unistd.h>
#include <stdio.h>
#include <cmath>

#include "ros/ros.h"

#include <iostream>
#include <fstream>

#include <me457common/Vehicle.h>
#include <me457common/Barometer.h>

using namespace std;

int main(int argc, char **argv)
{

	bool debug = false;

	MS5611 barometer;
	float Pb = 29.92126;	//inHg
	float Tb = 288.15;	//Kelvin
	float Lb = -.0019812;	//K/ft
	float hb = 0;		// ft
	float R  = 8.9494596e4;	// (lb ft^2)/(lb mol K s^2)
	float g0 = 32.17405;	// ft/s^2
	float M  = 28.9644;	// lb/lbmol

	float Tc = 0.0;		// temp in C
	float Tk = 0.0;		// temp in K
	float Tf = 0.0;		// temp in F
	float Pm = 0.0;
	float msl = 0.0;

	barometer.initialize();

	ros::init(argc, argv, "baro");
	ros::NodeHandle n;

	ros::Publisher baro_pub = n.advertise<me457common::Barometer>("baropub", 1000);

	me457common::Barometer baromsg;

	ros::Rate loop_rate(50);

	while (ros::ok())
	{
		barometer.refreshPressure();
		usleep(10000); // Waiting for pressure data ready
		barometer.readPressure();

		barometer.refreshTemperature();
		usleep(10000); // Waiting for temperature data ready
		barometer.readTemperature();

		barometer.calculatePressureAndTemperature();

		Tc = barometer.getTemperature();
		Tk = Tc+273.15;
		Tf = Tc*(9.0/5.0)+32;
		Pm = barometer.getPressure()*.02953;
		msl = hb + (Tk/Lb)*(pow((Pm/Pb),((-R*Lb)/(g0*M)))-1);

		baromsg.pressure = Pm;		// inHg
		baromsg.temperature = Tf;	// F
		baromsg.elevation = msl;		// msl altitude in ft

		baro_pub.publish(baromsg);

		if(debug == true)
		{

			printf("Temperature(F)(K)(C):  %f %f %f  Pressure(inHg):  %f  Mean Sea Level Altitutde (ft):  %f\n", Tf,Tk,Tc,Pm,msl);

		}

		ros::spinOnce();
		loop_rate.sleep();
	}

	return 0;

}
