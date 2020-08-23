; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude LED.msg.html

(cl:defclass <LED> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (red
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

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:header-val is deprecated.  Use me457common-msg:header instead.")
  (header m))

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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'red) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'green) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blue) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LED>) istream)
  "Deserializes a message object of type '<LED>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
  "044b78533caf2ad838629b7fba3f5b4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LED)))
  "Returns md5sum for a message object of type 'LED"
  "044b78533caf2ad838629b7fba3f5b4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LED>)))
  "Returns full string definition for message of type '<LED>"
  (cl:format cl:nil "Header header~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LED)))
  "Returns full string definition for message of type 'LED"
  (cl:format cl:nil "Header header~%bool red~%bool green~%bool blue~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LED>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LED>))
  "Converts a ROS message object to a list"
  (cl:list 'LED
    (cl:cons ':header (header msg))
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
))
