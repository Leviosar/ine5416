(defun menor (l)
    (cond ((null l) 0)
          ((<= (car l) (menor (cdr l))) (car l))
          ((= 1 1) (menor (cdr l)))
    )
)

(write(write-to-string(menor '())))