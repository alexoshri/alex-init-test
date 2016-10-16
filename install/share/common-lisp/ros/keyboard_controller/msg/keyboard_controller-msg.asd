
(cl:in-package :asdf)

(defsystem "keyboard_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ImageCalc" :depends-on ("_package_ImageCalc"))
    (:file "_package_ImageCalc" :depends-on ("_package"))
  ))