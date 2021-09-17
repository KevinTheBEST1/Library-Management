; Auto-generated. Do not edit!


(cl:in-package planning-srv)


;//! \htmlinclude MoveActionMsg-request.msg.html

(cl:defclass <MoveActionMsg-request> (roslisp-msg-protocol:ros-message)
  ((actions
    :reader actions
    :initarg :actions
    :type cl:string
    :initform ""))
)

(cl:defclass MoveActionMsg-request (<MoveActionMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveActionMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveActionMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<MoveActionMsg-request> is deprecated: use planning-srv:MoveActionMsg-request instead.")))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <MoveActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:actions-val is deprecated.  Use planning-srv:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveActionMsg-request>) ostream)
  "Serializes a message object of type '<MoveActionMsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveActionMsg-request>) istream)
  "Deserializes a message object of type '<MoveActionMsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actions) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actions) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveActionMsg-request>)))
  "Returns string type for a service object of type '<MoveActionMsg-request>"
  "planning/MoveActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveActionMsg-request)))
  "Returns string type for a service object of type 'MoveActionMsg-request"
  "planning/MoveActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveActionMsg-request>)))
  "Returns md5sum for a message object of type '<MoveActionMsg-request>"
  "fb4acfe02b85918b96aa76c50ea0a96e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveActionMsg-request)))
  "Returns md5sum for a message object of type 'MoveActionMsg-request"
  "fb4acfe02b85918b96aa76c50ea0a96e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveActionMsg-request>)))
  "Returns full string definition for message of type '<MoveActionMsg-request>"
  (cl:format cl:nil "string actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveActionMsg-request)))
  "Returns full string definition for message of type 'MoveActionMsg-request"
  (cl:format cl:nil "string actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveActionMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'actions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveActionMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveActionMsg-request
    (cl:cons ':actions (actions msg))
))
;//! \htmlinclude MoveActionMsg-response.msg.html

(cl:defclass <MoveActionMsg-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveActionMsg-response (<MoveActionMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveActionMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveActionMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-srv:<MoveActionMsg-response> is deprecated: use planning-srv:MoveActionMsg-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveActionMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-srv:success-val is deprecated.  Use planning-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveActionMsg-response>) ostream)
  "Serializes a message object of type '<MoveActionMsg-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'success))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveActionMsg-response>) istream)
  "Deserializes a message object of type '<MoveActionMsg-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveActionMsg-response>)))
  "Returns string type for a service object of type '<MoveActionMsg-response>"
  "planning/MoveActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveActionMsg-response)))
  "Returns string type for a service object of type 'MoveActionMsg-response"
  "planning/MoveActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveActionMsg-response>)))
  "Returns md5sum for a message object of type '<MoveActionMsg-response>"
  "fb4acfe02b85918b96aa76c50ea0a96e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveActionMsg-response)))
  "Returns md5sum for a message object of type 'MoveActionMsg-response"
  "fb4acfe02b85918b96aa76c50ea0a96e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveActionMsg-response>)))
  "Returns full string definition for message of type '<MoveActionMsg-response>"
  (cl:format cl:nil "float64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveActionMsg-response)))
  "Returns full string definition for message of type 'MoveActionMsg-response"
  (cl:format cl:nil "float64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveActionMsg-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveActionMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveActionMsg-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveActionMsg)))
  'MoveActionMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveActionMsg)))
  'MoveActionMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveActionMsg)))
  "Returns string type for a service object of type '<MoveActionMsg>"
  "planning/MoveActionMsg")