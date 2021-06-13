(defun contains (l n)
  (cond 
    ((null l) NIL)
    ((= (car l) n) T)
    ((= 1 1) (contains (cdr l) n))
  )
)

(write-line(write-to-string(contains '(1 2 3 4 5 6) 7)))
(write-line(write-to-string(contains '(1 2 3 4 5 6) 4)))