(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a) (accumulate combiner null-value term (next a) next b))))

; sum

(define (inc x) (+ x 1))
(define (identifier x) x)
(define (combiner-add a b) (+ a b))
(accumulate combiner-add 0 identifier 1 inc 100)

; product
(define (product n) (/ (* 1.0 (- n 1) (+ n 1)) (* n n)))
(define (inc-two x) (+ x 2))
(define (combiner-product a b) (* a b))
(accumulate combiner-product 1.0 product 3 inc-two 1000)
