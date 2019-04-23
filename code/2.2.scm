(define (make-point x y)
    (cons x y))

(define (x-point p)
    (car p))

(define (y-point p)
    (cdr p))

(define (make-segment start-point end-point)
    (cons start-point end-point))

(define (start-segment seg)
    (car seg))

(define (end-segment seg)
    (cdr seg))

(define (midpoint-segment seg)
    (define (mid ss es f)
            (/ (+ (f ss) (f es)) 2))
    (let ((start-seg (start-segment seg)) 
          (end-seg (end-segment seg)))
        (cons (mid start-seg end-seg x-point)
            (mid start-seg end-seg y-point))))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ", ")
    (display (y-point p))
    (display ")"))

(define p1 (make-point 1 2))
(define p2 (make-point 2 3))
(print-point p1)
(print-point p2)

(define seg (make-segment p1 p2))
(midpoint-segment seg)