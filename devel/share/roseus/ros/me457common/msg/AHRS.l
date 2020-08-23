;; Auto-generated. Do not edit!


(when (boundp 'me457common::AHRS)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'AHRS (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::AHRS")
  (make-package "ME457COMMON::AHRS"))

(in-package "ROS")
;;//! \htmlinclude AHRS.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass me457common::AHRS
  :super ros::object
  :slots (_header _angular ))

(defmethod me457common::AHRS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angular __angular) (instance me457common::Angular :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angular __angular)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; me457common/Angular _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; me457common/Angular _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; me457common/Angular _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get me457common::AHRS :md5sum-) "2ff53fb06a2f428eaf60b7dbbef1299a")
(setf (get me457common::AHRS :datatype-) "me457common/AHRS")
(setf (get me457common::AHRS :definition-)
      "Header header
Angular angular

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

================================================================================
MSG: me457common/Angular
Header header
float32 roll
float32 pitch
float32 yaw

")



(provide :me457common/AHRS "2ff53fb06a2f428eaf60b7dbbef1299a")


