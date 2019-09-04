;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::AHRS)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'AHRS (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::AHRS")
  (make-package "BEGINNER_TUTORIALS::AHRS"))

(in-package "ROS")
;;//! \htmlinclude AHRS.msg.html


(defclass beginner_tutorials::AHRS
  :super ros::object
  :slots (_angular ))

(defmethod beginner_tutorials::AHRS
  (:init
   (&key
    ((:angular __angular) (instance beginner_tutorials::Angular :init))
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
    ;; beginner_tutorials/Angular _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; beginner_tutorials/Angular _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; beginner_tutorials/Angular _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::AHRS :md5sum-) "a8f2e835f7df7c60991a6cba8353dd78")
(setf (get beginner_tutorials::AHRS :datatype-) "beginner_tutorials/AHRS")
(setf (get beginner_tutorials::AHRS :definition-)
      "Angular angular

================================================================================
MSG: beginner_tutorials/Angular
float32 roll
float32 pitch
float32 yaw

")



(provide :beginner_tutorials/AHRS "a8f2e835f7df7c60991a6cba8353dd78")


