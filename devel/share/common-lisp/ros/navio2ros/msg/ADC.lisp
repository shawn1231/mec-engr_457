; Auto-generated. Do not edit!


(cl:in-package navio2ros-msg)


;//! \htmlinclude ADC.msg.html

(cl:defclass <ADC> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ADC (<ADC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navio2ros-msg:<ADC> is deprecated: use navio2ros-msg:ADC instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <ADC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navio2ros-msg:channel-val is deprecated.  Use navio2ros-msg:channel instead.")
  (channel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADC>) ostream)
  "Serializes a message object of type '<ADC>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'channel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADC>) istream)
  "Deserializes a message object of type '<ADC>"
  (cl:setf (cl:slot-value msg 'channel) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'channel)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADC>)))
  "Returns string type for a message object of type '<ADC>"
  "navio2ros/ADC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADC)))
  "Returns string type for a message object of type 'ADC"
  "navio2ros/ADC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADC>)))
  "Returns md5sum for a message object of type '<ADC>"
  "241d691547a1100fb6e389ff9ce11b39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADC)))
  "Returns md5sum for a message object of type 'ADC"
  "241d691547a1100fb6e389ff9ce11b39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADC>)))
  "Returns full string definition for message of type '<ADC>"
  (cl:format cl:nil "float32[6] channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADC)))
  "Returns full string definition for message of type 'ADC"
  (cl:format cl:nil "float32[6] channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADC>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADC>))
  "Converts a ROS message object to a list"
  (cl:list 'ADC
    (cl:cons ':channel (channel msg))
))
