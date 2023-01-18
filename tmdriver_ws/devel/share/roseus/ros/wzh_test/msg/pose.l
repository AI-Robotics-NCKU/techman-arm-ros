;; Auto-generated. Do not edit!


(when (boundp 'wzh_test::pose)
  (if (not (find-package "WZH_TEST"))
    (make-package "WZH_TEST"))
  (shadow 'pose (find-package "WZH_TEST")))
(unless (find-package "WZH_TEST::POSE")
  (make-package "WZH_TEST::POSE"))

(in-package "ROS")
;;//! \htmlinclude pose.msg.html


(defclass wzh_test::pose
  :super ros::object
  :slots (_pose ))

(defmethod wzh_test::pose
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:serialization-length
   ()
   (+
    ;; float64[] _pose
    (* 8    (length _pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get wzh_test::pose :md5sum-) "76249fb45cba333e6a82c7f91cfe1879")
(setf (get wzh_test::pose :datatype-) "wzh_test/pose")
(setf (get wzh_test::pose :definition-)
      "float64[] pose

")



(provide :wzh_test/pose "76249fb45cba333e6a82c7f91cfe1879")


