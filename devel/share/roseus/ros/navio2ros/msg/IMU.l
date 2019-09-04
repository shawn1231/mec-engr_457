;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::IMU)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'IMU (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::IMU")
  (make-package "NAVIO2ROS::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html


(defclass navio2ros::IMU
  :super ros::object
  :slots (_accelerometer _gyroscope _magnetometer ))

(defmethod navio2ros::IMU
  (:init
   (&key
    ((:accelerometer __accelerometer) (instance navio2ros::Accelerometer :init))
    ((:gyroscope __gyroscope) (instance navio2ros::Gyroscope :init))
    ((:magnetometer __magnetometer) (instance navio2ros::Magnetometer :init))
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
    ;; navio2ros/Accelerometer _accelerometer
    (send _accelerometer :serialization-length)
    ;; navio2ros/Gyroscope _gyroscope
    (send _gyroscope :serialization-length)
    ;; navio2ros/Magnetometer _magnetometer
    (send _magnetometer :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navio2ros/Accelerometer _accelerometer
       (send _accelerometer :serialize s)
     ;; navio2ros/Gyroscope _gyroscope
       (send _gyroscope :serialize s)
     ;; navio2ros/Magnetometer _magnetometer
       (send _magnetometer :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navio2ros/Accelerometer _accelerometer
     (send _accelerometer :deserialize buf ptr-) (incf ptr- (send _accelerometer :serialization-length))
   ;; navio2ros/Gyroscope _gyroscope
     (send _gyroscope :deserialize buf ptr-) (incf ptr- (send _gyroscope :serialization-length))
   ;; navio2ros/Magnetometer _magnetometer
     (send _magnetometer :deserialize buf ptr-) (incf ptr- (send _magnetometer :serialization-length))
   ;;
   self)
  )

(setf (get navio2ros::IMU :md5sum-) "33ff63b96a03311723bbe1dce9705773")
(setf (get navio2ros::IMU :datatype-) "navio2ros/IMU")
(setf (get navio2ros::IMU :definition-)
      "Accelerometer accelerometer
Gyroscope gyroscope
Magnetometer magnetometer

================================================================================
MSG: navio2ros/Accelerometer
float32 x
float32 y
float32 z

================================================================================
MSG: navio2ros/Gyroscope
float32 x
float32 y
float32 z

================================================================================
MSG: navio2ros/Magnetometer
float32 x
float32 y
float32 z

")



(provide :navio2ros/IMU "33ff63b96a03311723bbe1dce9705773")


