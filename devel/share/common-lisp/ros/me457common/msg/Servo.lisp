; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude Servo.msg.html

(cl:defclass <Servo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (channel
    :reader channel
    :initarg :channel
    :type (cl:vector cl:float)
   :initform (cl:make-array 14 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Servo (<Servo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Servo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Servo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<Servo> is deprecated: use me457common-msg:Servo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:header-val is deprecated.  Use me457common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <Servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:channel-val is deprecated.  Use me457common-msg:channel instead.")
  (channel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Servo>) ostream)
  "Serializes a message object of type '<Servo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'channel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Servo>) istream)
  "Deserializes a message object of type '<Servo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'channel) (cl:make-array 14))
  (cl:let ((vals (cl:slot-value msg 'channel)))
    (cl:dotimes (i 14)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Servo>)))
  "Returns string type for a message object of type '<Servo>"
  "me457common/Servo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Servo)))
  "Returns string type for a message object of type 'Servo"
  "me457common/Servo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Servo>)))
  "Returns md5sum for a message object of type '<Servo>"
  "15bbbf2d20ffa2f902326684a45efda0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Servo)))
  "Returns md5sum for a message object of type 'Servo"
  "15bbbf2d20ffa2f902326684a45efda0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Servo>)))
  "Returns full string definition for message of type '<Servo>"
  (cl:format cl:nil "Header header~%float32[14] channel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Servo)))
  "Returns full string definition for message of type 'Servo"
  (cl:format cl:nil "Header header~%float32[14] channel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Servo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Servo>))
  "Converts a ROS message object to a list"
  (cl:list 'Servo
    (cl:cons ':header (header msg))
    (cl:cons ':channel (channel msg))
))
