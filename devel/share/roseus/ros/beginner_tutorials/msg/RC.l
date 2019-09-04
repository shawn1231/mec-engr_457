;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::RC)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'RC (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::RC")
  (make-package "BEGINNER_TUTORIALS::RC"))

(in-package "ROS")
;;//! \htmlinclude RC.msg.html


(defclass beginner_tutorials::RC
  :super ros::object
  :slots (_channel ))

(defmethod beginner_tutorials::RC
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

(setf (get beginner_tutorials::RC :md5sum-) "7dd1c0436bcad91f32df636741a98371")
(setf (get beginner_tutorials::RC :datatype-) "beginner_tutorials/RC")
(setf (get beginner_tutorials::RC :definition-)
      "float32[12] channel

")



(provide :beginner_tutorials/RC "7dd1c0436bcad91f32df636741a98371")


