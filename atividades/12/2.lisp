(defun len (l)
  (if (null l)
    0
    (+ 1 (len (cdr l)))
  )
)

(defun sum (l)
  (if (null l)
    0
    (+ (car l) (sum (cdr l)))
  )
)

(defun average (l)
  (/ (sum l) (len l))
)

(write(write-to-string(average '(1 2 3 4 5))))