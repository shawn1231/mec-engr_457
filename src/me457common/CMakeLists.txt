cmake_minimum_required(VERSION 3.0.2)
project(me457common)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs message_generation)

add_message_files(
	DIRECTORY
			msg
	FILES
			Accelerometer.msg
			ADC.msg
			AHRS.msg
			Angular.msg
			Barometer.msg
			DCMotor.msg
			Encoder.msg
			GPS.msg
			Gyroscope.msg
			IMU.msg
			LED.msg
			Magnetometer.msg
			PWM.msg
			RC.msg
			Servo.msg
			Stepper.msg
			Vehicle.msg
)

add_service_files(
	DIRECTORY	srv
	FILES
			StepperServer.srv
)

generate_messages(
	  DEPENDENCIES	std_msgs
)

catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
)
