;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::ADC)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'ADC (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ADC")
  (make-package "BEGINNER_TUTORIALS::ADC"))

(in-package "ROS")
;;//! \htmlinclude ADC.msg.html


(defclass beginner_tutorials::ADC
  :super ros::object
  :slots (_channel ))

(defmethod beginner_tutorials::ADC
  (:init
   (&key
    ((:channel __channel) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _channel __channel)
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; float32[6] _channel
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _channel
     (dotimes (i 6)
       (sys::poke (elt _channel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _channel
   (dotimes (i (length _channel))
     (setf (elt _channel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get beginner_tutorials::ADC :md5sum-) "241d691547a1100fb6e389ff9ce11b39")
(setf (get beginner_tutorials::ADC :datatype-) "beginner_tutorials/ADC")
(setf (get beginner_tutorials::ADC :definition-)
      "float32[6] channel

")



(provide :beginner_tutorials/ADC "241d691547a1100fb6e389ff9ce11b39")


