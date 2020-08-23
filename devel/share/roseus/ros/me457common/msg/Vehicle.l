;; Auto-generated. Do not edit!


(when (boundp 'me457common::Vehicle)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'Vehicle (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::VEHICLE")
  (make-package "ME457COMMON::VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude Vehicle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass me457common::Vehicle
  :super ros::object
  :slots (_header _imu _ahrs _gps _led _rc _servo _dcmotor _stepper _encoder ))

(defmethod me457common::Vehicle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imu __imu) (instance me457common::IMU :init))
    ((:ahrs __ahrs) (instance me457common::AHRS :init))
    ((:gps __gps) (instance me457common::GPS :init))
    ((:led __led) (instance me457common::LED :init))
    ((:rc __rc) (instance me457common::RC :init))
    ((:servo __servo) (instance me457common::Servo :init))
    ((:dcmotor __dcmotor) (instance me457common::DCMotor :init))
    ((:stepper __stepper) (instance me457common::Stepper :init))
    ((:encoder __encoder) (instance me457common::Encoder :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _imu __imu)
   (setq _ahrs __ahrs)
   (setq _gps __gps)
   (setq _led __led)
   (setq _rc __rc)
   (setq _servo __servo)
   (setq _dcmotor __dcmotor)
   (setq _stepper __stepper)
   (setq _encoder __encoder)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:ahrs
   (&rest __ahrs)
   (if (keywordp (car __ahrs))
       (send* _ahrs __ahrs)
     (progn
       (if __ahrs (setq _ahrs (car __ahrs)))
       _ahrs)))
  (:gps
   (&rest __gps)
   (if (keywordp (car __gps))
       (send* _gps __gps)
     (progn
       (if __gps (setq _gps (car __gps)))
       _gps)))
  (:led
   (&rest __led)
   (if (keywordp (car __led))
       (send* _led __led)
     (progn
       (if __led (setq _led (car __led)))
       _led)))
  (:rc
   (&rest __rc)
   (if (keywordp (car __rc))
       (send* _rc __rc)
     (progn
       (if __rc (setq _rc (car __rc)))
       _rc)))
  (:servo
   (&rest __servo)
   (if (keywordp (car __servo))
       (send* _servo __servo)
     (progn
       (if __servo (setq _servo (car __servo)))
       _servo)))
  (:dcmotor
   (&rest __dcmotor)
   (if (keywordp (car __dcmotor))
       (send* _dcmotor __dcmotor)
     (progn
       (if __dcmotor (setq _dcmotor (car __dcmotor)))
       _dcmotor)))
  (:stepper
   (&rest __stepper)
   (if (keywordp (car __stepper))
       (send* _stepper __stepper)
     (progn
       (if __stepper (setq _stepper (car __stepper)))
       _stepper)))
  (:encoder
   (&rest __encoder)
   (if (keywordp (car __encoder))
       (send* _encoder __encoder)
     (progn
       (if __encoder (setq _encoder (car __encoder)))
       _encoder)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; me457common/IMU _imu
    (send _imu :serialization-length)
    ;; me457common/AHRS _ahrs
    (send _ahrs :serialization-length)
    ;; me457common/GPS _gps
    (send _gps :serialization-length)
    ;; me457common/LED _led
    (send _led :serialization-length)
    ;; me457common/RC _rc
    (send _rc :serialization-length)
    ;; me457common/Servo _servo
    (send _servo :serialization-length)
    ;; me457common/DCMotor _dcmotor
    (send _dcmotor :serialization-length)
    ;; me457common/Stepper _stepper
    (send _stepper :serialization-length)
    ;; me457common/Encoder _encoder
    (send _encoder :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; me457common/IMU _imu
       (send _imu :serialize s)
     ;; me457common/AHRS _ahrs
       (send _ahrs :serialize s)
     ;; me457common/GPS _gps
       (send _gps :serialize s)
     ;; me457common/LED _led
       (send _led :serialize s)
     ;; me457common/RC _rc
       (send _rc :serialize s)
     ;; me457common/Servo _servo
       (send _servo :serialize s)
     ;; me457common/DCMotor _dcmotor
       (send _dcmotor :serialize s)
     ;; me457common/Stepper _stepper
       (send _stepper :serialize s)
     ;; me457common/Encoder _encoder
       (send _encoder :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; me457common/IMU _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; me457common/AHRS _ahrs
     (send _ahrs :deserialize buf ptr-) (incf ptr- (send _ahrs :serialization-length))
   ;; me457common/GPS _gps
     (send _gps :deserialize buf ptr-) (incf ptr- (send _gps :serialization-length))
   ;; me457common/LED _led
     (send _led :deserialize buf ptr-) (incf ptr- (send _led :serialization-length))
   ;; me457common/RC _rc
     (send _rc :deserialize buf ptr-) (incf ptr- (send _rc :serialization-length))
   ;; me457common/Servo _servo
     (send _servo :deserialize buf ptr-) (incf ptr- (send _servo :serialization-length))
   ;; me457common/DCMotor _dcmotor
     (send _dcmotor :deserialize buf ptr-) (incf ptr- (send _dcmotor :serialization-length))
   ;; me457common/Stepper _stepper
     (send _stepper :deserialize buf ptr-) (incf ptr- (send _stepper :serialization-length))
   ;; me457common/Encoder _encoder
     (send _encoder :deserialize buf ptr-) (incf ptr- (send _encoder :serialization-length))
   ;;
   self)
  )

(setf (get me457common::Vehicle :md5sum-) "54f32e1b16903549eb04cd2f9b393f0d")
(setf (get me457common::Vehicle :datatype-) "me457common/Vehicle")
(setf (get me457common::Vehicle :definition-)
      "Header header
IMU imu
AHRS ahrs
GPS gps
LED led
RC rc
Servo servo
DCMotor dcmotor
Stepper stepper
Encoder encoder

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
MSG: me457common/IMU
Header header
Accelerometer accelerometer
Gyroscope gyroscope
Magnetometer magnetometer

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

================================================================================
MSG: me457common/AHRS
Header header
Angular angular

================================================================================
MSG: me457common/Angular
Header header
float32 roll
float32 pitch
float32 yaw

================================================================================
MSG: me457common/GPS
Header header
int32 status
float32 mtow
float32 longitude
float32 latitude
float32 elevation_ellipsoid
float32 elevation_msl
float32 horizontal_accuracy
float32 vertical_accuracy

================================================================================
MSG: me457common/LED
Header header
bool red
bool green
bool blue

================================================================================
MSG: me457common/RC
Header header
float32[12] channel

================================================================================
MSG: me457common/Servo
Header header
float32[14] channel

================================================================================
MSG: me457common/DCMotor
Header header
int16[2] speed

================================================================================
MSG: me457common/Stepper
Header header
float32 step
float32 direction

================================================================================
MSG: me457common/Encoder
Header header
int32[2] count

")



(provide :me457common/Vehicle "54f32e1b16903549eb04cd2f9b393f0d")


