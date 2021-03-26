(defun soma (l)
  (if (null l)
    0
    (+ (car l) (soma (cdr l)))
  )
)
