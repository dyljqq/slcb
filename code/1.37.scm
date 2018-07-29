(define (cont-frac n d k)
  (define (cf i)
    (if (= k i)
      (/ (n k) (d k))
      (/ (n 1) (+ (d 1) (cf (+ i 1))))))
  (cf 1))

(cont-frac (lambda (x) 1.0) (lambda (x) 1.0) 10)
