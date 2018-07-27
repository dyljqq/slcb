; the sum of squares of the prime numbers in the interval a to b
(define (devides? a b)
  (= (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((devides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n) (find-divisor n 2))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (square a) (* a a))
(define (combiner-add a b) (+ a b))
(define (inc x) (+ x 1))

(define (accumulate-filter combiner null-value filter term a next b)
  (if (> a b)
    null-value
    (if (filter a)
      (combiner (term a) (accumulate-filter combiner null-value filter term (next a) next b))
      (accumulate-filter combiner null-value filter term (next a) next b))))

(accumulate-filter combiner-add 0 prime? square 3 inc 10)

; the product of all the positive integers less than n, gcd(i, n) = 1
(define (gcd k n)
  (if (= k 0)
    n
    (gcd (remainder n k) k)))

(define (gcd? a) (= (gcd a 10) 1))

(define (identifier x) x)
(define (combiner-product a b) (* a b))
(accumulate-filter combiner-product 1.0 gcd? identifier 1 inc 10)
