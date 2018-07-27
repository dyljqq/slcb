(define (sum-simpson a b n)

  (define h (/ (- b a) n))

  (define (y k) (+ a (* k h)))

  (define (coeffient k)
    (cond ((= k 0) 1)
      ((= k n) 1)
      ((= (remainder k 2) 0) 2)
      (else 4)))

  (define (iter k)
    (* (coeffient k) (y k)))

  (define (inc x) (+ x 1))

  (define (integral term k next b)
    (if (> k b)
      0
      (+ (term k) (integral term (next k) next b))))

  (define simpson (* (/ h 3) (integral iter a inc n)))

  simpson
 )
