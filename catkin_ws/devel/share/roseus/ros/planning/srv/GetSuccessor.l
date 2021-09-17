;; Auto-generated. Do not edit!


(when (boundp 'planning::GetSuccessor)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'GetSuccessor (find-package "PLANNING")))
(unless (find-package "PLANNING::GETSUCCESSOR")
  (make-package "PLANNING::GETSUCCESSOR"))
(unless (find-package "PLANNING::GETSUCCESSORREQUEST")
  (make-package "PLANNING::GETSUCCESSORREQUEST"))
(unless (find-package "PLANNING::GETSUCCESSORRESPONSE")
  (make-package "PLANNING::GETSUCCESSORRESPONSE"))

(in-package "ROS")





(defclass planning::GetSuccessorRequest
  :super ros::object
  :slots (_x _y _direction _action ))

(defmethod planning::GetSuccessorRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:direction __direction) "")
    ((:action __action) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _direction (string __direction))
   (setq _action (string __action))
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
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; string _direction
    4 (length _direction)
    ;; string _action
    4 (length _action)
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
     ;; string _action
       (write-long (length _action) s) (princ _action s)
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
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planning::GetSuccessorResponse
  :super ros::object
  :slots (_x _y _direction _g_cost ))

(defmethod planning::GetSuccessorResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:direction __direction) "")
    ((:g_cost __g_cost) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _direction (string __direction))
   (setq _g_cost (float __g_cost))
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
  (:g_cost
   (&optional __g_cost)
   (if __g_cost (setq _g_cost __g_cost)) _g_cost)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; string _direction
    4 (length _direction)
    ;; float64 _g_cost
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
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; float64 _g_cost
       (sys::poke _g_cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _g_cost
     (setq _g_cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass planning::GetSuccessor
  :super ros::object
  :slots ())

(setf (get planning::GetSuccessor :md5sum-) "3f69bbdba57b08f704b0827c3651a8d8")
(setf (get planning::GetSuccessor :datatype-) "planning/GetSuccessor")
(setf (get planning::GetSuccessor :request) planning::GetSuccessorRequest)
(setf (get planning::GetSuccessor :response) planning::GetSuccessorResponse)

(defmethod planning::GetSuccessorRequest
  (:response () (instance planning::GetSuccessorResponse :init)))

(setf (get planning::GetSuccessorRequest :md5sum-) "3f69bbdba57b08f704b0827c3651a8d8")
(setf (get planning::GetSuccessorRequest :datatype-) "planning/GetSuccessorRequest")
(setf (get planning::GetSuccessorRequest :definition-)
      "float64 x
float64 y
string direction
string action
---
float64 x
float64 y
string direction
float64 g_cost

")

(setf (get planning::GetSuccessorResponse :md5sum-) "3f69bbdba57b08f704b0827c3651a8d8")
(setf (get planning::GetSuccessorResponse :datatype-) "planning/GetSuccessorResponse")
(setf (get planning::GetSuccessorResponse :definition-)
      "float64 x
float64 y
string direction
string action
---
float64 x
float64 y
string direction
float64 g_cost

")



(provide :planning/GetSuccessor "3f69bbdba57b08f704b0827c3651a8d8")


