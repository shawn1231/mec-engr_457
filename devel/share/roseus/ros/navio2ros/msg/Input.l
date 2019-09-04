;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::Input)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'Input (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::INPUT")
  (make-package "NAVIO2ROS::INPUT"))

(in-package "ROS")
;;//! \htmlinclude Input.msg.html


(defclass navio2ros::Input
  :super ros::object
  :slots (_barometer _adc _rc _imu _gps ))

(defmethod navio2ros::Input
  (:init
   (&key
    ((:barometer __barometer) (instance navio2ros::Barometer :init))
    ((:adc __adc) (instance navio2ros::ADC :init))
    ((:rc __rc) (instance navio2ros::RC :init))
    ((:imu __imu) (instance navio2ros::IMU :init))
    ((:gps __gps) (instance navio2ros::GPS :init))
    )
   (send-super :init)
   (setq _barometer __barometer)
   (setq _adc __adc)
   (setq _rc __rc)
   (setq _imu __imu)
   (setq _gps __gps)
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
  (:gps
   (&rest __gps)
   (if (keywordp (car __gps))
       (send* _gps __gps)
     (progn
       (if __gps (setq _gps (car __gps)))
       _gps)))
  (:serialization-length
   ()
   (+
    ;; navio2ros/Barometer _barometer
    (send _barometer :serialization-length)
    ;; navio2ros/ADC _adc
    (send _adc :serialization-length)
    ;; navio2ros/RC _rc
    (send _rc :serialization-length)
    ;; navio2ros/IMU _imu
    (send _imu :serialization-length)
    ;; navio2ros/GPS _gps
    (send _gps :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navio2ros/Barometer _barometer
       (send _barometer :serialize s)
     ;; navio2ros/ADC _adc
       (send _adc :serialize s)
     ;; navio2ros/RC _rc
       (send _rc :serialize s)
     ;; navio2ros/IMU _imu
       (send _imu :serialize s)
     ;; navio2ros/GPS _gps
       (send _gps :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navio2ros/Barometer _barometer
     (send _barometer :deserialize buf ptr-) (incf ptr- (send _barometer :serialization-length))
   ;; navio2ros/ADC _adc
     (send _adc :deserialize buf ptr-) (incf ptr- (send _adc :serialization-length))
   ;; navio2ros/RC _rc
     (send _rc :deserialize buf ptr-) (incf ptr- (send _rc :serialization-length))
   ;; navio2ros/IMU _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; navio2ros/GPS _gps
     (send _gps :deserialize buf ptr-) (incf ptr- (send _gps :serialization-length))
   ;;
   self)
  )

(setf (get navio2ros::Input :md5sum-) "41bfe857689e03cf3cd507d1cb1bac8c")
(setf (get navio2ros::Input :datatype-) "navio2ros/Input")
(setf (get navio2ros::Input :definition-)
      "Barometer barometer
ADC adc
RC rc
IMU imu
GPS gps

================================================================================
MSG: navio2ros/Barometer
float32 pressure
float32 temperature
float32 elevation

================================================================================
MSG: navio2ros/ADC
float32[6] channel

================================================================================
MSG: navio2ros/RC
float32[12] channel

================================================================================
MSG: navio2ros/IMU
Accelerometer accelerometer
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

================================================================================
MSG: navio2ros/GPS
int32 status
float32 mtow
float32 longitude
float32 latitude
float32 elevation_ellipsoid
float32 elevation_msl
float32 horizontal_accuracy
float32 vertical_accuracy

")



(provide :navio2ros/Input "41bfe857689e03cf3cd507d1cb1bac8c")


