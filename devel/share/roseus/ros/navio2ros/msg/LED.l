;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::LED)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'LED (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::LED")
  (make-package "NAVIO2ROS::LED"))

(in-package "ROS")
;;//! \htmlinclude LED.msg.html


(defclass navio2ros::LED
  :super ros::object
  :slots (_red _green _blue ))

(defmethod navio2ros::LED
  (:init
   (&key
    ((:red __red) nil)
    ((:green __green) nil)
    ((:blue __blue) nil)
    )
   (send-super :init)
   (setq _red __red)
   (setq _green __green)
   (setq _blue __blue)
   self)
  (:red
   (&optional __red)
   (if __red (setq _red __red)) _red)
  (:green
   (&optional __green)
   (if __green (setq _green __green)) _green)
  (:blue
   (&optional __blue)
   (if __blue (setq _blue __blue)) _blue)
  (:serialization-length
   ()
   (+
    ;; bool _red
    1
    ;; bool _green
    1
    ;; bool _blue
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _red
       (if _red (write-byte -1 s) (write-byte 0 s))
     ;; bool _green
       (if _green (write-byte -1 s) (write-byte 0 s))
     ;; bool _blue
       (if _blue (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _red
     (setq _red (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _green
     (setq _green (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _blue
     (setq _blue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get navio2ros::LED :md5sum-) "13bca4c90aa92e68023254cf5e82c226")
(setf (get navio2ros::LED :datatype-) "navio2ros/LED")
(setf (get navio2ros::LED :definition-)
      "bool red
bool green
bool blue

")



(provide :navio2ros/LED "13bca4c90aa92e68023254cf5e82c226")


