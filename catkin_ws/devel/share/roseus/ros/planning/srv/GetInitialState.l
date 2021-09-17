;; Auto-generated. Do not edit!


(when (boundp 'planning::GetInitialState)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'GetInitialState (find-package "PLANNING")))
(unless (find-package "PLANNING::GETINITIALSTATE")
  (make-package "PLANNING::GETINITIALSTATE"))
(unless (find-package "PLANNING::GETINITIALSTATEREQUEST")
  (make-package "PLANNING::GETINITIALSTATEREQUEST"))
(unless (find-package "PLANNING::GETINITIALSTATERESPONSE")
  (make-package "PLANNING::GETINITIALSTATERESPONSE"))

(in-package "ROS")





(defclass planning::GetInitialStateRequest
  :super ros::object
  :slots ())

(defmethod planning::GetInitialStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass planning::GetInitialStateResponse
  :super ros::object
  :slots (_x _y _direction ))

(defmethod planning::GetInitialStateResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _direction (string __direction))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planning::GetInitialState
  :super ros::object
  :slots ())

(setf (get planning::GetInitialState :md5sum-) "3601ae784a1cdef6da6662412292fe03")
(setf (get planning::GetInitialState :datatype-) "planning/GetInitialState")
(setf (get planning::GetInitialState :request) planning::GetInitialStateRequest)
(setf (get planning::GetInitialState :response) planning::GetInitialStateResponse)

(defmethod planning::GetInitialStateRequest
  (:response () (instance planning::GetInitialStateResponse :init)))

(setf (get planning::GetInitialStateRequest :md5sum-) "3601ae784a1cdef6da6662412292fe03")
(setf (get planning::GetInitialStateRequest :datatype-) "planning/GetInitialStateRequest")
(setf (get planning::GetInitialStateRequest :definition-)
      "---
float64 x
float64 y
string direction

")

(setf (get planning::GetInitialStateResponse :md5sum-) "3601ae784a1cdef6da6662412292fe03")
(setf (get planning::GetInitialStateResponse :datatype-) "planning/GetInitialStateResponse")
(setf (get planning::GetInitialStateResponse :definition-)
      "---
float64 x
float64 y
string direction

")



(provide :planning/GetInitialState "3601ae784a1cdef6da6662412292fe03")


