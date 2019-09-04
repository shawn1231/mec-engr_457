; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Input.msg.html

(cl:defclass <Input> (roslisp-msg-protocol:ros-message)
  ((barometer
    :reader barometer
    :initarg :barometer
    :type beginner_tutorials-msg:Barometer
    :initform (cl:make-instance 'beginner_tutorials-msg:Barometer))
   (adc
    :reader adc
    :initarg :adc
    :type beginner_tutorials-msg:ADC
    :initform (cl:make-instance 'beginner_tutorials-msg:ADC))
   (rc
    :reader rc
    :initarg :rc
    :type beginner_tutorials-msg:RC
    :initform (cl:make-instance 'beginner_tutorials-msg:RC))
   (imu
    :reader imu
    :initarg :imu
    :type beginner_tutorials-msg:IMU
    :initform (cl:make-instance 'beginner_tutorials-msg:IMU)))
)

(cl:defclass Input (<Input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Input> is deprecated: use beginner_tutorials-msg:Input instead.")))

(cl:ensure-generic-function 'barometer-val :lambda-list '(m))
(cl:defmethod barometer-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:barometer-val is deprecated.  Use beginner_tutorials-msg:barometer instead.")
  (barometer m))

(cl:ensure-generic-function 'adc-val :lambda-list '(m))
(cl:defmethod adc-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:adc-val is deprecated.  Use beginner_tutorials-msg:adc instead.")
  (adc m))

(cl:ensure-generic-function 'rc-val :lambda-list '(m))
(cl:defmethod rc-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:rc-val is deprecated.  Use beginner_tutorials-msg:rc instead.")
  (rc m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:imu-val is deprecated.  Use beginner_tutorials-msg:imu instead.")
  (imu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input>) ostream)
  "Serializes a message object of type '<Input>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'barometer) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'adc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input>) istream)
  "Deserializes a message object of type '<Input>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'barometer) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'adc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input>)))
  "Returns string type for a message object of type '<Input>"
  "beginner_tutorials/Input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input)))
  "Returns string type for a message object of type 'Input"
  "beginner_tutorials/Input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input>)))
  "Returns md5sum for a message object of type '<Input>"
  "22c232fb67d50d195b4f6a0c22950751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input)))
  "Returns md5sum for a message object of type 'Input"
  "22c232fb67d50d195b4f6a0c22950751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input>)))
  "Returns full string definition for message of type '<Input>"
  (cl:format cl:nil "Barometer barometer~%ADC adc~%RC rc~%IMU imu~%~%================================================================================~%MSG: beginner_tutorials/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: beginner_tutorials/ADC~%float32[6] channel~%~%================================================================================~%MSG: beginner_tutorials/RC~%float32[12] channel~%~%================================================================================~%MSG: beginner_tutorials/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: beginner_tutorials/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Magnetometer~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input)))
  "Returns full string definition for message of type 'Input"
  (cl:format cl:nil "Barometer barometer~%ADC adc~%RC rc~%IMU imu~%~%================================================================================~%MSG: beginner_tutorials/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: beginner_tutorials/ADC~%float32[6] channel~%~%================================================================================~%MSG: beginner_tutorials/RC~%float32[12] channel~%~%================================================================================~%MSG: beginner_tutorials/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: beginner_tutorials/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Magnetometer~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'barometer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'adc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input>))
  "Converts a ROS message object to a list"
  (cl:list 'Input
    (cl:cons ':barometer (barometer msg))
    (cl:cons ':adc (adc msg))
    (cl:cons ':rc (rc msg))
    (cl:cons ':imu (imu msg))
))
