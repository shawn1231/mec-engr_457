;; Auto-generated. Do not edit!


(when (boundp 'me457common::AHRS)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'AHRS (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::AHRS")
  (make-package "ME457COMMON::AHRS"))

(in-package "ROS")
;;//! \htmlinclude AHRS.msg.html


(defclass me457common::AHRS
  :super ros::object
  :slots (_angular ))

(defmethod me457common::AHRS
  (:init
   (&key
    ((:angular __angular) (instance me457common::Angular :init))
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
    ;; me457common/Angular _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; me457common/Angular _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; me457common/Angular _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get me457common::AHRS :md5sum-) "a8f2e835f7df7c60991a6cba8353dd78")
(setf (get me457common::AHRS :datatype-) "me457common/AHRS")
(setf (get me457common::AHRS :definition-)
      "Angular angular

================================================================================
MSG: me457common/Angular
float32 roll
float32 pitch
float32 yaw

")



(provide :me457common/AHRS "a8f2e835f7df7c60991a6cba8353dd78")


