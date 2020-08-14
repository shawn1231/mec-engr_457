#include "Ublox.h"
#include "Util.h"

#include "ros/ros.h"
#include <me457common/Vehicle.h>
#include <me457common/GPS.h>

int main(int argc, char **argv)
{

	bool debug = false;

	std::vector<double> pos_data;

	Ublox gps;

	ros::init(argc, argv, "gps");
	ros::NodeHandle n;

	ros::Publisher gps_pub = n.advertise<me457common::GPS>("gpspub",1000);

	me457common::GPS gpsmsg;

	if(gps.testConnection())
	{
		printf("Ublox test OK\n");
		if (!gps.configureSolutionRate(1000))
		{
			printf("Setting new rate: FAILED\n");
		}

		while (true)
		{

			if (gps.decodeSingleMessage(Ublox::NAV_POSLLH, pos_data) == 1)
			{
				// after desired message is successfully decoded, we can use the information stored in pos_data vector
				// right here, or we can do something with it from inside decodeSingleMessage() function(see ublox.h).
				// the way, data is stored in pos_data vector is specified in decodeMessage() function of class UBXParser(see ublox.h)
				printf("GPS Millisecond Time of Week: %.0lf s\n", pos_data[0]/1000);
				printf("Longitude: %lf\n", pos_data[1]/10000000);
				printf("Latitude: %lf\n", pos_data[2]/10000000);
				printf("Height above Ellipsoid: %.3lf m\n", pos_data[3]/1000);
				printf("Height above mean sea level: %.3lf m\n", pos_data[4]/1000);
				printf("Horizontal Accuracy Estateimate: %.3lf m\n", pos_data[5]/1000);
				printf("Vertical Accuracy Estateimate: %.3lf m\n", pos_data[6]/1000);

			}
			else
			{
				// do nothing
			}

			if (gps.decodeSingleMessage(Ublox::NAV_STATUS, pos_data) == 1)
			{
				printf("Current GPS status:\n");
				printf("gpsFixOk: %d\n", ((int)pos_data[1] & 0x01));

				printf("gps Fix status: ");
				switch((int)pos_data[0])
				{
					case 0x00:
						printf("no fix\n");
						break;
					case 0x01:
						printf("dead reckoning only\n");
						break;
					case 0x02:
						printf("2D-fix\n");
						break;
					case 0x03:
						printf("3D-fix\n");
						break;
					case 0x04:
						printf("GPS + dead reckoning combined\n");
						break;
					case 0x05:
						printf("Time only fix\n");
						break;
					default:
						printf("Reserved value. Current state unknown\n");
						break;
				}

				printf("\n");

			}
			else
			{
				// printf("Status Message not captured\n");
			}


			usleep(200);

		}

	}
	else
	{
		printf("Ublox test not passed\nAbort program!\n");
	}

	return 0;
}
