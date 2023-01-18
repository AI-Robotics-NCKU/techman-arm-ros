; Auto-generated. Do not edit!


(cl:in-package wzh_test-msg)


;//! \htmlinclude pose.msg.html

(cl:defclass <pose> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass pose (<pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wzh_test-msg:<pose> is deprecated: use wzh_test-msg:pose instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzh_test-msg:pose-val is deprecated.  Use wzh_test-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose>) ostream)
  "Serializes a message object of type '<pose>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose>) istream)
  "Deserializes a message object of type '<pose>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose>)))
  "Returns string type for a message object of type '<pose>"
  "wzh_test/pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose)))
  "Returns string type for a message object of type 'pose"
  "wzh_test/pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose>)))
  "Returns md5sum for a message object of type '<pose>"
  "76249fb45cba333e6a82c7f91cfe1879")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose)))
  "Returns md5sum for a message object of type 'pose"
  "76249fb45cba333e6a82c7f91cfe1879")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose>)))
  "Returns full string definition for message of type '<pose>"
  (cl:format cl:nil "float64[] pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose)))
  "Returns full string definition for message of type 'pose"
  (cl:format cl:nil "float64[] pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose>))
  "Converts a ROS message object to a list"
  (cl:list 'pose
    (cl:cons ':pose (pose msg))
))
