; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude LED.msg.html

(cl:defclass <LED> (roslisp-msg-protocol:ros-message)
  ((red
    :reader red
    :initarg :red
    :type cl:boolean
    :initform cl:nil)
   (green
    :reader green
    :initarg :green
    :type cl:boolean
    :initform cl:nil)
   (blue
    :reader blue
    :initarg :blue
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LED (<LED>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LED>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LED)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<LED> is deprecated: use me457common-msg:LED instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <LED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:red-val is deprecated.  Use me457common-msg:red instead.")
  (red m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <LED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:green-val is deprecated.  Use me457common-msg:green instead.")
  (green m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <LED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:blue-val is deprecated.  Use me457common-msg:blue instead.")
  (blue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LED>) ostream)
  "Serializes a message object of type '<LED>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'red) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'green) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blue) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LED>) istream)
  "Deserializes a message object of type '<LED>"
    (cl:setf (cl:slot-value msg 'red) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'green) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'blue) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LED>)))
  "Returns string type for a message object of type '<LED>"
  "me457common/LED")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LED)))
  "Returns string type for a message object of type 'LED"
  "me457common/LED")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LED>)))
  "Returns md5sum for a message object of type '<LED>"
  "13bca4c90aa92e68023254cf5e82c226")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LED)))
  "Returns md5sum for a message object of type 'LED"
  "13bca4c90aa92e68023254cf5e82c226")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LED>)))
  "Returns full string definition for message of type '<LED>"
  (cl:format cl:nil "bool red~%bool green~%bool blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LED)))
  "Returns full string definition for message of type 'LED"
  (cl:format cl:nil "bool red~%bool green~%bool blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LED>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LED>))
  "Converts a ROS message object to a list"
  (cl:list 'LED
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
))
