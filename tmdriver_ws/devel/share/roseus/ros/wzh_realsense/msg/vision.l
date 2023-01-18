;; Auto-generated. Do not edit!


(when (boundp 'wzh_realsense::vision)
  (if (not (find-package "WZH_REALSENSE"))
    (make-package "WZH_REALSENSE"))
  (shadow 'vision (find-package "WZH_REALSENSE")))
(unless (find-package "WZH_REALSENSE::VISION")
  (make-package "WZH_REALSENSE::VISION"))

(in-package "ROS")
;;//! \htmlinclude vision.msg.html


(defclass wzh_realsense::vision
  :super ros::object
  :slots (_pitch _yaw _roll _distance ))

(defmethod wzh_realsense::vision
  (:init
   (&key
    ((:pitch __pitch) 0)
    ((:yaw __yaw) 0)
    ((:roll __roll) 0)
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _pitch (round __pitch))
   (setq _yaw (round __yaw))
   (setq _roll (round __roll))
   (setq _distance (round __distance))
   self)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _pitch
    4
    ;; int32 _yaw
    4
    ;; int32 _roll
    4
    ;; int32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pitch
       (write-long _pitch s)
     ;; int32 _yaw
       (write-long _yaw s)
     ;; int32 _roll
       (write-long _roll s)
     ;; int32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pitch
     (setq _pitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _yaw
     (setq _yaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _roll
     (setq _roll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wzh_realsense::vision :md5sum-) "5de51d9587f4b0696dfe0112f866aaf0")
(setf (get wzh_realsense::vision :datatype-) "wzh_realsense/vision")
(setf (get wzh_realsense::vision :definition-)
      "int32 pitch
int32 yaw
int32 roll
int32 distance
")



(provide :wzh_realsense/vision "5de51d9587f4b0696dfe0112f866aaf0")


