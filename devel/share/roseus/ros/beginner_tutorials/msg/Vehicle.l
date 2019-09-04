;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Vehicle)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Vehicle (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::VEHICLE")
  (make-package "BEGINNER_TUTORIALS::VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude Vehicle.msg.html


(defclass beginner_tutorials::Vehicle
  :super ros::object
  :slots (_input _output _ahrs ))

(defmethod beginner_tutorials::Vehicle
  (:init
   (&key
    ((:input __input) (instance beginner_tutorials::Input :init))
    ((:output __output) (instance beginner_tutorials::Output :init))
    ((:ahrs __ahrs) (instance beginner_tutorials::AHRS :init))
    )
   (send-super :init)
   (setq _input __input)
   (setq _output __output)
   (setq _ahrs __ahrs)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
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
    ;; beginner_tutorials/Input _input
    (send _input :serialization-length)
    ;; beginner_tutorials/Output _output
    (send _output :serialization-length)
    ;; beginner_tutorials/AHRS _ahrs
    (send _ahrs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; beginner_tutorials/Input _input
       (send _input :serialize s)
     ;; beginner_tutorials/Output _output
       (send _output :serialize s)
     ;; beginner_tutorials/AHRS _ahrs
       (send _ahrs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; beginner_tutorials/Input _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;; beginner_tutorials/Output _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;; beginner_tutorials/AHRS _ahrs
     (send _ahrs :deserialize buf ptr-) (incf ptr- (send _ahrs :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::Vehicle :md5sum-) "da90bcd421369e980b50dd533315976a")
(setf (get beginner_tutorials::Vehicle :datatype-) "beginner_tutorials/Vehicle")
(setf (get beginner_tutorials::Vehicle :definition-)
      "Input input
Output output
AHRS ahrs

================================================================================
MSG: beginner_tutorials/Input
Barometer barometer
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

================================================================================
MSG: beginner_tutorials/Output
PWM pwm
LED led

================================================================================
MSG: beginner_tutorials/PWM
float32[14] channel

================================================================================
MSG: beginner_tutorials/LED
bool red
bool green
bool blue

================================================================================
MSG: beginner_tutorials/AHRS
Angular angular

================================================================================
MSG: beginner_tutorials/Angular
float32 roll
float32 pitch
float32 yaw

")



(provide :beginner_tutorials/Vehicle "da90bcd421369e980b50dd533315976a")


