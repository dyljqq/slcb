(define (gcd k n)
  (if (= k 0)
    n
    (gcd (remainder n k) k)))

(define (make-rat n d)
    (let ((g (gcd n d)))
        (if (< d 0)
        (cons (/ (- n) g) (/ (- d) g))
        (cons (/ n g) (/ d g)))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define one-third (make-rat 1 3))
(define neg-one-half (make-rat 1 -2))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(print-rat one-third)
(print-rat neg-one-half)