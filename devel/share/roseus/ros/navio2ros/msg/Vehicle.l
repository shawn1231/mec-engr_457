;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::Vehicle)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'Vehicle (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::VEHICLE")
  (make-package "NAVIO2ROS::VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude Vehicle.msg.html


(defclass navio2ros::Vehicle
  :super ros::object
  :slots (_barometer _adc _rc _imu _gps _pwm _led _ahrs ))

(defmethod navio2ros::Vehicle
  (:init
   (&key
    ((:barometer __barometer) (instance navio2ros::Barometer :init))
    ((:adc __adc) (instance navio2ros::ADC :init))
    ((:rc __rc) (instance navio2ros::RC :init))
    ((:imu __imu) (instance navio2ros::IMU :init))
    ((:gps __gps) (instance navio2ros::GPS :init))
    ((:pwm __pwm) (instance navio2ros::PWM :init))
    ((:led __led) (instance navio2ros::LED :init))
    ((:ahrs __ahrs) (instance navio2ros::AHRS :init))
    )
   (send-super :init)
   (setq _barometer __barometer)
   (setq _adc __adc)
   (setq _rc __rc)
   (setq _imu __imu)
   (setq _gps __gps)
   (setq _pwm __pwm)
   (setq _led __led)
   (setq _ahrs __ahrs)
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
  (:pwm
   (&rest __pwm)
   (if (keywordp (car __pwm))
       (send* _pwm __pwm)
     (progn
       (if __pwm (setq _pwm (car __pwm)))
       _pwm)))
  (:led
   (&rest __led)
   (if (keywordp (car __led))
       (send* _led __led)
     (progn
       (if __led (setq _led (car __led)))
       _led)))
  (:ahrs
   (&rest __ahrs)
   (if (keywordp (car __ahrs))
       (send* _ahrs __ahrs)
     (progn
       (if __ahrs (setq _ahrs (car __ahrs)))
       _ahrs)))
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
    ;; navio2ros/PWM _pwm
    (send _pwm :serialization-length)
    ;; navio2ros/LED _led
    (send _led :serialization-length)
    ;; navio2ros/AHRS _ahrs
    (send _ahrs :serialization-length)
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
     ;; navio2ros/PWM _pwm
       (send _pwm :serialize s)
     ;; navio2ros/LED _led
       (send _led :serialize s)
     ;; navio2ros/AHRS _ahrs
       (send _ahrs :serialize s)
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
   ;; navio2ros/PWM _pwm
     (send _pwm :deserialize buf ptr-) (incf ptr- (send _pwm :serialization-length))
   ;; navio2ros/LED _led
     (send _led :deserialize buf ptr-) (incf ptr- (send _led :serialization-length))
   ;; navio2ros/AHRS _ahrs
     (send _ahrs :deserialize buf ptr-) (incf ptr- (send _ahrs :serialization-length))
   ;;
   self)
  )

(setf (get navio2ros::Vehicle :md5sum-) "2febfc1276c558c16a1a94747227f3aa")
(setf (get navio2ros::Vehicle :datatype-) "navio2ros/Vehicle")
(setf (get navio2ros::Vehicle :definition-)
      "Barometer barometer
ADC adc
RC rc
IMU imu
GPS gps
PWM pwm
LED led
AHRS ahrs

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

================================================================================
MSG: navio2ros/PWM
float32[14] channel

================================================================================
MSG: navio2ros/LED
bool red
bool green
bool blue

================================================================================
MSG: navio2ros/AHRS
Angular angular

================================================================================
MSG: navio2ros/Angular
float32 roll
float32 pitch
float32 yaw

")



(provide :navio2ros/Vehicle "2febfc1276c558c16a1a94747227f3aa")


