; Auto-generated. Do not edit!


(cl:in-package planning-srv)


;//! \htmlinclude GetSuccessor-request.msg.html

(cl:defclass <GetSuccessor-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass GetSuccessor-request (<GetSuccessor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSuccessor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSuccessor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<GetSuccessor-request> is deprecated: use planning-srv:GetSuccessor-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetSuccessor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:x-val is deprecated.  Use planning-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetSuccessor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:y-val is deprecated.  Use planning-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <GetSuccessor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:direction-val is deprecated.  Use planning-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <GetSuccessor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:action-val is deprecated.  Use planning-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSuccessor-request>) ostream)
  "Serializes a message object of type '<GetSuccessor-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSuccessor-request>) istream)
  "Deserializes a message object of type '<GetSuccessor-request>"
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
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSuccessor-request>)))
  "Returns string type for a service object of type '<GetSuccessor-request>"
  "planning/GetSuccessorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSuccessor-request)))
  "Returns string type for a service object of type 'GetSuccessor-request"
  "planning/GetSuccessorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSuccessor-request>)))
  "Returns md5sum for a message object of type '<GetSuccessor-request>"
  "3f69bbdba57b08f704b0827c3651a8d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSuccessor-request)))
  "Returns md5sum for a message object of type 'GetSuccessor-request"
  "3f69bbdba57b08f704b0827c3651a8d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSuccessor-request>)))
  "Returns full string definition for message of type '<GetSuccessor-request>"
  (cl:format cl:nil "float64 x~%float64 y~%string direction~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSuccessor-request)))
  "Returns full string definition for message of type 'GetSuccessor-request"
  (cl:format cl:nil "float64 x~%float64 y~%string direction~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSuccessor-request>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'direction))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSuccessor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSuccessor-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude GetSuccessor-response.msg.html

(cl:defclass <GetSuccessor-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (g_cost
    :reader g_cost
    :initarg :g_cost
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetSuccessor-response (<GetSuccessor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSuccessor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSuccessor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<GetSuccessor-response> is deprecated: use planning-srv:GetSuccessor-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetSuccessor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:x-val is deprecated.  Use planning-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetSuccessor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:y-val is deprecated.  Use planning-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <GetSuccessor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:direction-val is deprecated.  Use planning-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'g_cost-val :lambda-list '(m))
(cl:defmethod g_cost-val ((m <GetSuccessor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:g_cost-val is deprecated.  Use planning-srv:g_cost instead.")
  (g_cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSuccessor-response>) ostream)
  "Serializes a message object of type '<GetSuccessor-response>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'g_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSuccessor-response>) istream)
  "Deserializes a message object of type '<GetSuccessor-response>"
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
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'g_cost) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSuccessor-response>)))
  "Returns string type for a service object of type '<GetSuccessor-response>"
  "planning/GetSuccessorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSuccessor-response)))
  "Returns string type for a service object of type 'GetSuccessor-response"
  "planning/GetSuccessorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSuccessor-response>)))
  "Returns md5sum for a message object of type '<GetSuccessor-response>"
  "3f69bbdba57b08f704b0827c3651a8d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSuccessor-response)))
  "Returns md5sum for a message object of type 'GetSuccessor-response"
  "3f69bbdba57b08f704b0827c3651a8d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSuccessor-response>)))
  "Returns full string definition for message of type '<GetSuccessor-response>"
  (cl:format cl:nil "float64 x~%float64 y~%string direction~%float64 g_cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSuccessor-response)))
  "Returns full string definition for message of type 'GetSuccessor-response"
  (cl:format cl:nil "float64 x~%float64 y~%string direction~%float64 g_cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSuccessor-response>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'direction))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSuccessor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSuccessor-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':g_cost (g_cost msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSuccessor)))
  'GetSuccessor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSuccessor)))
  'GetSuccessor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSuccessor)))
  "Returns string type for a service object of type '<GetSuccessor>"
  "planning/GetSuccessor")