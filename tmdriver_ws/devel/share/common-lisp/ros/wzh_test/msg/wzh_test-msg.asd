
(cl:in-package :asdf)

(defsystem "wzh_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pose" :depends-on ("_package_pose"))
    (:file "_package_pose" :depends-on ("_package"))
    (:file "vision" :depends-on ("_package_vision"))
    (:file "_package_vision" :depends-on ("_package"))
  ))