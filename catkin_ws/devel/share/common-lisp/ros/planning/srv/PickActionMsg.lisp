; Auto-generated. Do not edit!


(cl:in-package planning-srv)


;//! \htmlinclude PickActionMsg-request.msg.html

(cl:defclass <PickActionMsg-request> (roslisp-msg-protocol:ros-message)
  ((book_name
    :reader book_name
    :initarg :book_name
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:string
    :initform ""))
)

(cl:defclass PickActionMsg-request (<PickActionMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickActionMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickActionMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<PickActionMsg-request> is deprecated: use planning-srv:PickActionMsg-request instead.")))

(cl:ensure-generic-function 'book_name-val :lambda-list '(m))
(cl:defmethod book_name-val ((m <PickActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:book_name-val is deprecated.  Use planning-srv:book_name instead.")
  (book_name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PickActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:x-val is deprecated.  Use planning-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PickActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:y-val is deprecated.  Use planning-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <PickActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:orientation-val is deprecated.  Use planning-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickActionMsg-request>) ostream)
  "Serializes a message object of type '<PickActionMsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'book_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'book_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'orientation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickActionMsg-request>) istream)
  "Deserializes a message object of type '<PickActionMsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'book_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'book_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orientation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'orientation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickActionMsg-request>)))
  "Returns string type for a service object of type '<PickActionMsg-request>"
  "planning/PickActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickActionMsg-request)))
  "Returns string type for a service object of type 'PickActionMsg-request"
  "planning/PickActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickActionMsg-request>)))
  "Returns md5sum for a message object of type '<PickActionMsg-request>"
  "3ab27bcdd62db4306af656bdabcd225b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickActionMsg-request)))
  "Returns md5sum for a message object of type 'PickActionMsg-request"
  "3ab27bcdd62db4306af656bdabcd225b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickActionMsg-request>)))
  "Returns full string definition for message of type '<PickActionMsg-request>"
  (cl:format cl:nil "string book_name~%float64 x~%float64 y~%string orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickActionMsg-request)))
  "Returns full string definition for message of type 'PickActionMsg-request"
  (cl:format cl:nil "string book_name~%float64 x~%float64 y~%string orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickActionMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'book_name))
     8
     8
     4 (cl:length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickActionMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PickActionMsg-request
    (cl:cons ':book_name (book_name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':orientation (orientation msg))
))
;//! \htmlinclude PickActionMsg-response.msg.html

(cl:defclass <PickActionMsg-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass PickActionMsg-response (<PickActionMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickActionMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickActionMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<PickActionMsg-response> is deprecated: use planning-srv:PickActionMsg-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PickActionMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:result-val is deprecated.  Use planning-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickActionMsg-response>) ostream)
  "Serializes a message object of type '<PickActionMsg-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickActionMsg-response>) istream)
  "Deserializes a message object of type '<PickActionMsg-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickActionMsg-response>)))
  "Returns string type for a service object of type '<PickActionMsg-response>"
  "planning/PickActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickActionMsg-response)))
  "Returns string type for a service object of type 'PickActionMsg-response"
  "planning/PickActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickActionMsg-response>)))
  "Returns md5sum for a message object of type '<PickActionMsg-response>"
  "3ab27bcdd62db4306af656bdabcd225b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickActionMsg-response)))
  "Returns md5sum for a message object of type 'PickActionMsg-response"
  "3ab27bcdd62db4306af656bdabcd225b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickActionMsg-response>)))
  "Returns full string definition for message of type '<PickActionMsg-response>"
  (cl:format cl:nil "float64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickActionMsg-response)))
  "Returns full string definition for message of type 'PickActionMsg-response"
  (cl:format cl:nil "float64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickActionMsg-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickActionMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PickActionMsg-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PickActionMsg)))
  'PickActionMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PickActionMsg)))
  'PickActionMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickActionMsg)))
  "Returns string type for a service object of type '<PickActionMsg>"
  "planning/PickActionMsg")