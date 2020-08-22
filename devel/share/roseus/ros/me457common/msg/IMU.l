;; Auto-generated. Do not edit!


(when (boundp 'me457common::IMU)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'IMU (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::IMU")
  (make-package "ME457COMMON::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass me457common::IMU
  :super ros::object
  :slots (_header _accelerometer _gyroscope _magnetometer ))

(defmethod me457common::IMU
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:accelerometer __accelerometer) (instance me457common::Accelerometer :init))
    ((:gyroscope __gyroscope) (instance me457common::Gyroscope :init))
    ((:magnetometer __magnetometer) (instance me457common::Magnetometer :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _accelerometer __accelerometer)
   (setq _gyroscope __gyroscope)
   (setq _magnetometer __magnetometer)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:accelerometer
   (&rest __accelerometer)
   (if (keywordp (car __accelerometer))
       (send* _accelerometer __accelerometer)
     (progn
       (if __accelerometer (setq _accelerometer (car __accelerometer)))
       _accelerometer)))
  (:gyroscope
   (&rest __gyroscope)
   (if (keywordp (car __gyroscope))
       (send* _gyroscope __gyroscope)
     (progn
       (if __gyroscope (setq _gyroscope (car __gyroscope)))
       _gyroscope)))
  (:magnetometer
   (&rest __magnetometer)
   (if (keywordp (car __magnetometer))
       (send* _magnetometer __magnetometer)
     (progn
       (if __magnetometer (setq _magnetometer (car __magnetometer)))
       _magnetometer)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; me457common/Accelerometer _accelerometer
    (send _accelerometer :serialization-length)
    ;; me457common/Gyroscope _gyroscope
    (send _gyroscope :serialization-length)
    ;; me457common/Magnetometer _magnetometer
    (send _magnetometer :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; me457common/Accelerometer _accelerometer
       (send _accelerometer :serialize s)
     ;; me457common/Gyroscope _gyroscope
       (send _gyroscope :serialize s)
     ;; me457common/Magnetometer _magnetometer
       (send _magnetometer :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; me457common/Accelerometer _accelerometer
     (send _accelerometer :deserialize buf ptr-) (incf ptr- (send _accelerometer :serialization-length))
   ;; me457common/Gyroscope _gyroscope
     (send _gyroscope :deserialize buf ptr-) (incf ptr- (send _gyroscope :serialization-length))
   ;; me457common/Magnetometer _magnetometer
     (send _magnetometer :deserialize buf ptr-) (incf ptr- (send _magnetometer :serialization-length))
   ;;
   self)
  )

(setf (get me457common::IMU :md5sum-) "0494ce31f87f2216a9da6d0830d062cd")
(setf (get me457common::IMU :datatype-) "me457common/IMU")
(setf (get me457common::IMU :definition-)
      "Header header
Accelerometer accelerometer
Gyroscope gyroscope
Magnetometer magnetometer

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
MSG: me457common/Accelerometer
Header header
float32 x
float32 y
float32 z

================================================================================
MSG: me457common/Gyroscope
Header header
float32 x
float32 y
float32 z

================================================================================
MSG: me457common/Magnetometer
Header header
float32 x
float32 y
float32 z

")



(provide :me457common/IMU "0494ce31f87f2216a9da6d0830d062cd")


