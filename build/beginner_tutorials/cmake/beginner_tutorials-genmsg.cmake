# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "beginner_tutorials: 14 messages, 0 services")

set(MSG_I_FLAGS "-Ibeginner_tutorials:/home/pi/catkin_ws/src/beginner_tutorials/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(beginner_tutorials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg" "beginner_tutorials/AHRS:beginner_tutorials/Output:beginner_tutorials/Gyroscope:beginner_tutorials/Magnetometer:beginner_tutorials/Accelerometer:beginner_tutorials/ADC:beginner_tutorials/IMU:beginner_tutorials/Angular:beginner_tutorials/LED:beginner_tutorials/PWM:beginner_tutorials/RC:beginner_tutorials/Input:beginner_tutorials/Barometer"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg" "beginner_tutorials/IMU:beginner_tutorials/Magnetometer:beginner_tutorials/Accelerometer:beginner_tutorials/ADC:beginner_tutorials/Gyroscope:beginner_tutorials/RC:beginner_tutorials/Barometer"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg" "beginner_tutorials/PWM:beginner_tutorials/LED"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg" "beginner_tutorials/Gyroscope:beginner_tutorials/Magnetometer:beginner_tutorials/Accelerometer"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg" "beginner_tutorials/Angular"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg" NAME_WE)
add_custom_target(_beginner_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorials" "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_cpp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
)

### Generating Services

### Generating Module File
_generate_module_cpp(beginner_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(beginner_tutorials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(beginner_tutorials_generate_messages beginner_tutorials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_cpp _beginner_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorials_gencpp)
add_dependencies(beginner_tutorials_gencpp beginner_tutorials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_eus(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
)

### Generating Services

### Generating Module File
_generate_module_eus(beginner_tutorials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(beginner_tutorials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(beginner_tutorials_generate_messages beginner_tutorials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_eus _beginner_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorials_geneus)
add_dependencies(beginner_tutorials_geneus beginner_tutorials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_lisp(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
)

### Generating Services

### Generating Module File
_generate_module_lisp(beginner_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(beginner_tutorials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(beginner_tutorials_generate_messages beginner_tutorials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_lisp _beginner_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorials_genlisp)
add_dependencies(beginner_tutorials_genlisp beginner_tutorials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_nodejs(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
)

### Generating Services

### Generating Module File
_generate_module_nodejs(beginner_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(beginner_tutorials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(beginner_tutorials_generate_messages beginner_tutorials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_nodejs _beginner_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorials_gennodejs)
add_dependencies(beginner_tutorials_gennodejs beginner_tutorials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg;/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)
_generate_msg_py(beginner_tutorials
  "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
)

### Generating Services

### Generating Module File
_generate_module_py(beginner_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(beginner_tutorials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(beginner_tutorials_generate_messages beginner_tutorials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Vehicle.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/ADC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Magnetometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Input.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Accelerometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Output.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Barometer.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Gyroscope.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/IMU.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/RC.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/AHRS.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/Angular.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/PWM.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/beginner_tutorials/msg/LED.msg" NAME_WE)
add_dependencies(beginner_tutorials_generate_messages_py _beginner_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorials_genpy)
add_dependencies(beginner_tutorials_genpy beginner_tutorials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(beginner_tutorials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(beginner_tutorials_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(beginner_tutorials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(beginner_tutorials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(beginner_tutorials_generate_messages_py std_msgs_generate_messages_py)
endif()
