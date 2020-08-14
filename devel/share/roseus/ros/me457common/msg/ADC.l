;; Auto-generated. Do not edit!


(when (boundp 'me457common::ADC)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'ADC (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::ADC")
  (make-package "ME457COMMON::ADC"))

(in-package "ROS")
;;//! \htmlinclude ADC.msg.html


(defclass me457common::ADC
  :super ros::object
  :slots (_channel ))

(defmethod me457common::ADC
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

(setf (get me457common::ADC :md5sum-) "241d691547a1100fb6e389ff9ce11b39")
(setf (get me457common::ADC :datatype-) "me457common/ADC")
(setf (get me457common::ADC :definition-)
      "float32[6] channel

")



(provide :me457common/ADC "241d691547a1100fb6e389ff9ce11b39")


