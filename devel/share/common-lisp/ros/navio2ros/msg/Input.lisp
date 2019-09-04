; Auto-generated. Do not edit!


(cl:in-package navio2ros-msg)


;//! \htmlinclude Input.msg.html

(cl:defclass <Input> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'navio2ros-msg:GPS)))
)

(cl:defclass Input (<Input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navio2ros-msg:<Input> is deprecated: use navio2ros-msg:Input instead.")))

(cl:ensure-generic-function 'barometer-val :lambda-list '(m))
(cl:defmethod barometer-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:barometer-val is deprecated.  Use navio2ros-msg:barometer instead.")
  (barometer m))

(cl:ensure-generic-function 'adc-val :lambda-list '(m))
(cl:defmethod adc-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:adc-val is deprecated.  Use navio2ros-msg:adc instead.")
  (adc m))

(cl:ensure-generic-function 'rc-val :lambda-list '(m))
(cl:defmethod rc-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:rc-val is deprecated.  Use navio2ros-msg:rc instead.")
  (rc m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:imu-val is deprecated.  Use navio2ros-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'gps-val :lambda-list '(m))
(cl:defmethod gps-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:gps-val is deprecated.  Use navio2ros-msg:gps instead.")
  (gps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input>) ostream)
  "Serializes a message object of type '<Input>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'barometer) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'adc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input>) istream)
  "Deserializes a message object of type '<Input>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'barometer) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'adc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input>)))
  "Returns string type for a message object of type '<Input>"
  "navio2ros/Input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input)))
  "Returns string type for a message object of type 'Input"
  "navio2ros/Input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input>)))
  "Returns md5sum for a message object of type '<Input>"
  "41bfe857689e03cf3cd507d1cb1bac8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input)))
  "Returns md5sum for a message object of type 'Input"
  "41bfe857689e03cf3cd507d1cb1bac8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input>)))
  "Returns full string definition for message of type '<Input>"
  (cl:format cl:nil "Barometer barometer~%ADC adc~%RC rc~%IMU imu~%GPS gps~%~%================================================================================~%MSG: navio2ros/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: navio2ros/ADC~%float32[6] channel~%~%================================================================================~%MSG: navio2ros/RC~%float32[12] channel~%~%================================================================================~%MSG: navio2ros/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: navio2ros/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/GPS~%int32 status~%float32 mtow~%float32 longitude~%float32 latitude~%float32 elevation_ellipsoid~%float32 elevation_msl~%float32 horizontal_accuracy~%float32 vertical_accuracy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input)))
  "Returns full string definition for message of type 'Input"
  (cl:format cl:nil "Barometer barometer~%ADC adc~%RC rc~%IMU imu~%GPS gps~%~%================================================================================~%MSG: navio2ros/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: navio2ros/ADC~%float32[6] channel~%~%================================================================================~%MSG: navio2ros/RC~%float32[12] channel~%~%================================================================================~%MSG: navio2ros/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: navio2ros/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: navio2ros/GPS~%int32 status~%float32 mtow~%float32 longitude~%float32 latitude~%float32 elevation_ellipsoid~%float32 elevation_msl~%float32 horizontal_accuracy~%float32 vertical_accuracy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'barometer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'adc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input>))
  "Converts a ROS message object to a list"
  (cl:list 'Input
    (cl:cons ':barometer (barometer msg))
    (cl:cons ':adc (adc msg))
    (cl:cons ':rc (rc msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':gps (gps msg))
))
