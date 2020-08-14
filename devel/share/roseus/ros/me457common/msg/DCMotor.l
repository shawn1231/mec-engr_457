;; Auto-generated. Do not edit!


(when (boundp 'me457common::DCMotor)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'DCMotor (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::DCMOTOR")
  (make-package "ME457COMMON::DCMOTOR"))

(in-package "ROS")
;;//! \htmlinclude DCMotor.msg.html


(defclass me457common::DCMotor
  :super ros::object
  :slots (_speed ))

(defmethod me457common::DCMotor
  (:init
   (&key
    ((:speed __speed) (make-array 2 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _speed __speed)
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int16[2] _speed
    (* 2    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[2] _speed
     (dotimes (i 2)
       (write-word (elt _speed i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[2] _speed
   (dotimes (i (length _speed))
     (setf (elt _speed i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get me457common::DCMotor :md5sum-) "55e53b59e8500e0d573f34660001b31c")
(setf (get me457common::DCMotor :datatype-) "me457common/DCMotor")
(setf (get me457common::DCMotor :definition-)
      "int16[2] speed

")



(provide :me457common/DCMotor "55e53b59e8500e0d573f34660001b31c")


