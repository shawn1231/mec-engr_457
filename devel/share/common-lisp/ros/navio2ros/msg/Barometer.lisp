; Auto-generated. Do not edit!


(cl:in-package navio2ros-msg)


;//! \htmlinclude Barometer.msg.html

(cl:defclass <Barometer> (roslisp-msg-protocol:ros-message)
  ((pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:float
    :initform 0.0))
)

(cl:defclass Barometer (<Barometer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Barometer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Barometer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navio2ros-msg:<Barometer> is deprecated: use navio2ros-msg:Barometer instead.")))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:pressure-val is deprecated.  Use navio2ros-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:temperature-val is deprecated.  Use navio2ros-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:elevation-val is deprecated.  Use navio2ros-msg:elevation instead.")
  (elevation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Barometer>) ostream)
  "Serializes a message object of type '<Barometer>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elevation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Barometer>) istream)
  "Deserializes a message object of type '<Barometer>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Barometer>)))
  "Returns string type for a message object of type '<Barometer>"
  "navio2ros/Barometer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Barometer)))
  "Returns string type for a message object of type 'Barometer"
  "navio2ros/Barometer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Barometer>)))
  "Returns md5sum for a message object of type '<Barometer>"
  "65093e1d0bdc79afdb9f1c102acbfb46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Barometer)))
  "Returns md5sum for a message object of type 'Barometer"
  "65093e1d0bdc79afdb9f1c102acbfb46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Barometer>)))
  "Returns full string definition for message of type '<Barometer>"
  (cl:format cl:nil "float32 pressure~%float32 temperature~%float32 elevation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Barometer)))
  "Returns full string definition for message of type 'Barometer"
  (cl:format cl:nil "float32 pressure~%float32 temperature~%float32 elevation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Barometer>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Barometer>))
  "Converts a ROS message object to a list"
  (cl:list 'Barometer
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':elevation (elevation msg))
))
