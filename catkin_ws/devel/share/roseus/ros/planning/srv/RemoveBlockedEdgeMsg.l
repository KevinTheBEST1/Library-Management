;; Auto-generated. Do not edit!


(when (boundp 'planning::RemoveBlockedEdgeMsg)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'RemoveBlockedEdgeMsg (find-package "PLANNING")))
(unless (find-package "PLANNING::REMOVEBLOCKEDEDGEMSG")
  (make-package "PLANNING::REMOVEBLOCKEDEDGEMSG"))
(unless (find-package "PLANNING::REMOVEBLOCKEDEDGEMSGREQUEST")
  (make-package "PLANNING::REMOVEBLOCKEDEDGEMSGREQUEST"))
(unless (find-package "PLANNING::REMOVEBLOCKEDEDGEMSGRESPONSE")
  (make-package "PLANNING::REMOVEBLOCKEDEDGEMSGRESPONSE"))

(in-package "ROS")





(defclass planning::RemoveBlockedEdgeMsgRequest
  :super ros::object
  :slots (_bookname ))

(defmethod planning::RemoveBlockedEdgeMsgRequest
  (:init
   (&key
    ((:bookname __bookname) "")
    )
   (send-super :init)
   (setq _bookname (string __bookname))
   self)
  (:bookname
   (&optional __bookname)
   (if __bookname (setq _bookname __bookname)) _bookname)
  (:serialization-length
   ()
   (+
    ;; string _bookname
    4 (length _bookname)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bookname
       (write-long (length _bookname) s) (princ _bookname s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bookname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bookname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planning::RemoveBlockedEdgeMsgResponse
  :super ros::object
  :slots (_success ))

(defmethod planning::RemoveBlockedEdgeMsgResponse
  (:init
   (&key
    ((:success __success) "")
    )
   (send-super :init)
   (setq _success (string __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _success
    4 (length _success)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _success
       (write-long (length _success) s) (princ _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _success
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _success (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planning::RemoveBlockedEdgeMsg
  :super ros::object
  :slots ())

(setf (get planning::RemoveBlockedEdgeMsg :md5sum-) "c991829b35c0398c16705137e62ce3d7")
(setf (get planning::RemoveBlockedEdgeMsg :datatype-) "planning/RemoveBlockedEdgeMsg")
(setf (get planning::RemoveBlockedEdgeMsg :request) planning::RemoveBlockedEdgeMsgRequest)
(setf (get planning::RemoveBlockedEdgeMsg :response) planning::RemoveBlockedEdgeMsgResponse)

(defmethod planning::RemoveBlockedEdgeMsgRequest
  (:response () (instance planning::RemoveBlockedEdgeMsgResponse :init)))

(setf (get planning::RemoveBlockedEdgeMsgRequest :md5sum-) "c991829b35c0398c16705137e62ce3d7")
(setf (get planning::RemoveBlockedEdgeMsgRequest :datatype-) "planning/RemoveBlockedEdgeMsgRequest")
(setf (get planning::RemoveBlockedEdgeMsgRequest :definition-)
      "string bookname
---
string success
")

(setf (get planning::RemoveBlockedEdgeMsgResponse :md5sum-) "c991829b35c0398c16705137e62ce3d7")
(setf (get planning::RemoveBlockedEdgeMsgResponse :datatype-) "planning/RemoveBlockedEdgeMsgResponse")
(setf (get planning::RemoveBlockedEdgeMsgResponse :definition-)
      "string bookname
---
string success
")



(provide :planning/RemoveBlockedEdgeMsg "c991829b35c0398c16705137e62ce3d7")


