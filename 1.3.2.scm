; (define plus (lambda (x) (+ x 4)))
; ((lambda (x y z) (+ x y (square z))) 1 2 3)

; f(x, y) = x * (1 + x * y)^2 + y * (1 - y) + (1 + x * y) * (1 - y)
; let a = (1 + x * y), let b = (1 - y)
; f(x, y) = ax^2 + by + ab
; (define (f x y)
;   (define (f-helper a b)
;     (+ (* a (square x)
;       (* b y)
;       (* a b)))))
;   (f-helper (+ 1 (* x y) (- 1 y)))

; use lambda
; (define (fl x y)
;   ((lambda (a b)
;     (+ (* a (square x))
;       (* b y)
;       (* a b)))
;    (+ 1 (* x y))
;    (- 1 y)))
; (fl 1 2)

; use let

; (define (f x y)
;   (let ((a (+ 1 (* x y)))
;         (b (- 1 y)))
;    (+ (* a (square x)) (* b y) (* a b))))
; (f 1 2)

; ((lambda (x)
;     (+ (let ((x 3))
;          (+ x * (+ x 10)))
;        x)) 5)
; (define (f a)
;     (let ((x 3))
;       (+ x * (+ x 10))
;       x))

; (let ((x 3))
;   (+ (* 10 x) x))

((lambda (x)
    (+ (let ((x 3))
        (+ (* 10 x) x))
      x))
 5)
