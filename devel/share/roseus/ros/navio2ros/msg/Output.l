;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::Output)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'Output (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::OUTPUT")
  (make-package "NAVIO2ROS::OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude Output.msg.html


(defclass navio2ros::Output
  :super ros::object
  :slots (_pwm _led ))

(defmethod navio2ros::Output
  (:init
   (&key
    ((:pwm __pwm) (instance navio2ros::PWM :init))
    ((:led __led) (instance navio2ros::LED :init))
    )
   (send-super :init)
   (setq _pwm __pwm)
   (setq _led __led)
   self)
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
  (:serialization-length
   ()
   (+
    ;; navio2ros/PWM _pwm
    (send _pwm :serialization-length)
    ;; navio2ros/LED _led
    (send _led :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navio2ros/PWM _pwm
       (send _pwm :serialize s)
     ;; navio2ros/LED _led
       (send _led :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navio2ros/PWM _pwm
     (send _pwm :deserialize buf ptr-) (incf ptr- (send _pwm :serialization-length))
   ;; navio2ros/LED _led
     (send _led :deserialize buf ptr-) (incf ptr- (send _led :serialization-length))
   ;;
   self)
  )

(setf (get navio2ros::Output :md5sum-) "fbd4021ec4ea8e258f9330f6d559599c")
(setf (get navio2ros::Output :datatype-) "navio2ros/Output")
(setf (get navio2ros::Output :definition-)
      "PWM pwm
LED led

================================================================================
MSG: navio2ros/PWM
float32[14] channel

================================================================================
MSG: navio2ros/LED
bool red
bool green
bool blue

")



(provide :navio2ros/Output "fbd4021ec4ea8e258f9330f6d559599c")


