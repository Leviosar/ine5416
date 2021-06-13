(defun main ()
    (write-line "Insira X")
    (setq x (read))
    (write-line "Insira Y")
    (setq y (read))
    (write (write-to-string ((lambda (x y) (or (and x y) (and (not x) (not y)))) x y)))
)

(main)