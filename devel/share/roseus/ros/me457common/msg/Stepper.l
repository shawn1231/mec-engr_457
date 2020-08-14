;; Auto-generated. Do not edit!


(when (boundp 'me457common::Stepper)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'Stepper (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::STEPPER")
  (make-package "ME457COMMON::STEPPER"))

(in-package "ROS")
;;//! \htmlinclude Stepper.msg.html


(defclass me457common::Stepper
  :super ros::object
  :slots (_step _direction ))

(defmethod me457common::Stepper
  (:init
   (&key
    ((:step __step) 0.0)
    ((:direction __direction) 0.0)
    )
   (send-super :init)
   (setq _step (float __step))
   (setq _direction (float __direction))
   self)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; float32 _step
    4
    ;; float32 _direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _step
       (sys::poke _step (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _step
     (setq _step (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get me457common::Stepper :md5sum-) "c78a48ed2819371bf5d1770f913c26c3")
(setf (get me457common::Stepper :datatype-) "me457common/Stepper")
(setf (get me457common::Stepper :definition-)
      "float32 step
float32 direction

")



(provide :me457common/Stepper "c78a48ed2819371bf5d1770f913c26c3")


