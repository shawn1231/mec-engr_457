;; Auto-generated. Do not edit!


(when (boundp 'me457common::LED)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'LED (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::LED")
  (make-package "ME457COMMON::LED"))

(in-package "ROS")
;;//! \htmlinclude LED.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass me457common::LED
  :super ros::object
  :slots (_header _red _green _blue ))

(defmethod me457common::LED
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:red __red) nil)
    ((:green __green) nil)
    ((:blue __blue) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _red __red)
   (setq _green __green)
   (setq _blue __blue)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:red
   (&optional __red)
   (if __red (setq _red __red)) _red)
  (:green
   (&optional __green)
   (if __green (setq _green __green)) _green)
  (:blue
   (&optional __blue)
   (if __blue (setq _blue __blue)) _blue)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _red
    1
    ;; bool _green
    1
    ;; bool _blue
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _red
       (if _red (write-byte -1 s) (write-byte 0 s))
     ;; bool _green
       (if _green (write-byte -1 s) (write-byte 0 s))
     ;; bool _blue
       (if _blue (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _red
     (setq _red (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _green
     (setq _green (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _blue
     (setq _blue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get me457common::LED :md5sum-) "044b78533caf2ad838629b7fba3f5b4d")
(setf (get me457common::LED :datatype-) "me457common/LED")
(setf (get me457common::LED :definition-)
      "Header header
bool red
bool green
bool blue

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



(provide :me457common/LED "044b78533caf2ad838629b7fba3f5b4d")


