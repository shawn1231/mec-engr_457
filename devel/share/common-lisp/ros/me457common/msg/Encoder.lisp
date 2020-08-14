; Auto-generated. Do not edit!


(cl:in-package me457common-msg)


;//! \htmlinclude Encoder.msg.html

(cl:defclass <Encoder> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type (cl:vector cl:integer)
   :initform (cl:make-array 2 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Encoder (<Encoder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Encoder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Encoder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me457common-msg:<Encoder> is deprecated: use me457common-msg:Encoder instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <Encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me457common-msg:count-val is deprecated.  Use me457common-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Encoder>) ostream)
  "Serializes a message object of type '<Encoder>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'count))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Encoder>) istream)
  "Deserializes a message object of type '<Encoder>"
  (cl:setf (cl:slot-value msg 'count) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'count)))
    (cl:dotimes (i 2)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Encoder>)))
  "Returns string type for a message object of type '<Encoder>"
  "me457common/Encoder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Encoder)))
  "Returns string type for a message object of type 'Encoder"
  "me457common/Encoder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Encoder>)))
  "Returns md5sum for a message object of type '<Encoder>"
  "ba144d1786533a74b485986151fda73c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Encoder)))
  "Returns md5sum for a message object of type 'Encoder"
  "ba144d1786533a74b485986151fda73c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Encoder>)))
  "Returns full string definition for message of type '<Encoder>"
  (cl:format cl:nil "int32[2] count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Encoder)))
  "Returns full string definition for message of type 'Encoder"
  (cl:format cl:nil "int32[2] count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Encoder>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'count) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Encoder>))
  "Converts a ROS message object to a list"
  (cl:list 'Encoder
    (cl:cons ':count (count msg))
))
