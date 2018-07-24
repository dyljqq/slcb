(define (even? x) (= (remainder x 2) 0))

(define (fast-expt b n) (fast-expt-iter b n b))

(define (square x) (* x x))

(define (fast-expt-iter b counter product)
  (if (< (/ counter 2) 1)
    b
    (if (even? counter)
      (fast-expt-iter (square b) (/ counter 2) product)
      (fast-expt-iter (* b product) (- counter 1) product))))

(fast-expt 2 4)
