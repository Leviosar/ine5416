(defun abss (x)
  (if (< x 0)
    (- x)
  x)
)
(defun main()
  (write (write-to-string (abss (read))))
)
(main)