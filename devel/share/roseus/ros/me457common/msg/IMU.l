;; Auto-generated. Do not edit!


(when (boundp 'me457common::IMU)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'IMU (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::IMU")
  (make-package "ME457COMMON::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html


(defclass me457common::IMU
  :super ros::object
  :slots (_accelerometer _gyroscope _magnetometer ))

(defmethod me457common::IMU
  (:init
   (&key
    ((:accelerometer __accelerometer) (instance me457common::Accelerometer :init))
    ((:gyroscope __gyroscope) (instance me457common::Gyroscope :init))
    ((:magnetometer __magnetometer) (instance me457common::Magnetometer :init))
    )
   (send-super :init)
   (setq _accelerometer __accelerometer)
   (setq _gyroscope __gyroscope)
   (setq _magnetometer __magnetometer)
   self)
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
   ;; me457common/Accelerometer _accelerometer
     (send _accelerometer :deserialize buf ptr-) (incf ptr- (send _accelerometer :serialization-length))
   ;; me457common/Gyroscope _gyroscope
     (send _gyroscope :deserialize buf ptr-) (incf ptr- (send _gyroscope :serialization-length))
   ;; me457common/Magnetometer _magnetometer
     (send _magnetometer :deserialize buf ptr-) (incf ptr- (send _magnetometer :serialization-length))
   ;;
   self)
  )

(setf (get me457common::IMU :md5sum-) "33ff63b96a03311723bbe1dce9705773")
(setf (get me457common::IMU :datatype-) "me457common/IMU")
(setf (get me457common::IMU :definition-)
      "Accelerometer accelerometer
Gyroscope gyroscope
Magnetometer magnetometer

================================================================================
MSG: me457common/Accelerometer
float32 x
float32 y
float32 z

================================================================================
MSG: me457common/Gyroscope
float32 x
float32 y
float32 z

================================================================================
MSG: me457common/Magnetometer
float32 x
float32 y
float32 z

")



(provide :me457common/IMU "33ff63b96a03311723bbe1dce9705773")


