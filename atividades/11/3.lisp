(defun area (base altura)
    (/ (* base altura) 2)
)

(defun main ()
    (write-line "Insira a base")
    (setq base (read))
    (write-line "Insira a altura")
    (setq altura (read))
    (write (write-to-string (area base altura)))
)
    
(main)