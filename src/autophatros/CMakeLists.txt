cmake_minimum_required(VERSION 3.0.2)
project(autophatros)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	rospy
	std_msgs
	me457common
	message_generation
)

catkin_package(
	INCLUDE_DIRS ${CMAKE_SOURCE_DIR}/me457common
	LIBRARIES autophatros
	CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
)

include_directories( include ${catkin_INCLUDE_DIRS} )

catkin_install_python(PROGRAMS scripts/steppercmd.py scripts/stepperdriver.py
	DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
