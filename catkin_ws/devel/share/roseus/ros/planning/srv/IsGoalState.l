;; Auto-generated. Do not edit!


(when (boundp 'planning::IsGoalState)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'IsGoalState (find-package "PLANNING")))
(unless (find-package "PLANNING::ISGOALSTATE")
  (make-package "PLANNING::ISGOALSTATE"))
(unless (find-package "PLANNING::ISGOALSTATEREQUEST")
  (make-package "PLANNING::ISGOALSTATEREQUEST"))
(unless (find-package "PLANNING::ISGOALSTATERESPONSE")
  (make-package "PLANNING::ISGOALSTATERESPONSE"))

(in-package "ROS")





(defclass planning::IsGoalStateRequest
  :super ros::object
  :slots (_x _y ))

(defmethod planning::IsGoalStateRequest
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

(defclass planning::IsGoalStateResponse
  :super ros::object
  :slots (_is_goal ))

(defmethod planning::IsGoalStateResponse
  (:init
   (&key
    ((:is_goal __is_goal) 0.0)
    )
   (send-super :init)
   (setq _is_goal (float __is_goal))
   self)
  (:is_goal
   (&optional __is_goal)
   (if __is_goal (setq _is_goal __is_goal)) _is_goal)
  (:serialization-length
   ()
   (+
    ;; float64 _is_goal
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _is_goal
       (sys::poke _is_goal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _is_goal
     (setq _is_goal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass planning::IsGoalState
  :super ros::object
  :slots ())

(setf (get planning::IsGoalState :md5sum-) "b368a2d5da7c88f49d77eafba906c151")
(setf (get planning::IsGoalState :datatype-) "planning/IsGoalState")
(setf (get planning::IsGoalState :request) planning::IsGoalStateRequest)
(setf (get planning::IsGoalState :response) planning::IsGoalStateResponse)

(defmethod planning::IsGoalStateRequest
  (:response () (instance planning::IsGoalStateResponse :init)))

(setf (get planning::IsGoalStateRequest :md5sum-) "b368a2d5da7c88f49d77eafba906c151")
(setf (get planning::IsGoalStateRequest :datatype-) "planning/IsGoalStateRequest")
(setf (get planning::IsGoalStateRequest :definition-)
      "float64 x
float64 y
---
float64 is_goal

")

(setf (get planning::IsGoalStateResponse :md5sum-) "b368a2d5da7c88f49d77eafba906c151")
(setf (get planning::IsGoalStateResponse :datatype-) "planning/IsGoalStateResponse")
(setf (get planning::IsGoalStateResponse :definition-)
      "float64 x
float64 y
---
float64 is_goal

")



(provide :planning/IsGoalState "b368a2d5da7c88f49d77eafba906c151")


