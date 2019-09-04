;; Auto-generated. Do not edit!


(when (boundp 'navio2ros::GPS)
  (if (not (find-package "NAVIO2ROS"))
    (make-package "NAVIO2ROS"))
  (shadow 'GPS (find-package "NAVIO2ROS")))
(unless (find-package "NAVIO2ROS::GPS")
  (make-package "NAVIO2ROS::GPS"))

(in-package "ROS")
;;//! \htmlinclude GPS.msg.html


(defclass navio2ros::GPS
  :super ros::object
  :slots (_status _mtow _longitude _latitude _elevation_ellipsoid _elevation_msl _horizontal_accuracy _vertical_accuracy ))

(defmethod navio2ros::GPS
  (:init
   (&key
    ((:status __status) 0)
    ((:mtow __mtow) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:elevation_ellipsoid __elevation_ellipsoid) 0.0)
    ((:elevation_msl __elevation_msl) 0.0)
    ((:horizontal_accuracy __horizontal_accuracy) 0.0)
    ((:vertical_accuracy __vertical_accuracy) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _mtow (float __mtow))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _elevation_ellipsoid (float __elevation_ellipsoid))
   (setq _elevation_msl (float __elevation_msl))
   (setq _horizontal_accuracy (float __horizontal_accuracy))
   (setq _vertical_accuracy (float __vertical_accuracy))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:mtow
   (&optional __mtow)
   (if __mtow (setq _mtow __mtow)) _mtow)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:elevation_ellipsoid
   (&optional __elevation_ellipsoid)
   (if __elevation_ellipsoid (setq _elevation_ellipsoid __elevation_ellipsoid)) _elevation_ellipsoid)
  (:elevation_msl
   (&optional __elevation_msl)
   (if __elevation_msl (setq _elevation_msl __elevation_msl)) _elevation_msl)
  (:horizontal_accuracy
   (&optional __horizontal_accuracy)
   (if __horizontal_accuracy (setq _horizontal_accuracy __horizontal_accuracy)) _horizontal_accuracy)
  (:vertical_accuracy
   (&optional __vertical_accuracy)
   (if __vertical_accuracy (setq _vertical_accuracy __vertical_accuracy)) _vertical_accuracy)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; float32 _mtow
    4
    ;; float32 _longitude
    4
    ;; float32 _latitude
    4
    ;; float32 _elevation_ellipsoid
    4
    ;; float32 _elevation_msl
    4
    ;; float32 _horizontal_accuracy
    4
    ;; float32 _vertical_accuracy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; float32 _mtow
       (sys::poke _mtow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation_ellipsoid
       (sys::poke _elevation_ellipsoid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation_msl
       (sys::poke _elevation_msl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _horizontal_accuracy
       (sys::poke _horizontal_accuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vertical_accuracy
       (sys::poke _vertical_accuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _mtow
     (setq _mtow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation_ellipsoid
     (setq _elevation_ellipsoid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation_msl
     (setq _elevation_msl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _horizontal_accuracy
     (setq _horizontal_accuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vertical_accuracy
     (setq _vertical_accuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get navio2ros::GPS :md5sum-) "eaff3430fb0e45c8c7614e5a10be7a35")
(setf (get navio2ros::GPS :datatype-) "navio2ros/GPS")
(setf (get navio2ros::GPS :definition-)
      "int32 status
float32 mtow
float32 longitude
float32 latitude
float32 elevation_ellipsoid
float32 elevation_msl
float32 horizontal_accuracy
float32 vertical_accuracy

")



(provide :navio2ros/GPS "eaff3430fb0e45c8c7614e5a10be7a35")


