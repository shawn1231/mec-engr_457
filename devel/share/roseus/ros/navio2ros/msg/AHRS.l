;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::AHRS)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'AHRS (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::AHRS")
  (make-package "NAVIO2ROS::AHRS"))

(in-package "ROS")
;;//! \htmlinclude AHRS.msg.html


(defclass navio2ros::AHRS
  :super ros::object
  :slots (_angular ))

(defmethod navio2ros::AHRS
  (:init
   (&key
    ((:angular __angular) (instance navio2ros::Angular :init))
    )
   (send-super :init)
   (setq _angular __angular)
   self)
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; navio2ros/Angular _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navio2ros/Angular _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navio2ros/Angular _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get navio2ros::AHRS :md5sum-) "a8f2e835f7df7c60991a6cba8353dd78")
(setf (get navio2ros::AHRS :datatype-) "navio2ros/AHRS")
(setf (get navio2ros::AHRS :definition-)
      "Angular angular

================================================================================
MSG: navio2ros/Angular
float32 roll
float32 pitch
float32 yaw

")



(provide :navio2ros/AHRS "a8f2e835f7df7c60991a6cba8353dd78")


