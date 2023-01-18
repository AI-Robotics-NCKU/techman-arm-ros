; Auto-generated. Do not edit!


(cl:in-package wzh_realsense-msg)


;//! \htmlinclude vision.msg.html

(cl:defclass <vision> (roslisp-msg-protocol:ros-message)
  ((pitch
    :reader pitch
    :initarg :pitch
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:integer
    :initform 0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass vision (<vision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wzh_realsense-msg:<vision> is deprecated: use wzh_realsense-msg:vision instead.")))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <vision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzh_realsense-msg:pitch-val is deprecated.  Use wzh_realsense-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <vision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzh_realsense-msg:yaw-val is deprecated.  Use wzh_realsense-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <vision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzh_realsense-msg:roll-val is deprecated.  Use wzh_realsense-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <vision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzh_realsense-msg:distance-val is deprecated.  Use wzh_realsense-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vision>) ostream)
  "Serializes a message object of type '<vision>"
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vision>) istream)
  "Deserializes a message object of type '<vision>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vision>)))
  "Returns string type for a message object of type '<vision>"
  "wzh_realsense/vision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vision)))
  "Returns string type for a message object of type 'vision"
  "wzh_realsense/vision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vision>)))
  "Returns md5sum for a message object of type '<vision>"
  "5de51d9587f4b0696dfe0112f866aaf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vision)))
  "Returns md5sum for a message object of type 'vision"
  "5de51d9587f4b0696dfe0112f866aaf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vision>)))
  "Returns full string definition for message of type '<vision>"
  (cl:format cl:nil "int32 pitch~%int32 yaw~%int32 roll~%int32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vision)))
  "Returns full string definition for message of type 'vision"
  (cl:format cl:nil "int32 pitch~%int32 yaw~%int32 roll~%int32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vision>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vision>))
  "Converts a ROS message object to a list"
  (cl:list 'vision
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':distance (distance msg))
))
