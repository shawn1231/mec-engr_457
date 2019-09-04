; Auto-generated. Do not edit!


(cl:in-package navio2ros-msg)


;//! \htmlinclude Vehicle.msg.html

(cl:defclass <Vehicle> (roslisp-msg-protocol:ros-message)
  ((barometer
    :reader barometer
    :initarg :barometer
    :type navio2ros-msg:Barometer
    :initform (cl:make-instance 'navio2ros-msg:Barometer))
   (adc
    :reader adc
    :initarg :adc
    :type navio2ros-msg:ADC
    :initform (cl:make-instance 'navio2ros-msg:ADC))
   (rc
    :reader rc
    :initarg :rc
    :type navio2ros-msg:RC
    :initform (cl:make-instance 'navio2ros-msg:RC))
   (imu
    :reader imu
    :initarg :imu
    :type navio2ros-msg:IMU
    :initform (cl:make-instance 'navio2ros-msg:IMU))
   (gps
    :reader gps
    :initarg :gps
    :type navio2ros-msg:GPS
    :initform (cl:make-instance 'navio2ros-msg:GPS))
   (pwm
    :reader pwm
    :initarg :pwm
    :type navio2ros-msg:PWM
    :initform (cl:make-instance 'navio2ros-msg:PWM))
   (led
    :reader led
    :initarg :led
    :type navio2ros-msg:LED
    :initform (cl:make-instance 'navio2ros-msg:LED))
   (ahrs
    :reader ahrs
    :initarg :ahrs
    :type navio2ros-msg:AHRS
    :initform (cl:make-instance 'navio2ros-msg:AHRS)))
)

(cl:defclass Vehicle (<Vehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navio2ros-msg:<Vehicle> is deprecated: use navio2ros-msg:Vehicle instead.")))

(cl:ensure-generic-function 'barometer-val :lambda-list '(m))
(cl:defmethod barometer-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:barometer-val is deprecated.  Use navio2ros-msg:barometer instead.")
  (barometer m))

(cl:ensure-generic-function 'adc-val :lambda-list '(m))
(cl:defmethod adc-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:adc-val is deprecated.  Use navio2ros-msg:adc instead.")
  (adc m))

(cl:ensure-generic-function 'rc-val :lambda-list '(m))
(cl:defmethod rc-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:rc-val is deprecated.  Use navio2ros-msg:rc instead.")
  (rc m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:imu-val is deprecated.  Use navio2ros-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'gps-val :lambda-list '(m))
(cl:defmethod gps-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:gps-val is deprecated.  Use navio2ros-msg:gps instead.")
  (gps m))

(cl:ensure-generic-function 'pwm-val :lambda-list '(m))
(cl:defmethod pwm-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:pwm-val is deprecated.  Use navio2ros-msg:pwm instead.")
  (pwm m))

(cl:ensure-generic-function 'led-val :lambda-list '(m))
(cl:defmethod led-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:led-val is deprecated.  Use navio2ros-msg:led instead.")
  (led m))

(cl:ensure-generic-function 'ahrs-val :lambda-list '(m))
(cl:defmethod ahrs-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:ahrs-val is deprecated.  Use navio2ros-msg:ahrs instead.")
  (ahrs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle>) ostream)
  "Serializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'barometer) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'adc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pwm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'led) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ahrs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle>) istream)
  "Deserializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'barometer) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'adc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pwm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'led) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ahrs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle>)))
  "Returns string type for a message object of type '<Vehicle>"
  "navio2ros/Vehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle)))
  "Returns string type for a message object of type 'Vehicle"
  "navio2ros/Vehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle>)))
  "Returns md5sum for a message object of type '<Vehicle>"
  "2febfc1276c558c16a1a94747227f3aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle)))
  "Returns md5sum for a message object of type 'Vehicle"
  "2febfc1276c558c16a1a94747227f3aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle>)))
  "Returns full string definition for message of type '<Vehicle>"
  (cl:format cl:nil "Barometer barometer~%ADC adc~%RC rc~%IMU imu~%GPS gps~%PWM pwm~%LED led~%AHRS ahrs~%~%================================================================================~%MSG: navio2ros/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: navio2ros/ADC~%float32[6] channel~%~%================================================================================~%MSG: navio2ros/RC~%float32[12] channel~%~%================================================================================~%MSG: navio2ros/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: navio2ros/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/GPS~%int32 status~%float32 mtow~%float32 longitude~%float32 latitude~%float32 elevation_ellipsoid~%float32 elevation_msl~%float32 horizontal_accuracy~%float32 vertical_accuracy~%~%================================================================================~%MSG: navio2ros/PWM~%float32[14] channel~%~%================================================================================~%MSG: navio2ros/LED~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: navio2ros/AHRS~%Angular angular~%~%================================================================================~%MSG: navio2ros/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle)))
  "Returns full string definition for message of type 'Vehicle"
  (cl:format cl:nil "Barometer barometer~%ADC adc~%RC rc~%IMU imu~%GPS gps~%PWM pwm~%LED led~%AHRS ahrs~%~%================================================================================~%MSG: navio2ros/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: navio2ros/ADC~%float32[6] channel~%~%================================================================================~%MSG: navio2ros/RC~%float32[12] channel~%~%================================================================================~%MSG: navio2ros/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: navio2ros/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/GPS~%int32 status~%float32 mtow~%float32 longitude~%float32 latitude~%float32 elevation_ellipsoid~%float32 elevation_msl~%float32 horizontal_accuracy~%float32 vertical_accuracy~%~%================================================================================~%MSG: navio2ros/PWM~%float32[14] channel~%~%================================================================================~%MSG: navio2ros/LED~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: navio2ros/AHRS~%Angular angular~%~%================================================================================~%MSG: navio2ros/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'barometer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'adc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pwm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'led))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ahrs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle
    (cl:cons ':barometer (barometer msg))
    (cl:cons ':adc (adc msg))
    (cl:cons ':rc (rc msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':gps (gps msg))
    (cl:cons ':pwm (pwm msg))
    (cl:cons ':led (led msg))
    (cl:cons ':ahrs (ahrs msg))
))
