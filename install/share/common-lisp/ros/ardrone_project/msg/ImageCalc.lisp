; Auto-generated. Do not edit!


(cl:in-package ardrone_project-msg)


;//! \htmlinclude ImageCalc.msg.html

(cl:defclass <ImageCalc> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (is_visible
    :reader is_visible
    :initarg :is_visible
    :type cl:boolean
    :initform cl:nil)
   (shift
    :reader shift
    :initarg :shift
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (arrow_x
    :reader arrow_x
    :initarg :arrow_x
    :type cl:integer
    :initform 0)
   (arrow_y
    :reader arrow_y
    :initarg :arrow_y
    :type cl:integer
    :initform 0))
)

(cl:defclass ImageCalc (<ImageCalc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageCalc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageCalc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ardrone_project-msg:<ImageCalc> is deprecated: use ardrone_project-msg:ImageCalc instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_project-msg:time_stamp-val is deprecated.  Use ardrone_project-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'is_visible-val :lambda-list '(m))
(cl:defmethod is_visible-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_project-msg:is_visible-val is deprecated.  Use ardrone_project-msg:is_visible instead.")
  (is_visible m))

(cl:ensure-generic-function 'shift-val :lambda-list '(m))
(cl:defmethod shift-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_project-msg:shift-val is deprecated.  Use ardrone_project-msg:shift instead.")
  (shift m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_project-msg:angle-val is deprecated.  Use ardrone_project-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_project-msg:distance-val is deprecated.  Use ardrone_project-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'arrow_x-val :lambda-list '(m))
(cl:defmethod arrow_x-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_project-msg:arrow_x-val is deprecated.  Use ardrone_project-msg:arrow_x instead.")
  (arrow_x m))

(cl:ensure-generic-function 'arrow_y-val :lambda-list '(m))
(cl:defmethod arrow_y-val ((m <ImageCalc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_project-msg:arrow_y-val is deprecated.  Use ardrone_project-msg:arrow_y instead.")
  (arrow_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageCalc>) ostream)
  "Serializes a message object of type '<ImageCalc>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_stamp) (cl:floor (cl:slot-value msg 'time_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_visible) 1 0)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'arrow_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arrow_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageCalc>) istream)
  "Deserializes a message object of type '<ImageCalc>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'is_visible) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arrow_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arrow_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageCalc>)))
  "Returns string type for a message object of type '<ImageCalc>"
  "ardrone_project/ImageCalc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageCalc)))
  "Returns string type for a message object of type 'ImageCalc"
  "ardrone_project/ImageCalc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageCalc>)))
  "Returns md5sum for a message object of type '<ImageCalc>"
  "3afd21e3cae9a39680ff48a9777413f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageCalc)))
  "Returns md5sum for a message object of type 'ImageCalc"
  "3afd21e3cae9a39680ff48a9777413f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageCalc>)))
  "Returns full string definition for message of type '<ImageCalc>"
  (cl:format cl:nil "time time_stamp~%bool is_visible~%float32 shift~%float32 angle~%float32 distance~%int32 arrow_x~%int32 arrow_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageCalc)))
  "Returns full string definition for message of type 'ImageCalc"
  (cl:format cl:nil "time time_stamp~%bool is_visible~%float32 shift~%float32 angle~%float32 distance~%int32 arrow_x~%int32 arrow_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageCalc>))
  (cl:+ 0
     8
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageCalc>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageCalc
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':is_visible (is_visible msg))
    (cl:cons ':shift (shift msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':arrow_x (arrow_x msg))
    (cl:cons ':arrow_y (arrow_y msg))
))
