;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::RC)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'RC (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::RC")
  (make-package "NAVIO2ROS::RC"))

(in-package "ROS")
;;//! \htmlinclude RC.msg.html


(defclass navio2ros::RC
  :super ros::object
  :slots (_channel ))

(defmethod navio2ros::RC
  (:init
   (&key
    ((:channel __channel) (make-array 12 :initial-element 0.0 :element-type :float))
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
    ;; float32[12] _channel
    (* 4    12)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[12] _channel
     (dotimes (i 12)
       (sys::poke (elt _channel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[12] _channel
   (dotimes (i (length _channel))
     (setf (elt _channel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get navio2ros::RC :md5sum-) "7dd1c0436bcad91f32df636741a98371")
(setf (get navio2ros::RC :datatype-) "navio2ros/RC")
(setf (get navio2ros::RC :definition-)
      "float32[12] channel

")



(provide :navio2ros/RC "7dd1c0436bcad91f32df636741a98371")


