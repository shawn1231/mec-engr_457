; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude DCMotor.msg.html

(cl:defclass <DCMotor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (speed
    :reader speed
    :initarg :speed
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass DCMotor (<DCMotor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DCMotor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DCMotor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<DCMotor> is deprecated: use me457common-msg:DCMotor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DCMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:header-val is deprecated.  Use me457common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DCMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:speed-val is deprecated.  Use me457common-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DCMotor>) ostream)
  "Serializes a message object of type '<DCMotor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'speed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DCMotor>) istream)
  "Deserializes a message object of type '<DCMotor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'speed) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'speed)))
    (cl:dotimes (i 2)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DCMotor>)))
  "Returns string type for a message object of type '<DCMotor>"
  "me457common/DCMotor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DCMotor)))
  "Returns string type for a message object of type 'DCMotor"
  "me457common/DCMotor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DCMotor>)))
  "Returns md5sum for a message object of type '<DCMotor>"
  "cf4af374b34d9d4e7a75669fae7d8396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DCMotor)))
  "Returns md5sum for a message object of type 'DCMotor"
  "cf4af374b34d9d4e7a75669fae7d8396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DCMotor>)))
  "Returns full string definition for message of type '<DCMotor>"
  (cl:format cl:nil "Header header~%int16[2] speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DCMotor)))
  "Returns full string definition for message of type 'DCMotor"
  (cl:format cl:nil "Header header~%int16[2] speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DCMotor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DCMotor>))
  "Converts a ROS message object to a list"
  (cl:list 'DCMotor
    (cl:cons ':header (header msg))
    (cl:cons ':speed (speed msg))
))
