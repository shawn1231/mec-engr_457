; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Vehicle.msg.html

(cl:defclass <Vehicle> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type beginner_tutorials-msg:Input
    :initform (cl:make-instance 'beginner_tutorials-msg:Input))
   (output
    :reader output
    :initarg :output
    :type beginner_tutorials-msg:Output
    :initform (cl:make-instance 'beginner_tutorials-msg:Output))
   (ahrs
    :reader ahrs
    :initarg :ahrs
    :type beginner_tutorials-msg:AHRS
    :initform (cl:make-instance 'beginner_tutorials-msg:AHRS)))
)

(cl:defclass Vehicle (<Vehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Vehicle> is deprecated: use beginner_tutorials-msg:Vehicle instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:input-val is deprecated.  Use beginner_tutorials-msg:input instead.")
  (input m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:output-val is deprecated.  Use beginner_tutorials-msg:output instead.")
  (output m))

(cl:ensure-generic-function 'ahrs-val :lambda-list '(m))
(cl:defmethod ahrs-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:ahrs-val is deprecated.  Use beginner_tutorials-msg:ahrs instead.")
  (ahrs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle>) ostream)
  "Serializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ahrs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle>) istream)
  "Deserializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ahrs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle>)))
  "Returns string type for a message object of type '<Vehicle>"
  "beginner_tutorials/Vehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle)))
  "Returns string type for a message object of type 'Vehicle"
  "beginner_tutorials/Vehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle>)))
  "Returns md5sum for a message object of type '<Vehicle>"
  "da90bcd421369e980b50dd533315976a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle)))
  "Returns md5sum for a message object of type 'Vehicle"
  "da90bcd421369e980b50dd533315976a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle>)))
  "Returns full string definition for message of type '<Vehicle>"
  (cl:format cl:nil "Input input~%Output output~%AHRS ahrs~%~%================================================================================~%MSG: beginner_tutorials/Input~%Barometer barometer~%ADC adc~%RC rc~%IMU imu~%~%================================================================================~%MSG: beginner_tutorials/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: beginner_tutorials/ADC~%float32[6] channel~%~%================================================================================~%MSG: beginner_tutorials/RC~%float32[12] channel~%~%================================================================================~%MSG: beginner_tutorials/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: beginner_tutorials/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Output~%PWM pwm~%LED led~%~%================================================================================~%MSG: beginner_tutorials/PWM~%float32[14] channel~%~%================================================================================~%MSG: beginner_tutorials/LED~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: beginner_tutorials/AHRS~%Angular angular~%~%================================================================================~%MSG: beginner_tutorials/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle)))
  "Returns full string definition for message of type 'Vehicle"
  (cl:format cl:nil "Input input~%Output output~%AHRS ahrs~%~%================================================================================~%MSG: beginner_tutorials/Input~%Barometer barometer~%ADC adc~%RC rc~%IMU imu~%~%================================================================================~%MSG: beginner_tutorials/Barometer~%float32 pressure~%float32 temperature~%float32 elevation~%~%================================================================================~%MSG: beginner_tutorials/ADC~%float32[6] channel~%~%================================================================================~%MSG: beginner_tutorials/RC~%float32[12] channel~%~%================================================================================~%MSG: beginner_tutorials/IMU~%Accelerometer accelerometer~%Gyroscope gyroscope~%Magnetometer magnetometer~%~%================================================================================~%MSG: beginner_tutorials/Accelerometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Gyroscope~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Magnetometer~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: beginner_tutorials/Output~%PWM pwm~%LED led~%~%================================================================================~%MSG: beginner_tutorials/PWM~%float32[14] channel~%~%================================================================================~%MSG: beginner_tutorials/LED~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: beginner_tutorials/AHRS~%Angular angular~%~%================================================================================~%MSG: beginner_tutorials/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ahrs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle
    (cl:cons ':input (input msg))
    (cl:cons ':output (output msg))
    (cl:cons ':ahrs (ahrs msg))
))
