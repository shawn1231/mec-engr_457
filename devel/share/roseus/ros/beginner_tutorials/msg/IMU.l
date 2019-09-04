;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::IMU)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'IMU (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::IMU")
  (make-package "BEGINNER_TUTORIALS::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html


(defclass beginner_tutorials::IMU
  :super ros::object
  :slots (_accelerometer _gyroscope _magnetometer ))

(defmethod beginner_tutorials::IMU
  (:init
   (&key
    ((:accelerometer __accelerometer) (instance beginner_tutorials::Accelerometer :init))
    ((:gyroscope __gyroscope) (instance beginner_tutorials::Gyroscope :init))
    ((:magnetometer __magnetometer) (instance beginner_tutorials::Magnetometer :init))
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
    ;; beginner_tutorials/Accelerometer _accelerometer
    (send _accelerometer :serialization-length)
    ;; beginner_tutorials/Gyroscope _gyroscope
    (send _gyroscope :serialization-length)
    ;; beginner_tutorials/Magnetometer _magnetometer
    (send _magnetometer :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; beginner_tutorials/Accelerometer _accelerometer
       (send _accelerometer :serialize s)
     ;; beginner_tutorials/Gyroscope _gyroscope
       (send _gyroscope :serialize s)
     ;; beginner_tutorials/Magnetometer _magnetometer
       (send _magnetometer :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; beginner_tutorials/Accelerometer _accelerometer
     (send _accelerometer :deserialize buf ptr-) (incf ptr- (send _accelerometer :serialization-length))
   ;; beginner_tutorials/Gyroscope _gyroscope
     (send _gyroscope :deserialize buf ptr-) (incf ptr- (send _gyroscope :serialization-length))
   ;; beginner_tutorials/Magnetometer _magnetometer
     (send _magnetometer :deserialize buf ptr-) (incf ptr- (send _magnetometer :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::IMU :md5sum-) "33ff63b96a03311723bbe1dce9705773")
(setf (get beginner_tutorials::IMU :datatype-) "beginner_tutorials/IMU")
(setf (get beginner_tutorials::IMU :definition-)
      "Accelerometer accelerometer
Gyroscope gyroscope
Magnetometer magnetometer

================================================================================
MSG: beginner_tutorials/Accelerometer
float32 x
float32 y
float32 z

================================================================================
MSG: beginner_tutorials/Gyroscope
float32 x
float32 y
float32 z

================================================================================
MSG: beginner_tutorials/Magnetometer
float32 x
float32 y
float32 z

")



(provide :beginner_tutorials/IMU "33ff63b96a03311723bbe1dce9705773")


