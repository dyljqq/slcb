(define (make-rat n d)
    (let ((g (gcd n d)))
        (cons (/ n g) (/ d g))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define x (cons 1 2))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(define (gcd k n)
  (if (= k 0)
    n
    (gcd (remainder n k) k)))

(define one-half (make-rat 1 2))
(print-rat one-half)
(gcd 4 10)

(define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))

(define one-third (make-rat 1 3))
(print-rat (add-rat one-third one-half))
(print-rat (add-rat one-third one-third))