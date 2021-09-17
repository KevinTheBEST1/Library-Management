;; Auto-generated. Do not edit!


(when (boundp 'planning::GetGoalState)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'GetGoalState (find-package "PLANNING")))
(unless (find-package "PLANNING::GETGOALSTATE")
  (make-package "PLANNING::GETGOALSTATE"))
(unless (find-package "PLANNING::GETGOALSTATEREQUEST")
  (make-package "PLANNING::GETGOALSTATEREQUEST"))
(unless (find-package "PLANNING::GETGOALSTATERESPONSE")
  (make-package "PLANNING::GETGOALSTATERESPONSE"))

(in-package "ROS")





(defclass planning::GetGoalStateRequest
  :super ros::object
  :slots ())

(defmethod planning::GetGoalStateRequest
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

(defclass planning::GetGoalStateResponse
  :super ros::object
  :slots (_x _y ))

(defmethod planning::GetGoalStateResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass planning::GetGoalState
  :super ros::object
  :slots ())

(setf (get planning::GetGoalState :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get planning::GetGoalState :datatype-) "planning/GetGoalState")
(setf (get planning::GetGoalState :request) planning::GetGoalStateRequest)
(setf (get planning::GetGoalState :response) planning::GetGoalStateResponse)

(defmethod planning::GetGoalStateRequest
  (:response () (instance planning::GetGoalStateResponse :init)))

(setf (get planning::GetGoalStateRequest :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get planning::GetGoalStateRequest :datatype-) "planning/GetGoalStateRequest")
(setf (get planning::GetGoalStateRequest :definition-)
      "---
float64 x
float64 y
")

(setf (get planning::GetGoalStateResponse :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get planning::GetGoalStateResponse :datatype-) "planning/GetGoalStateResponse")
(setf (get planning::GetGoalStateResponse :definition-)
      "---
float64 x
float64 y
")



(provide :planning/GetGoalState "209f516d3eb691f0663e25cb750d67c1")


