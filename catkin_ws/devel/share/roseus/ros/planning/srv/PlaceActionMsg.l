;; Auto-generated. Do not edit!


(when (boundp 'planning::PlaceActionMsg)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'PlaceActionMsg (find-package "PLANNING")))
(unless (find-package "PLANNING::PLACEACTIONMSG")
  (make-package "PLANNING::PLACEACTIONMSG"))
(unless (find-package "PLANNING::PLACEACTIONMSGREQUEST")
  (make-package "PLANNING::PLACEACTIONMSGREQUEST"))
(unless (find-package "PLANNING::PLACEACTIONMSGRESPONSE")
  (make-package "PLANNING::PLACEACTIONMSGRESPONSE"))

(in-package "ROS")





(defclass planning::PlaceActionMsgRequest
  :super ros::object
  :slots (_book_name _bin_name _x _y _orientation ))

(defmethod planning::PlaceActionMsgRequest
  (:init
   (&key
    ((:book_name __book_name) "")
    ((:bin_name __bin_name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:orientation __orientation) "")
    )
   (send-super :init)
   (setq _book_name (string __book_name))
   (setq _bin_name (string __bin_name))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _orientation (string __orientation))
   self)
  (:book_name
   (&optional __book_name)
   (if __book_name (setq _book_name __book_name)) _book_name)
  (:bin_name
   (&optional __bin_name)
   (if __bin_name (setq _bin_name __bin_name)) _bin_name)
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
    ;; string _bin_name
    4 (length _bin_name)
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
     ;; string _bin_name
       (write-long (length _bin_name) s) (princ _bin_name s)
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
   ;; string _bin_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bin_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _orientation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orientation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planning::PlaceActionMsgResponse
  :super ros::object
  :slots (_result ))

(defmethod planning::PlaceActionMsgResponse
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

(defclass planning::PlaceActionMsg
  :super ros::object
  :slots ())

(setf (get planning::PlaceActionMsg :md5sum-) "21274a3fa6a4a3f1484b941e2e263033")
(setf (get planning::PlaceActionMsg :datatype-) "planning/PlaceActionMsg")
(setf (get planning::PlaceActionMsg :request) planning::PlaceActionMsgRequest)
(setf (get planning::PlaceActionMsg :response) planning::PlaceActionMsgResponse)

(defmethod planning::PlaceActionMsgRequest
  (:response () (instance planning::PlaceActionMsgResponse :init)))

(setf (get planning::PlaceActionMsgRequest :md5sum-) "21274a3fa6a4a3f1484b941e2e263033")
(setf (get planning::PlaceActionMsgRequest :datatype-) "planning/PlaceActionMsgRequest")
(setf (get planning::PlaceActionMsgRequest :definition-)
      "string book_name
string bin_name
float64 x
float64 y
string orientation
---
float64 result

")

(setf (get planning::PlaceActionMsgResponse :md5sum-) "21274a3fa6a4a3f1484b941e2e263033")
(setf (get planning::PlaceActionMsgResponse :datatype-) "planning/PlaceActionMsgResponse")
(setf (get planning::PlaceActionMsgResponse :definition-)
      "string book_name
string bin_name
float64 x
float64 y
string orientation
---
float64 result

")



(provide :planning/PlaceActionMsg "21274a3fa6a4a3f1484b941e2e263033")


