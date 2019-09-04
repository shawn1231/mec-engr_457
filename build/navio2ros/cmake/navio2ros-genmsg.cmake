# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navio2ros: 13 messages, 0 services")

set(MSG_I_FLAGS "-Inavio2ros:/home/pi/catkin_ws/src/navio2ros/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navio2ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg" "navio2ros/Gyroscope:navio2ros/Magnetometer:navio2ros/Accelerometer"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg" "navio2ros/GPS:navio2ros/Accelerometer:navio2ros/PWM:navio2ros/AHRS:navio2ros/LED:navio2ros/ADC:navio2ros/Barometer:navio2ros/RC:navio2ros/Gyroscope:navio2ros/Magnetometer:navio2ros/Angular:navio2ros/IMU"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg" "navio2ros/Angular"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg" NAME_WE)
add_custom_target(_navio2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navio2ros" "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg;/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg;/home/pi/catkin_ws/src/navio2ros/msg/LED.msg;/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/RC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg;/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)
_generate_msg_cpp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(navio2ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navio2ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navio2ros_generate_messages navio2ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_cpp _navio2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navio2ros_gencpp)
add_dependencies(navio2ros_gencpp navio2ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navio2ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg;/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg;/home/pi/catkin_ws/src/navio2ros/msg/LED.msg;/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/RC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg;/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)
_generate_msg_eus(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
)

### Generating Services

### Generating Module File
_generate_module_eus(navio2ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navio2ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navio2ros_generate_messages navio2ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_eus _navio2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navio2ros_geneus)
add_dependencies(navio2ros_geneus navio2ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navio2ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg;/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg;/home/pi/catkin_ws/src/navio2ros/msg/LED.msg;/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/RC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg;/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)
_generate_msg_lisp(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(navio2ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navio2ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navio2ros_generate_messages navio2ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_lisp _navio2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navio2ros_genlisp)
add_dependencies(navio2ros_genlisp navio2ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navio2ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg;/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg;/home/pi/catkin_ws/src/navio2ros/msg/LED.msg;/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/RC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg;/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)
_generate_msg_nodejs(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(navio2ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navio2ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navio2ros_generate_messages navio2ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_nodejs _navio2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navio2ros_gennodejs)
add_dependencies(navio2ros_gennodejs navio2ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navio2ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg;/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg;/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg;/home/pi/catkin_ws/src/navio2ros/msg/LED.msg;/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/RC.msg;/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg;/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg;/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg;/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)
_generate_msg_py(navio2ros
  "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
)

### Generating Services

### Generating Module File
_generate_module_py(navio2ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navio2ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navio2ros_generate_messages navio2ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/IMU.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/LED.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Angular.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Vehicle.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Barometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/PWM.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/RC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/AHRS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/GPS.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/ADC.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Accelerometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Magnetometer.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/navio2ros/msg/Gyroscope.msg" NAME_WE)
add_dependencies(navio2ros_generate_messages_py _navio2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navio2ros_genpy)
add_dependencies(navio2ros_genpy navio2ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navio2ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navio2ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navio2ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navio2ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navio2ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navio2ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navio2ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navio2ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navio2ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navio2ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navio2ros_generate_messages_py std_msgs_generate_messages_py)
endif()
