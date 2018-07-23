(define (f n)
  (cond ((< n 3) n)
    (else (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3)))))

(f 3)
(f 4)
(f 5)

; use iterator
(define (f-iterator a b c n)
  (if (< n 3)
    c
    (f-iterator b c (+ c (* 2 b) (* 3 a)) (- n 1))))

(define (fi n) (f-iterator 0 1 2 n))
(fi 4)
