;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Output)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Output (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::OUTPUT")
  (make-package "BEGINNER_TUTORIALS::OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude Output.msg.html


(defclass beginner_tutorials::Output
  :super ros::object
  :slots (_pwm _led ))

(defmethod beginner_tutorials::Output
  (:init
   (&key
    ((:pwm __pwm) (instance beginner_tutorials::PWM :init))
    ((:led __led) (instance beginner_tutorials::LED :init))
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
    ;; beginner_tutorials/PWM _pwm
    (send _pwm :serialization-length)
    ;; beginner_tutorials/LED _led
    (send _led :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; beginner_tutorials/PWM _pwm
       (send _pwm :serialize s)
     ;; beginner_tutorials/LED _led
       (send _led :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; beginner_tutorials/PWM _pwm
     (send _pwm :deserialize buf ptr-) (incf ptr- (send _pwm :serialization-length))
   ;; beginner_tutorials/LED _led
     (send _led :deserialize buf ptr-) (incf ptr- (send _led :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::Output :md5sum-) "fbd4021ec4ea8e258f9330f6d559599c")
(setf (get beginner_tutorials::Output :datatype-) "beginner_tutorials/Output")
(setf (get beginner_tutorials::Output :definition-)
      "PWM pwm
LED led

================================================================================
MSG: beginner_tutorials/PWM
float32[14] channel

================================================================================
MSG: beginner_tutorials/LED
bool red
bool green
bool blue

")



(provide :beginner_tutorials/Output "fbd4021ec4ea8e258f9330f6d559599c")


