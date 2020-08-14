; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude Stepper.msg.html

(cl:defclass <Stepper> (roslisp-msg-protocol:ros-message)
  ((step
    :reader step
    :initarg :step
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0))
)

(cl:defclass Stepper (<Stepper>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stepper>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stepper)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<Stepper> is deprecated: use me457common-msg:Stepper instead.")))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <Stepper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:step-val is deprecated.  Use me457common-msg:step instead.")
  (step m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Stepper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:direction-val is deprecated.  Use me457common-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stepper>) ostream)
  "Serializes a message object of type '<Stepper>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stepper>) istream)
  "Deserializes a message object of type '<Stepper>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stepper>)))
  "Returns string type for a message object of type '<Stepper>"
  "me457common/Stepper")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stepper)))
  "Returns string type for a message object of type 'Stepper"
  "me457common/Stepper")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stepper>)))
  "Returns md5sum for a message object of type '<Stepper>"
  "c78a48ed2819371bf5d1770f913c26c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stepper)))
  "Returns md5sum for a message object of type 'Stepper"
  "c78a48ed2819371bf5d1770f913c26c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stepper>)))
  "Returns full string definition for message of type '<Stepper>"
  (cl:format cl:nil "float32 step~%float32 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stepper)))
  "Returns full string definition for message of type 'Stepper"
  (cl:format cl:nil "float32 step~%float32 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stepper>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stepper>))
  "Converts a ROS message object to a list"
  (cl:list 'Stepper
    (cl:cons ':step (step msg))
    (cl:cons ':direction (direction msg))
))
