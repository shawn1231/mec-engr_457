/*
Provided to you by Emlid Ltd (c) 2015.
twitter.com/emlidtech || www.emlid.com || info@emlid.com

Example: Control servos connected to PWM driver onboard of Navio2 shield for Raspberry Pi.

Connect servo to Navio2's rc output and watch it work.
PWM_OUTPUT = 0 complies to channel number 1, 1 to channel number 2 and so on.
To use full range of your servo correct SERVO_MIN and SERVO_MAX according to it's specification.

To run this example navigate to the directory containing it and run following commands:
make
sudo ./Servo
*/

#include <unistd.h>
#include "Navio/PWM.h"
#include "Navio/Util.h"

//#define PWM_OUTPUT_EAST 1
//#define PWM_OUTPUT_WEST 0
//#define SERVO_MIN 0.800 /*mS*/
//#define SERVO_MAX 2.200 /*mS*/
//#define MAX_LINE_RELEASE 0.800
//#define MIN_LINE_RELEASE 2.200

#define WINCH_EAST 1 // winch servo on east side (in body NED frame) (right hand side if facing forward)
#define WINCH_WEST 0 // winch servo on west side (in body NED frame) (left hand side if facing forward)
#define SPEAKER 13
#define MAX_DEFLECTION  0.500
//#define LINE_LENGTH_MIN -0.500
#define LINE_NEUTRAL 1.500
float winch_command;

int main()
{
    PWM pwm_out;
//    if (!pwm1.init(PWM_OUTPUT_EAST) && !pwm1.init(PWM_OUTPUT_WEST)) {
//        fprintf(stderr, "Output Enable not set. Are you root?\n");
//        return 0;
//    }
//    pwm_out.init(WINCH_EAST); // initialize the west winch servo
//    pwm_out.init(WINCH_WEST); // initialize the east winch servo
    pwm_out.init(SPEAKER);
//    pwm_out.enable(WINCH_EAST); // prepare west winch servo to receive input
//    pwm_out.enable(WINCH_WEST); // prepare east winch servo to receive input
    pwm_out.enable(SPEAKER);
//    pwm_out.set_period(WINCH_EAST , 50); // set period to 50 ms
//    pwm_out.set_period(WINCH_WEST , 50); // set period to 50 ms
    pwm_out.set_period(SPEAKER , 1000);
//    pwm1.init(PWM_OUTPUT_EAST);
//    pwm1.init(PWM_OUTPUT_WEST);
//    pwm1.enable(PWM_OUTPUT_EAST);
//    pwm1.enable(PWM_OUTPUT_WEST);
//    pwm1.set_period(PWM_OUTPUT_EAST, 50);
//    pwm1.set_period(PWM_OUTPUT_WEST, 50);
    sleep(1);

    while (true) {

//	pwm_out.set_duty_cycle(WINCH_EAST , LINE_NEUTRAL - MAX_DEFLECTION);
//	pwm_out.set_period(SPEAKER , 1000);
//	sleep(1);
	pwm_out.set_duty_cycle(SPEAKER , 5);
//	fprintf(stderr , "East line min\n");
//	sleep(1);
//	pwm_out.set_duty_cycle(WINCH_EAST , LINE_NEUTRAL + MAX_DEFLECTION);
//	pwm_out.set_period(SPEAKER , 2000);
//	fprintf(stderr , "East line max\n");
//	sleep(1);
//	pwm_out.set_duty_cycle(WINCH_WEST , LINE_NEUTRAL + MAX_DEFLECTION);
//	pwm_out.set_period(SPEAKER , 2000);
//	fprintf(stderr , "West line min\n");
//	sleep(1);
//	pwm_out.set_duty_cycle(WINCH_WEST , LINE_NEUTRAL - MAX_DEFLECTION);
//	pwm_out.set_period(SPEAKER , 200);
//	fprintf(stderr , "West line max\n");
	sleep(1);




//        pwm1.set_duty_cycle(PWM_OUTPUT_EAST, MAX_LINE_RELEASE);
//	fprintf(stderr, "East winch at max line release\n");
//	sleep(10);
//	pwm1.set_duty_cycle(PWM_OUTPUT_EAST, MIN_LINE_RELEASE);
//	fprintf(stderr, "East winch at min line release\n");
//        sleep(10);
//        pwm1.set_duty_cycle(PWM_OUTPUT_WEST, MAX_LINE_RELEASE);
//	fprintf(stderr, "West winch at max line release\n");
//	sleep(10);
//	pwm1.set_duty_cycle(PWM_OUTPUT_EAST, MIN_LINE_RELEASE);
//	fprintf(stderr, "West winch at min line release\n");
//        sleep(10);
    }

    return 0;
}
