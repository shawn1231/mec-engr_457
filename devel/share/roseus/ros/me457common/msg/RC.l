;; Auto-generated. Do not edit!


(when (boundp 'me457common::RC)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'RC (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::RC")
  (make-package "ME457COMMON::RC"))

(in-package "ROS")
;;//! \htmlinclude RC.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass me457common::RC
  :super ros::object
  :slots (_header _channel ))

(defmethod me457common::RC
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:channel __channel) (make-array 12 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _channel __channel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[12] _channel
    (* 4    12)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[12] _channel
     (dotimes (i 12)
       (sys::poke (elt _channel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[12] _channel
   (dotimes (i (length _channel))
     (setf (elt _channel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get me457common::RC :md5sum-) "46be1dc3b1ac0465389b0a38e6c71ef4")
(setf (get me457common::RC :datatype-) "me457common/RC")
(setf (get me457common::RC :definition-)
      "Header header
float32[12] channel

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :me457common/RC "46be1dc3b1ac0465389b0a38e6c71ef4")


