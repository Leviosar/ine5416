(defun ocurrences (l n)
  (cond 
    ((null l) 0)
    ((= (car l) n) (+ (ocurrences (cdr l) n)) 1)
    ((= 1 1) (ocurrences (cdr l) n))
  )
)

(write-line(write-to-string(ocurrences '(1 2 3 4 5 6) 7)))
(write-line(write-to-string(ocurrences '(1 2 3 4 4 4 4 5 6) 4)))