; Sentence_Reversinator.lisp
;
; A LISP program that prompts the user for a sentence
; then displays the words in reverse order
; 
; NCU.edu
; School of Technology & Engineering
; TIM6110
;
; Author: Patrick Swafford
; Date: 15 January 2023

(defun string-to-list (string)
  (let ((len (length string))    ; Get the length of the input string
        (i 0)                    ; Initialize counter variable i
        (start 0)                ; Initialize starting index for current word
        (list '()))              ; Initialize empty list
    (loop while (< i len)        ; Loop through each character in the string
          do (if (not (char= (aref string i) #\Space))  ; Check if current character is not a space
                 (progn (setq i (1+ i)) )              ; If not, increment i
                 (progn (setq list (cons (subseq string start i) list)) ; If space, add word to list
                        (setq start (1+ i))  ; set new starting index
                        (setq i (1+ i))))    ; increment i
          finally (return (cons (subseq string start i) list))) ; return the list of words
))

(defun main()
    (setq message "Enter a sentence: ")  ; ask user to input a sentence
    (princ message)                      ; print the message
    (setq input (read-line))             ; read the input as a string
    (setq word-list (string-to-list input)) ; convert the input string to list of words
    (princ word-list)                    ; print the list of words
)

(main)                                  ; call the main function to start the program
