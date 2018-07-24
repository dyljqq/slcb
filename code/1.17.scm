; In Scheme (function-name arguments) is the syntax for applying a function to the given arguments
(define (even? x) (= (remainder x 2) 0))

(define (fast-expt-iter a b product)
  (if (< (/ b 2) 1)
    a
    (if (even? a)
      (fast-expt-iter (+ a a) (/ b 2) product)
      (fast-expt-iter (+ a product) (- b 1) product))))

(define (fast-expt a b)
  (fast-expt-iter a b a))
