(defun aval (a b c)
    (if (>= (/ (+ (+ a b) c) 3) 6.0)
        "Aprovado"
        "Reprovado"
    )
)

(defun main ()
    (write-line "Insira a primeira nota")
    (setq x (read))
    (write-line "Insira a segunda nota")
    (setq y (read))
    (write-line "Insira a terceira")
    (setq z (read))
    (write (write-to-string (aval x y z)))
)
    
(main)