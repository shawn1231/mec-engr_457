;; Auto-generated. Do not edit!


(when (boundp 'me457common::Stepper)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'Stepper (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::STEPPER")
  (make-package "ME457COMMON::STEPPER"))

(in-package "ROS")
;;//! \htmlinclude Stepper.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass me457common::Stepper
  :super ros::object
  :slots (_header _step _direction ))

(defmethod me457common::Stepper
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:step __step) 0.0)
    ((:direction __direction) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _step (float __step))
   (setq _direction (float __direction))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _step
    4
    ;; float32 _direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _step
       (sys::poke _step (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _step
     (setq _step (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get me457common::Stepper :md5sum-) "7750ba0dca8aa3b87101f7accbeb245f")
(setf (get me457common::Stepper :datatype-) "me457common/Stepper")
(setf (get me457common::Stepper :definition-)
      "Header header
float32 step
float32 direction

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



(provide :me457common/Stepper "7750ba0dca8aa3b87101f7accbeb245f")


