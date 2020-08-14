;; Auto-generated. Do not edit!


(when (boundp 'me457common::RC)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'RC (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::RC")
  (make-package "ME457COMMON::RC"))

(in-package "ROS")
;;//! \htmlinclude RC.msg.html


(defclass me457common::RC
  :super ros::object
  :slots (_channel ))

(defmethod me457common::RC
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

(setf (get me457common::RC :md5sum-) "7dd1c0436bcad91f32df636741a98371")
(setf (get me457common::RC :datatype-) "me457common/RC")
(setf (get me457common::RC :definition-)
      "float32[12] channel

")



(provide :me457common/RC "7dd1c0436bcad91f32df636741a98371")


