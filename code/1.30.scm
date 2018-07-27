(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ result (term a)))))
  (iter a a))

(define (inc x) (+ x 1))
(define (identifier x) x)
(sum identifier 0 inc 100)
