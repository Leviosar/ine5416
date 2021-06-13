(defstruct ponto
    x
    y
)

(defun distancia (p1 p2)
    (setq xizes (expt (- (ponto-x p1) (ponto-x p2)) 2))
    (setq yizes (expt (- (ponto-y p1) (ponto-y p2)) 2))
    (sqrt (+ xizes yizes))
)

(defun main ()
    (setq p1
        (make-ponto
            :x 1
            :y 2
        )
    )

    (setq p2
        (make-ponto
            :x 3
            :y 6
        )
    )

    (write-line(write-to-string (distancia p1 p2)))
)

(main)