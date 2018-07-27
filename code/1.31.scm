(define (product n) (/ (* 1.0 (- n 1) (+ n 1)) (* n n)))
(define (factorial k n)
  (if (> k n)
    1.0
    (* (product k) (factorial (+ k 2) n))))

(factorial 3 6)

(define (f n)
  (define (iter a r)
    (if (> a n)
      r
      (iter (+ a 2) (* r (product a)))))
  (iter 3 1.0))

(f 1000)
