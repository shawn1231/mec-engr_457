cmake_minimum_required(VERSION 2.8.3)
project(navio2ros)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	rospy
	std_msgs
	me457common
)

catkin_package(
	INCLUDE_DIRS ${CMAKE_SOURCE_DIR}/me457common
	LIBRARIES navio2ros
	CATKIN_DEPENDS roscpp rospy std_msgs me457common message_runtime
)

include_directories(  include  ${catkin_INCLUDE_DIRS})

add_executable(adc src/adc.cpp src/ADC.cpp src/Util.cpp)
target_link_libraries(adc ${catkin_LIBRARIES})
add_dependencies(adc ${catkin_EXPORTED_TARGETS})

add_executable(rc src/rc.cpp src/RCInput.cpp src/Util.cpp)
target_link_libraries(rc ${catkin_LIBRARIES})
add_dependencies(rc ${catkin_EXPORTED_TARGETS})

add_executable(imu src/imu.cpp src/MPU9250.cpp src/LSM9DS1.cpp src/Util.cpp)
target_link_libraries(imu ${catkin_LIBRARIES})
add_dependencies(imu ${catkin_EXPORTED_TARGETS})

add_executable(barometer src/barometer.cpp src/MS5611.cpp src/I2Cdev.cpp)
target_link_libraries(barometer ${catkin_LIBRARIES})
add_dependencies(barometer ${catkin_EXPORTED_TARGETS})

add_executable(gps src/gps.cpp src/Ublox.cpp)
target_link_libraries(gps ${catkin_LIBRARIES})
add_dependencies(gps ${catkin_EXPORTED_TARGETS})

add_executable(servo src/servo.cpp src/PWM.cpp src/Util.cpp)
target_link_libraries(servo ${catkin_LIBRARIES})
add_dependencies(servo ${catkin_EXPORTED_TARGETS})

add_executable(ahrs src/ahrs.cpp src/AHRS2.hpp src/Util.cpp)
target_link_libraries(ahrs ${catkin_LIBRARIES})
add_dependencies(ahrs ${catkin_EXPORTED_TARGETS})
