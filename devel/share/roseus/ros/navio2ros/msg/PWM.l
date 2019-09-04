;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::PWM)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'PWM (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::PWM")
  (make-package "NAVIO2ROS::PWM"))

(in-package "ROS")
;;//! \htmlinclude PWM.msg.html


(defclass navio2ros::PWM
  :super ros::object
  :slots (_channel ))

(defmethod navio2ros::PWM
  (:init
   (&key
    ((:channel __channel) (make-array 14 :initial-element 0.0 :element-type :float))
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
    ;; float32[14] _channel
    (* 4    14)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[14] _channel
     (dotimes (i 14)
       (sys::poke (elt _channel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[14] _channel
   (dotimes (i (length _channel))
     (setf (elt _channel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get navio2ros::PWM :md5sum-) "2b89efea741cb84dd797924caac76de6")
(setf (get navio2ros::PWM :datatype-) "navio2ros/PWM")
(setf (get navio2ros::PWM :definition-)
      "float32[14] channel

")



(provide :navio2ros/PWM "2b89efea741cb84dd797924caac76de6")


