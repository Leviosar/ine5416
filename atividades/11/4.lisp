(defun xorin (x y)
    (or (and x y) (and (not x) (not y)))
)

(defun main ()
    (write-line "Insira X")
    (setq x (read))
    (write-line "Insira Y")
    (setq y (read))
    (write (write-to-string (xorin x y)))
)
    
(main)