;; Auto-generated. Do not edit!


(when (boundp 'me457common::DCMotor)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'DCMotor (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::DCMOTOR")
  (make-package "ME457COMMON::DCMOTOR"))

(in-package "ROS")
;;//! \htmlinclude DCMotor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass me457common::DCMotor
  :super ros::object
  :slots (_header _speed ))

(defmethod me457common::DCMotor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speed __speed) (make-array 2 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _speed __speed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16[2] _speed
    (* 2    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16[2] _speed
     (dotimes (i 2)
       (write-word (elt _speed i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16[2] _speed
   (dotimes (i (length _speed))
     (setf (elt _speed i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get me457common::DCMotor :md5sum-) "cf4af374b34d9d4e7a75669fae7d8396")
(setf (get me457common::DCMotor :datatype-) "me457common/DCMotor")
(setf (get me457common::DCMotor :definition-)
      "Header header
int16[2] speed

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



(provide :me457common/DCMotor "cf4af374b34d9d4e7a75669fae7d8396")


