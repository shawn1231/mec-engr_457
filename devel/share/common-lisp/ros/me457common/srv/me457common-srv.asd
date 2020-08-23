
(cl:in-package :asdf)

(defsystem "me457common-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StepperServer" :depends-on ("_package_StepperServer"))
    (:file "_package_StepperServer" :depends-on ("_package"))
  ))