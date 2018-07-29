(define (close-enough? x y)
  (< (abs (- x y)) 0.001))

(define (average a b)
  (/ (+ a b) 2.0))

(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (display midpoint)
    (newline)
    (if (close-enough? neg-point pos-point)
      midpoint
      (let ((test-value (f midpoint)))
        (cond ((positive? test-value)
               (search f neg-point midpoint))
              ((negative? test-value)
               (search f midpoint pos-point))
              (else midpoint))))))

(define (half-interval f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (positive? a-value) (negative? b-value))
           (search f b a))
          ((and (negative? a-value) (positive? b-value))
           (search f a b))
          (else
           (error "Value are not of opposite sign" a b)))))

(half-interval (lambda (x) (- (* x (log x)) (log 1000))) 4.0 6.0)
