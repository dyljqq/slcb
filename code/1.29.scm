(define (sum-simpson a b n)
  (h (/ (* 1.0 (- b a)) n))

  (define (y k) (+ a (* k h)))

  (define (coeffient a)
    (cond ((= a 0) 1)
      ((= a n) 1)
      ((= (remainder a 2) 0) 2)
      (else 4)))

  (define (iter k) (* (coeffient k) (y k)))

  (define (inc x) (+ x 1))

  (define (integral term a next b)
    (if (> a b)
      0
      (+ (term a) (integral term (next a) next b))))

  (define (simpson a b n)
    (integral iter a inc b)))

  (simpson a b n)
