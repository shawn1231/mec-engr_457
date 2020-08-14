; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude AHRS.msg.html

(cl:defclass <AHRS> (roslisp-msg-protocol:ros-message)
  ((angular
    :reader angular
    :initarg :angular
    :type me457common-msg:Angular
    :initform (cl:make-instance 'me457common-msg:Angular)))
)

(cl:defclass AHRS (<AHRS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AHRS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AHRS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<AHRS> is deprecated: use me457common-msg:AHRS instead.")))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <AHRS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:angular-val is deprecated.  Use me457common-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AHRS>) ostream)
  "Serializes a message object of type '<AHRS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AHRS>) istream)
  "Deserializes a message object of type '<AHRS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AHRS>)))
  "Returns string type for a message object of type '<AHRS>"
  "me457common/AHRS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AHRS)))
  "Returns string type for a message object of type 'AHRS"
  "me457common/AHRS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AHRS>)))
  "Returns md5sum for a message object of type '<AHRS>"
  "a8f2e835f7df7c60991a6cba8353dd78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AHRS)))
  "Returns md5sum for a message object of type 'AHRS"
  "a8f2e835f7df7c60991a6cba8353dd78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AHRS>)))
  "Returns full string definition for message of type '<AHRS>"
  (cl:format cl:nil "Angular angular~%~%================================================================================~%MSG: me457common/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AHRS)))
  "Returns full string definition for message of type 'AHRS"
  (cl:format cl:nil "Angular angular~%~%================================================================================~%MSG: me457common/Angular~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AHRS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AHRS>))
  "Converts a ROS message object to a list"
  (cl:list 'AHRS
    (cl:cons ':angular (angular msg))
))
