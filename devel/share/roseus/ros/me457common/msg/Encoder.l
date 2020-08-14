;; Auto-generated. Do not edit!


(when (boundp 'me457common::Encoder)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'Encoder (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::ENCODER")
  (make-package "ME457COMMON::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude Encoder.msg.html


(defclass me457common::Encoder
  :super ros::object
  :slots (_count ))

(defmethod me457common::Encoder
  (:init
   (&key
    ((:count __count) (make-array 2 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _count __count)
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32[2] _count
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[2] _count
     (dotimes (i 2)
       (write-long (elt _count i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[2] _count
   (dotimes (i (length _count))
     (setf (elt _count i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get me457common::Encoder :md5sum-) "ba144d1786533a74b485986151fda73c")
(setf (get me457common::Encoder :datatype-) "me457common/Encoder")
(setf (get me457common::Encoder :definition-)
      "int32[2] count

")



(provide :me457common/Encoder "ba144d1786533a74b485986151fda73c")


