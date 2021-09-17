; Auto-generated. Do not edit!


(cl:in-package planning-srv)


;//! \htmlinclude PlaceActionMsg-request.msg.html

(cl:defclass <PlaceActionMsg-request> (roslisp-msg-protocol:ros-message)
  ((book_name
    :reader book_name
    :initarg :book_name
    :type cl:string
    :initform "")
   (bin_name
    :reader bin_name
    :initarg :bin_name
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

(cl:defclass PlaceActionMsg-request (<PlaceActionMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaceActionMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaceActionMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<PlaceActionMsg-request> is deprecated: use planning-srv:PlaceActionMsg-request instead.")))

(cl:ensure-generic-function 'book_name-val :lambda-list '(m))
(cl:defmethod book_name-val ((m <PlaceActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:book_name-val is deprecated.  Use planning-srv:book_name instead.")
  (book_name m))

(cl:ensure-generic-function 'bin_name-val :lambda-list '(m))
(cl:defmethod bin_name-val ((m <PlaceActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:bin_name-val is deprecated.  Use planning-srv:bin_name instead.")
  (bin_name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PlaceActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:x-val is deprecated.  Use planning-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PlaceActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:y-val is deprecated.  Use planning-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <PlaceActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:orientation-val is deprecated.  Use planning-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaceActionMsg-request>) ostream)
  "Serializes a message object of type '<PlaceActionMsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'book_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'book_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bin_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bin_name))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaceActionMsg-request>) istream)
  "Deserializes a message object of type '<PlaceActionMsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'book_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'book_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bin_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bin_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaceActionMsg-request>)))
  "Returns string type for a service object of type '<PlaceActionMsg-request>"
  "planning/PlaceActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaceActionMsg-request)))
  "Returns string type for a service object of type 'PlaceActionMsg-request"
  "planning/PlaceActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaceActionMsg-request>)))
  "Returns md5sum for a message object of type '<PlaceActionMsg-request>"
  "21274a3fa6a4a3f1484b941e2e263033")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaceActionMsg-request)))
  "Returns md5sum for a message object of type 'PlaceActionMsg-request"
  "21274a3fa6a4a3f1484b941e2e263033")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaceActionMsg-request>)))
  "Returns full string definition for message of type '<PlaceActionMsg-request>"
  (cl:format cl:nil "string book_name~%string bin_name~%float64 x~%float64 y~%string orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaceActionMsg-request)))
  "Returns full string definition for message of type 'PlaceActionMsg-request"
  (cl:format cl:nil "string book_name~%string bin_name~%float64 x~%float64 y~%string orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaceActionMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'book_name))
     4 (cl:length (cl:slot-value msg 'bin_name))
     8
     8
     4 (cl:length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaceActionMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaceActionMsg-request
    (cl:cons ':book_name (book_name msg))
    (cl:cons ':bin_name (bin_name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':orientation (orientation msg))
))
;//! \htmlinclude PlaceActionMsg-response.msg.html

(cl:defclass <PlaceActionMsg-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlaceActionMsg-response (<PlaceActionMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaceActionMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaceActionMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<PlaceActionMsg-response> is deprecated: use planning-srv:PlaceActionMsg-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PlaceActionMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:result-val is deprecated.  Use planning-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaceActionMsg-response>) ostream)
  "Serializes a message object of type '<PlaceActionMsg-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaceActionMsg-response>) istream)
  "Deserializes a message object of type '<PlaceActionMsg-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaceActionMsg-response>)))
  "Returns string type for a service object of type '<PlaceActionMsg-response>"
  "planning/PlaceActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaceActionMsg-response)))
  "Returns string type for a service object of type 'PlaceActionMsg-response"
  "planning/PlaceActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaceActionMsg-response>)))
  "Returns md5sum for a message object of type '<PlaceActionMsg-response>"
  "21274a3fa6a4a3f1484b941e2e263033")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaceActionMsg-response)))
  "Returns md5sum for a message object of type 'PlaceActionMsg-response"
  "21274a3fa6a4a3f1484b941e2e263033")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaceActionMsg-response>)))
  "Returns full string definition for message of type '<PlaceActionMsg-response>"
  (cl:format cl:nil "float64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaceActionMsg-response)))
  "Returns full string definition for message of type 'PlaceActionMsg-response"
  (cl:format cl:nil "float64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaceActionMsg-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaceActionMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaceActionMsg-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlaceActionMsg)))
  'PlaceActionMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlaceActionMsg)))
  'PlaceActionMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaceActionMsg)))
  "Returns string type for a service object of type '<PlaceActionMsg>"
  "planning/PlaceActionMsg")