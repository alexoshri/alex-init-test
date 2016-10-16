; Auto-generated. Do not edit!


(cl:in-package keyboard_controller-msg)


;//! \htmlinclude ImageCalc.msg.html

(cl:defclass <ImageCalc> (roslisp-msg-protocol:ros-message)
  ((shift
    :reader shift
    :initarg :shift
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ImageCalc (<ImageCalc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageCalc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageCalc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name keyboard_controller-msg:<ImageCalc> is deprecated: use keyboard_controller-msg:ImageCalc instead.")))

(cl:ensure-generic-function 'shift-val :lambda-list '(m))
(cl:defmethod shift-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader keyboard_controller-msg:shift-val is deprecated.  Use keyboard_controller-msg:shift instead.")
  (shift m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader keyboard_controller-msg:angle-val is deprecated.  Use keyboard_controller-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageCalc>) ostream)
  "Serializes a message object of type '<ImageCalc>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageCalc>) istream)
  "Deserializes a message object of type '<ImageCalc>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageCalc>)))
  "Returns string type for a message object of type '<ImageCalc>"
  "keyboard_controller/ImageCalc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageCalc)))
  "Returns string type for a message object of type 'ImageCalc"
  "keyboard_controller/ImageCalc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageCalc>)))
  "Returns md5sum for a message object of type '<ImageCalc>"
  "3746b94126572c0f0c57557a78bc178d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageCalc)))
  "Returns md5sum for a message object of type 'ImageCalc"
  "3746b94126572c0f0c57557a78bc178d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageCalc>)))
  "Returns full string definition for message of type '<ImageCalc>"
  (cl:format cl:nil "float32 shift~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageCalc)))
  "Returns full string definition for message of type 'ImageCalc"
  (cl:format cl:nil "float32 shift~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageCalc>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageCalc>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageCalc
    (cl:cons ':shift (shift msg))
    (cl:cons ':angle (angle msg))
))
