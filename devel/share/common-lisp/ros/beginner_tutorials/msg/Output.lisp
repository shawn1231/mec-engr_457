; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Output.msg.html

(cl:defclass <Output> (roslisp-msg-protocol:ros-message)
  ((pwm
    :reader pwm
    :initarg :pwm
    :type beginner_tutorials-msg:PWM
    :initform (cl:make-instance 'beginner_tutorials-msg:PWM))
   (led
    :reader led
    :initarg :led
    :type beginner_tutorials-msg:LED
    :initform (cl:make-instance 'beginner_tutorials-msg:LED)))
)

(cl:defclass Output (<Output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Output> is deprecated: use beginner_tutorials-msg:Output instead.")))

(cl:ensure-generic-function 'pwm-val :lambda-list '(m))
(cl:defmethod pwm-val ((m <Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:pwm-val is deprecated.  Use beginner_tutorials-msg:pwm instead.")
  (pwm m))

(cl:ensure-generic-function 'led-val :lambda-list '(m))
(cl:defmethod led-val ((m <Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:led-val is deprecated.  Use beginner_tutorials-msg:led instead.")
  (led m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Output>) ostream)
  "Serializes a message object of type '<Output>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pwm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'led) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Output>) istream)
  "Deserializes a message object of type '<Output>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pwm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'led) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Output>)))
  "Returns string type for a message object of type '<Output>"
  "beginner_tutorials/Output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Output)))
  "Returns string type for a message object of type 'Output"
  "beginner_tutorials/Output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Output>)))
  "Returns md5sum for a message object of type '<Output>"
  "fbd4021ec4ea8e258f9330f6d559599c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Output)))
  "Returns md5sum for a message object of type 'Output"
  "fbd4021ec4ea8e258f9330f6d559599c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Output>)))
  "Returns full string definition for message of type '<Output>"
  (cl:format cl:nil "PWM pwm~%LED led~%~%================================================================================~%MSG: beginner_tutorials/PWM~%float32[14] channel~%~%================================================================================~%MSG: beginner_tutorials/LED~%bool red~%bool green~%bool blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Output)))
  "Returns full string definition for message of type 'Output"
  (cl:format cl:nil "PWM pwm~%LED led~%~%================================================================================~%MSG: beginner_tutorials/PWM~%float32[14] channel~%~%================================================================================~%MSG: beginner_tutorials/LED~%bool red~%bool green~%bool blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Output>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pwm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'led))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Output>))
  "Converts a ROS message object to a list"
  (cl:list 'Output
    (cl:cons ':pwm (pwm msg))
    (cl:cons ':led (led msg))
))
