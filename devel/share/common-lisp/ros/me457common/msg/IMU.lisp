; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude IMU.msg.html

(cl:defclass <IMU> (roslisp-msg-protocol:ros-message)
  ((accelerometer
    :reader accelerometer
    :initarg :accelerometer
    :type me457common-msg:Accelerometer
    :initform (cl:make-instance 'me457common-msg:Accelerometer))
   (gyroscope
    :reader gyroscope
    :initarg :gyroscope
    :type me457common-msg:Gyroscope
    :initform (cl:make-instance 'me457common-msg:Gyroscope))
   (magnetometer
    :reader magnetometer
    :initarg :magnetometer
    :type me457common-msg:Magnetometer
    :initform (cl:make-instance 'me457common-msg:Magnetometer)))
)

(cl:defclass IMU (<IMU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IMU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IMU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<IMU> is deprecated: use me457common-msg:IMU instead.")))

(cl:ensure-generic-function 'accelerometer-val :lambda-list '(m))
(cl:defmethod accelerometer-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:accelerometer-val is deprecated.  Use me457common-msg:accelerometer instead.")
  (accelerometer m))

(cl:ensure-generic-function 'gyroscope-val :lambda-list '(m))
(cl:defmethod gyroscope-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:gyroscope-val is deprecated.  Use me457common-msg:gyroscope instead.")
  (gyroscope m))

(cl:ensure-generic-function 'magnetometer-val :lambda-list '(m))
(cl:defmethod magnetometer-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:magnetometer-val is deprecated.  Use me457common-msg:magnetometer instead.")
  (magnetometer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IMU>) ostream)
  "Serializes a message object of type '<IMU>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accelerometer) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyroscope) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'magnetometer) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IMU>) istream)
  "Deserializes a message object of type '<IMU>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accelerometer) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyroscope) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'magnetometer) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IMU>)))
  "Returns string type for a message object of type '<IMU>"
  "me457common/IMU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IMU)))
  "Returns string type for a message object of type 'IMU"
  "me457common/IMU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IMU>)))
  "Returns md5sum for a message object of type '<IMU>"
  "33ff63b96a03311723bbe1dce9705773")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IMU)))
  "Returns md5sum for a message object of type 'IMU"
  "33ff63b96a03311723bbe1dce9705773")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IMU>)))
  "Returns full string definition for message of type '<IMU>"
  (cl:format cl:nil "Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: me457common/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Magnetometer~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IMU)))
  "Returns full string definition for message of type 'IMU"
  (cl:format cl:nil "Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: me457common/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: me457common/Magnetometer~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IMU>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accelerometer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyroscope))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'magnetometer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IMU>))
  "Converts a ROS message object to a list"
  (cl:list 'IMU
    (cl:cons ':accelerometer (accelerometer msg))
    (cl:cons ':gyroscope (gyroscope msg))
    (cl:cons ':magnetometer (magnetometer msg))
))
