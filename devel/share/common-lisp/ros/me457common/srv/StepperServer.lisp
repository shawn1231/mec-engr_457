; Auto-generated. Do not edit!


(cl:in-package me457common-srv)


;//! \htmlinclude StepperServer-request.msg.html

(cl:defclass <StepperServer-request> (roslisp-msg-protocol:ros-message)
  ((steps
    :reader steps
    :initarg :steps
    :type cl:integer
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0))
)

(cl:defclass StepperServer-request (<StepperServer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperServer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperServer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-srv:<StepperServer-request> is deprecated: use me457common-srv:StepperServer-request instead.")))

(cl:ensure-generic-function 'steps-val :lambda-list '(m))
(cl:defmethod steps-val ((m <StepperServer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-srv:steps-val is deprecated.  Use me457common-srv:steps instead.")
  (steps m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <StepperServer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-srv:direction-val is deprecated.  Use me457common-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperServer-request>) ostream)
  "Serializes a message object of type '<StepperServer-request>"
  (cl:let* ((signed (cl:slot-value msg 'steps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperServer-request>) istream)
  "Deserializes a message object of type '<StepperServer-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steps) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperServer-request>)))
  "Returns string type for a service object of type '<StepperServer-request>"
  "me457common/StepperServerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperServer-request)))
  "Returns string type for a service object of type 'StepperServer-request"
  "me457common/StepperServerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperServer-request>)))
  "Returns md5sum for a message object of type '<StepperServer-request>"
  "e3b7f051b4258c90902e0e504971ecbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperServer-request)))
  "Returns md5sum for a message object of type 'StepperServer-request"
  "e3b7f051b4258c90902e0e504971ecbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperServer-request>)))
  "Returns full string definition for message of type '<StepperServer-request>"
  (cl:format cl:nil "int64 steps~%int64 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperServer-request)))
  "Returns full string definition for message of type 'StepperServer-request"
  (cl:format cl:nil "int64 steps~%int64 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperServer-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperServer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperServer-request
    (cl:cons ':steps (steps msg))
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude StepperServer-response.msg.html

(cl:defclass <StepperServer-response> (roslisp-msg-protocol:ros-message)
  ((ready
    :reader ready
    :initarg :ready
    :type cl:integer
    :initform 0))
)

(cl:defclass StepperServer-response (<StepperServer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperServer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperServer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-srv:<StepperServer-response> is deprecated: use me457common-srv:StepperServer-response instead.")))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <StepperServer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-srv:ready-val is deprecated.  Use me457common-srv:ready instead.")
  (ready m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperServer-response>) ostream)
  "Serializes a message object of type '<StepperServer-response>"
  (cl:let* ((signed (cl:slot-value msg 'ready)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperServer-response>) istream)
  "Deserializes a message object of type '<StepperServer-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ready) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperServer-response>)))
  "Returns string type for a service object of type '<StepperServer-response>"
  "me457common/StepperServerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperServer-response)))
  "Returns string type for a service object of type 'StepperServer-response"
  "me457common/StepperServerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperServer-response>)))
  "Returns md5sum for a message object of type '<StepperServer-response>"
  "e3b7f051b4258c90902e0e504971ecbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperServer-response)))
  "Returns md5sum for a message object of type 'StepperServer-response"
  "e3b7f051b4258c90902e0e504971ecbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperServer-response>)))
  "Returns full string definition for message of type '<StepperServer-response>"
  (cl:format cl:nil "int64 ready~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperServer-response)))
  "Returns full string definition for message of type 'StepperServer-response"
  (cl:format cl:nil "int64 ready~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperServer-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperServer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperServer-response
    (cl:cons ':ready (ready msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StepperServer)))
  'StepperServer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StepperServer)))
  'StepperServer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperServer)))
  "Returns string type for a service object of type '<StepperServer>"
  "me457common/StepperServer")