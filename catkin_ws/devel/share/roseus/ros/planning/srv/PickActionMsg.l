;; Auto-generated. Do not edit!


(when (boundp 'planning::PickActionMsg)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'PickActionMsg (find-package "PLANNING")))
(unless (find-package "PLANNING::PICKACTIONMSG")
  (make-package "PLANNING::PICKACTIONMSG"))
(unless (find-package "PLANNING::PICKACTIONMSGREQUEST")
  (make-package "PLANNING::PICKACTIONMSGREQUEST"))
(unless (find-package "PLANNING::PICKACTIONMSGRESPONSE")
  (make-package "PLANNING::PICKACTIONMSGRESPONSE"))

(in-package "ROS")





(defclass planning::PickActionMsgRequest
  :super ros::object
  :slots (_book_name _x _y _orientation ))

(defmethod planning::PickActionMsgRequest
  (:init
   (&key
    ((:book_name __book_name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:orientation __orientation) "")
    )
   (send-super :init)
   (setq _book_name (string __book_name))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _orientation (string __orientation))
   self)
  (:book_name
   (&optional __book_name)
   (if __book_name (setq _book_name __book_name)) _book_name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; string _book_name
    4 (length _book_name)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; string _orientation
    4 (length _orientation)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _book_name
       (write-long (length _book_name) s) (princ _book_name s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _orientation
       (write-long (length _orientation) s) (princ _orientation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _book_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _book_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _orientation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orientation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planning::PickActionMsgResponse
  :super ros::object
  :slots (_result ))

(defmethod planning::PickActionMsgResponse
  (:init
   (&key
    ((:result __result) 0.0)
    )
   (send-super :init)
   (setq _result (float __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float64 _result
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _result
       (sys::poke _result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _result
     (setq _result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass planning::PickActionMsg
  :super ros::object
  :slots ())

(setf (get planning::PickActionMsg :md5sum-) "3ab27bcdd62db4306af656bdabcd225b")
(setf (get planning::PickActionMsg :datatype-) "planning/PickActionMsg")
(setf (get planning::PickActionMsg :request) planning::PickActionMsgRequest)
(setf (get planning::PickActionMsg :response) planning::PickActionMsgResponse)

(defmethod planning::PickActionMsgRequest
  (:response () (instance planning::PickActionMsgResponse :init)))

(setf (get planning::PickActionMsgRequest :md5sum-) "3ab27bcdd62db4306af656bdabcd225b")
(setf (get planning::PickActionMsgRequest :datatype-) "planning/PickActionMsgRequest")
(setf (get planning::PickActionMsgRequest :definition-)
      "string book_name
float64 x
float64 y
string orientation
---
float64 result

")

(setf (get planning::PickActionMsgResponse :md5sum-) "3ab27bcdd62db4306af656bdabcd225b")
(setf (get planning::PickActionMsgResponse :datatype-) "planning/PickActionMsgResponse")
(setf (get planning::PickActionMsgResponse :definition-)
      "string book_name
float64 x
float64 y
string orientation
---
float64 result

")



(provide :planning/PickActionMsg "3ab27bcdd62db4306af656bdabcd225b")


