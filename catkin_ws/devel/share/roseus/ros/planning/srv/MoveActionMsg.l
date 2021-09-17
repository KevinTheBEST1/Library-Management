;; Auto-generated. Do not edit!


(when (boundp 'planning::MoveActionMsg)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'MoveActionMsg (find-package "PLANNING")))
(unless (find-package "PLANNING::MOVEACTIONMSG")
  (make-package "PLANNING::MOVEACTIONMSG"))
(unless (find-package "PLANNING::MOVEACTIONMSGREQUEST")
  (make-package "PLANNING::MOVEACTIONMSGREQUEST"))
(unless (find-package "PLANNING::MOVEACTIONMSGRESPONSE")
  (make-package "PLANNING::MOVEACTIONMSGRESPONSE"))

(in-package "ROS")





(defclass planning::MoveActionMsgRequest
  :super ros::object
  :slots (_actions ))

(defmethod planning::MoveActionMsgRequest
  (:init
   (&key
    ((:actions __actions) "")
    )
   (send-super :init)
   (setq _actions (string __actions))
   self)
  (:actions
   (&optional __actions)
   (if __actions (setq _actions __actions)) _actions)
  (:serialization-length
   ()
   (+
    ;; string _actions
    4 (length _actions)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _actions
       (write-long (length _actions) s) (princ _actions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _actions
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actions (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planning::MoveActionMsgResponse
  :super ros::object
  :slots (_success ))

(defmethod planning::MoveActionMsgResponse
  (:init
   (&key
    ((:success __success) 0.0)
    )
   (send-super :init)
   (setq _success (float __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _success
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _success
       (sys::poke _success (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _success
     (setq _success (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass planning::MoveActionMsg
  :super ros::object
  :slots ())

(setf (get planning::MoveActionMsg :md5sum-) "fb4acfe02b85918b96aa76c50ea0a96e")
(setf (get planning::MoveActionMsg :datatype-) "planning/MoveActionMsg")
(setf (get planning::MoveActionMsg :request) planning::MoveActionMsgRequest)
(setf (get planning::MoveActionMsg :response) planning::MoveActionMsgResponse)

(defmethod planning::MoveActionMsgRequest
  (:response () (instance planning::MoveActionMsgResponse :init)))

(setf (get planning::MoveActionMsgRequest :md5sum-) "fb4acfe02b85918b96aa76c50ea0a96e")
(setf (get planning::MoveActionMsgRequest :datatype-) "planning/MoveActionMsgRequest")
(setf (get planning::MoveActionMsgRequest :definition-)
      "string actions
---
float64 success
")

(setf (get planning::MoveActionMsgResponse :md5sum-) "fb4acfe02b85918b96aa76c50ea0a96e")
(setf (get planning::MoveActionMsgResponse :datatype-) "planning/MoveActionMsgResponse")
(setf (get planning::MoveActionMsgResponse :definition-)
      "string actions
---
float64 success
")



(provide :planning/MoveActionMsg "fb4acfe02b85918b96aa76c50ea0a96e")


