; Hello.lisp
;
; A LISP program that displays the message, "Hello, world!" to
; the command line
;
; NCU.edu
; School of Technology & Engineering
; TIM6110
;
; Author: Patrick Swafford
; Date: 15 January 2023

(defun main()
    (setq message "Hello, world!")
    (princ message)
)

(main)