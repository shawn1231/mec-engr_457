;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Input)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Input (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::INPUT")
  (make-package "BEGINNER_TUTORIALS::INPUT"))

(in-package "ROS")
;;//! \htmlinclude Input.msg.html


(defclass beginner_tutorials::Input
  :super ros::object
  :slots (_barometer _adc _rc _imu ))

(defmethod beginner_tutorials::Input
  (:init
   (&key
    ((:barometer __barometer) (instance beginner_tutorials::Barometer :init))
    ((:adc __adc) (instance beginner_tutorials::ADC :init))
    ((:rc __rc) (instance beginner_tutorials::RC :init))
    ((:imu __imu) (instance beginner_tutorials::IMU :init))
    )
   (send-super :init)
   (setq _barometer __barometer)
   (setq _adc __adc)
   (setq _rc __rc)
   (setq _imu __imu)
   self)
  (:barometer
   (&rest __barometer)
   (if (keywordp (car __barometer))
       (send* _barometer __barometer)
     (progn
       (if __barometer (setq _barometer (car __barometer)))
       _barometer)))
  (:adc
   (&rest __adc)
   (if (keywordp (car __adc))
       (send* _adc __adc)
     (progn
       (if __adc (setq _adc (car __adc)))
       _adc)))
  (:rc
   (&rest __rc)
   (if (keywordp (car __rc))
       (send* _rc __rc)
     (progn
       (if __rc (setq _rc (car __rc)))
       _rc)))
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:serialization-length
   ()
   (+
    ;; beginner_tutorials/Barometer _barometer
    (send _barometer :serialization-length)
    ;; beginner_tutorials/ADC _adc
    (send _adc :serialization-length)
    ;; beginner_tutorials/RC _rc
    (send _rc :serialization-length)
    ;; beginner_tutorials/IMU _imu
    (send _imu :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; beginner_tutorials/Barometer _barometer
       (send _barometer :serialize s)
     ;; beginner_tutorials/ADC _adc
       (send _adc :serialize s)
     ;; beginner_tutorials/RC _rc
       (send _rc :serialize s)
     ;; beginner_tutorials/IMU _imu
       (send _imu :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; beginner_tutorials/Barometer _barometer
     (send _barometer :deserialize buf ptr-) (incf ptr- (send _barometer :serialization-length))
   ;; beginner_tutorials/ADC _adc
     (send _adc :deserialize buf ptr-) (incf ptr- (send _adc :serialization-length))
   ;; beginner_tutorials/RC _rc
     (send _rc :deserialize buf ptr-) (incf ptr- (send _rc :serialization-length))
   ;; beginner_tutorials/IMU _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::Input :md5sum-) "22c232fb67d50d195b4f6a0c22950751")
(setf (get beginner_tutorials::Input :datatype-) "beginner_tutorials/Input")
(setf (get beginner_tutorials::Input :definition-)
      "Barometer barometer
ADC adc
RC rc
IMU imu

================================================================================
MSG: beginner_tutorials/Barometer
float32 pressure
float32 temperature
float32 elevation

================================================================================
MSG: beginner_tutorials/ADC
float32[6] channel

================================================================================
MSG: beginner_tutorials/RC
float32[12] channel

================================================================================
MSG: beginner_tutorials/IMU
Accelerometer accelerometer
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



(provide :beginner_tutorials/Input "22c232fb67d50d195b4f6a0c22950751")


