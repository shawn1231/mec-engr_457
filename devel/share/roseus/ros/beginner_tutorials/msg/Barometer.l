;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Barometer)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Barometer (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::BAROMETER")
  (make-package "BEGINNER_TUTORIALS::BAROMETER"))

(in-package "ROS")
;;//! \htmlinclude Barometer.msg.html


(defclass beginner_tutorials::Barometer
  :super ros::object
  :slots (_pressure _temperature _elevation ))

(defmethod beginner_tutorials::Barometer
  (:init
   (&key
    ((:pressure __pressure) 0.0)
    ((:temperature __temperature) 0.0)
    ((:elevation __elevation) 0.0)
    )
   (send-super :init)
   (setq _pressure (float __pressure))
   (setq _temperature (float __temperature))
   (setq _elevation (float __elevation))
   self)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:serialization-length
   ()
   (+
    ;; float32 _pressure
    4
    ;; float32 _temperature
    4
    ;; float32 _elevation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pressure
     (setq _pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation
     (setq _elevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Barometer :md5sum-) "65093e1d0bdc79afdb9f1c102acbfb46")
(setf (get beginner_tutorials::Barometer :datatype-) "beginner_tutorials/Barometer")
(setf (get beginner_tutorials::Barometer :definition-)
      "float32 pressure
float32 temperature
float32 elevation

")



(provide :beginner_tutorials/Barometer "65093e1d0bdc79afdb9f1c102acbfb46")


