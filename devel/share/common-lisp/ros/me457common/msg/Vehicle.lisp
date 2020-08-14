; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude Vehicle.msg.html

(cl:defclass <Vehicle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (imu
    :reader imu
    :initarg :imu
    :type me457common-msg:IMU
    :initform (cl:make-instance 'me457common-msg:IMU))
   (ahrs
    :reader ahrs
    :initarg :ahrs
    :type me457common-msg:AHRS
    :initform (cl:make-instance 'me457common-msg:AHRS))
   (gps
    :reader gps
    :initarg :gps
    :type me457common-msg:GPS
    :initform (cl:make-instance 'me457common-msg:GPS))
   (led
    :reader led
    :initarg :led
    :type me457common-msg:LED
    :initform (cl:make-instance 'me457common-msg:LED))
   (rc
    :reader rc
    :initarg :rc
    :type me457common-msg:RC
    :initform (cl:make-instance 'me457common-msg:RC))
   (servo
    :reader servo
    :initarg :servo
    :type me457common-msg:Servo
    :initform (cl:make-instance 'me457common-msg:Servo))
   (dcmotor
    :reader dcmotor
    :initarg :dcmotor
    :type me457common-msg:DCMotor
    :initform (cl:make-instance 'me457common-msg:DCMotor))
   (stepper
    :reader stepper
    :initarg :stepper
    :type me457common-msg:Stepper
    :initform (cl:make-instance 'me457common-msg:Stepper)))
)

(cl:defclass Vehicle (<Vehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<Vehicle> is deprecated: use me457common-msg:Vehicle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:header-val is deprecated.  Use me457common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:imu-val is deprecated.  Use me457common-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'ahrs-val :lambda-list '(m))
(cl:defmethod ahrs-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:ahrs-val is deprecated.  Use me457common-msg:ahrs instead.")
  (ahrs m))

(cl:ensure-generic-function 'gps-val :lambda-list '(m))
(cl:defmethod gps-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:gps-val is deprecated.  Use me457common-msg:gps instead.")
  (gps m))

(cl:ensure-generic-function 'led-val :lambda-list '(m))
(cl:defmethod led-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:led-val is deprecated.  Use me457common-msg:led instead.")
  (led m))

(cl:ensure-generic-function 'rc-val :lambda-list '(m))
(cl:defmethod rc-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:rc-val is deprecated.  Use me457common-msg:rc instead.")
  (rc m))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:servo-val is deprecated.  Use me457common-msg:servo instead.")
  (servo m))

(cl:ensure-generic-function 'dcmotor-val :lambda-list '(m))
(cl:defmethod dcmotor-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:dcmotor-val is deprecated.  Use me457common-msg:dcmotor instead.")
  (dcmotor m))

(cl:ensure-generic-function 'stepper-val :lambda-list '(m))
(cl:defmethod stepper-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:stepper-val is deprecated.  Use me457common-msg:stepper instead.")
  (stepper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle>) ostream)
  "Serializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ahrs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'led) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'servo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dcmotor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stepper) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle>) istream)
  "Deserializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ahrs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'led) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'servo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dcmotor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stepper) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle>)))
  "Returns string type for a message object of type '<Vehicle>"
  "me457common/Vehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle)))
  "Returns string type for a message object of type 'Vehicle"
  "me457common/Vehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle>)))
  "Returns md5sum for a message object of type '<Vehicle>"
  "067afcb60f63192020dd9194535331a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle)))
  "Returns md5sum for a message object of type 'Vehicle"
  "067afcb60f63192020dd9194535331a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle>)))
  "Returns full string definition for message of type '<Vehicle>"
  (cl:format cl:nil "Header header~%IMU imu~%AHRS ahrs~%GPS gps~%LED led~%RC rc~%Servo servo~%DCMotor dcmotor~%Stepper stepper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: me457common/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: me457common/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/AHRS~%Angular angular~%~%================================================================================~%MSG: me457common/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%================================================================================~%MSG: me457common/GPS~%int32 status~%float32 mtow~%float32 longitude~%float32 latitude~%float32 elevation_ellipsoid~%float32 elevation_msl~%float32 horizontal_accuracy~%float32 vertical_accuracy~%~%================================================================================~%MSG: me457common/LED~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: me457common/RC~%float32[12] channel~%~%================================================================================~%MSG: me457common/Servo~%float32[14] channel~%~%================================================================================~%MSG: me457common/DCMotor~%int16[2] speed~%~%================================================================================~%MSG: me457common/Stepper~%float32 step~%float32 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle)))
  "Returns full string definition for message of type 'Vehicle"
  (cl:format cl:nil "Header header~%IMU imu~%AHRS ahrs~%GPS gps~%LED led~%RC rc~%Servo servo~%DCMotor dcmotor~%Stepper stepper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: me457common/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: me457common/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/AHRS~%Angular angular~%~%================================================================================~%MSG: me457common/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%================================================================================~%MSG: me457common/GPS~%int32 status~%float32 mtow~%float32 longitude~%float32 latitude~%float32 elevation_ellipsoid~%float32 elevation_msl~%float32 horizontal_accuracy~%float32 vertical_accuracy~%~%================================================================================~%MSG: me457common/LED~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: me457common/RC~%float32[12] channel~%~%================================================================================~%MSG: me457common/Servo~%float32[14] channel~%~%================================================================================~%MSG: me457common/DCMotor~%int16[2] speed~%~%================================================================================~%MSG: me457common/Stepper~%float32 step~%float32 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ahrs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'led))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'servo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dcmotor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stepper))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle
    (cl:cons ':header (header msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':ahrs (ahrs msg))
    (cl:cons ':gps (gps msg))
    (cl:cons ':led (led msg))
    (cl:cons ':rc (rc msg))
    (cl:cons ':servo (servo msg))
    (cl:cons ':dcmotor (dcmotor msg))
    (cl:cons ':stepper (stepper msg))
))
