; CFTC.lisp [convert_fahrenheit_to_celsius]
;
; A LISP program that prompts the user for a temperature in Fahrenheit,
; converts the temperature to Celsius, and displays the result to the
; screen.
;
; NCU.edu
; School of Technology & Engineering
; TIM6110
;
; Author: Patrick Swafford
; Date: 15 January 2023

(defun main()
    (setq message "Enter the temperature in Fahrenheit: ")
    (princ message)
    (setq fahrenheit (read))
    (princ (* (- fahrenheit 32) (/ 5 9.0)))
    (princ " degrees celsius")
)

(main)