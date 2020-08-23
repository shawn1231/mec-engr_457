;; Auto-generated. Do not edit!


(when (boundp 'me457common::StepperServer)
  (if (not (find-package "ME457COMMON"))
    (make-package "ME457COMMON"))
  (shadow 'StepperServer (find-package "ME457COMMON")))
(unless (find-package "ME457COMMON::STEPPERSERVER")
  (make-package "ME457COMMON::STEPPERSERVER"))
(unless (find-package "ME457COMMON::STEPPERSERVERREQUEST")
  (make-package "ME457COMMON::STEPPERSERVERREQUEST"))
(unless (find-package "ME457COMMON::STEPPERSERVERRESPONSE")
  (make-package "ME457COMMON::STEPPERSERVERRESPONSE"))

(in-package "ROS")





(defclass me457common::StepperServerRequest
  :super ros::object
  :slots (_steps _direction ))

(defmethod me457common::StepperServerRequest
  (:init
   (&key
    ((:steps __steps) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _steps (round __steps))
   (setq _direction (round __direction))
   self)
  (:steps
   (&optional __steps)
   (if __steps (setq _steps __steps)) _steps)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int64 _steps
    8
    ;; int64 _direction
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _steps
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _steps (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _steps) (= (length (_steps . bv)) 2)) ;; bignum
              (write-long (ash (elt (_steps . bv) 0) 0) s)
              (write-long (ash (elt (_steps . bv) 1) -1) s))
             ((and (class _steps) (= (length (_steps . bv)) 1)) ;; big1
              (write-long (elt (_steps . bv) 0) s)
              (write-long (if (>= _steps 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _steps s)(write-long (if (>= _steps 0) 0 #xffffffff) s)))
     ;; int64 _direction
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _direction (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _direction) (= (length (_direction . bv)) 2)) ;; bignum
              (write-long (ash (elt (_direction . bv) 0) 0) s)
              (write-long (ash (elt (_direction . bv) 1) -1) s))
             ((and (class _direction) (= (length (_direction . bv)) 1)) ;; big1
              (write-long (elt (_direction . bv) 0) s)
              (write-long (if (>= _direction 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _direction s)(write-long (if (>= _direction 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _steps
#+(or :alpha :irix6 :x86_64)
      (setf _steps (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _steps (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _direction
#+(or :alpha :irix6 :x86_64)
      (setf _direction (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _direction (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass me457common::StepperServerResponse
  :super ros::object
  :slots (_ready ))

(defmethod me457common::StepperServerResponse
  (:init
   (&key
    ((:ready __ready) 0)
    )
   (send-super :init)
   (setq _ready (round __ready))
   self)
  (:ready
   (&optional __ready)
   (if __ready (setq _ready __ready)) _ready)
  (:serialization-length
   ()
   (+
    ;; int64 _ready
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ready
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ready (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ready) (= (length (_ready . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ready . bv) 0) 0) s)
              (write-long (ash (elt (_ready . bv) 1) -1) s))
             ((and (class _ready) (= (length (_ready . bv)) 1)) ;; big1
              (write-long (elt (_ready . bv) 0) s)
              (write-long (if (>= _ready 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ready s)(write-long (if (>= _ready 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ready
#+(or :alpha :irix6 :x86_64)
      (setf _ready (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ready (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass me457common::StepperServer
  :super ros::object
  :slots ())

(setf (get me457common::StepperServer :md5sum-) "e3b7f051b4258c90902e0e504971ecbd")
(setf (get me457common::StepperServer :datatype-) "me457common/StepperServer")
(setf (get me457common::StepperServer :request) me457common::StepperServerRequest)
(setf (get me457common::StepperServer :response) me457common::StepperServerResponse)

(defmethod me457common::StepperServerRequest
  (:response () (instance me457common::StepperServerResponse :init)))

(setf (get me457common::StepperServerRequest :md5sum-) "e3b7f051b4258c90902e0e504971ecbd")
(setf (get me457common::StepperServerRequest :datatype-) "me457common/StepperServerRequest")
(setf (get me457common::StepperServerRequest :definition-)
      "int64 steps
int64 direction
---
int64 ready

")

(setf (get me457common::StepperServerResponse :md5sum-) "e3b7f051b4258c90902e0e504971ecbd")
(setf (get me457common::StepperServerResponse :datatype-) "me457common/StepperServerResponse")
(setf (get me457common::StepperServerResponse :definition-)
      "int64 steps
int64 direction
---
int64 ready

")



(provide :me457common/StepperServer "e3b7f051b4258c90902e0e504971ecbd")


