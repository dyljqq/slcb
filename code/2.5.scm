(define (cons x y)
    (* (expt 2 x)
        (expt 3 y)))

(define (car z)
    (if (= (remainder z 2) 0)
        (+ 1 (car (/ z 2)))
        0))

(define (cdr z)
    (if (= (remainder z 3) 0)
        (+ 1 (car (/ z 3)))
        0))

; test
(cons 2 3)
(car (cons 2 3))
(cdr (cons 2 3))