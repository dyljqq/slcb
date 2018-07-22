; 计算a, b, c中较大的两个数
(define (max a b c)
  (cond ((and (< a b) (< a c)) (+ b c))
    ((< b c) (+ a c))
    (+ a b)))
(define MAX (max 1 2 3))

; a + abs(b)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


; 求平方根
(define (abs x)
  (cond ((> x 0) x)
    ((= x 0) 0)
    ((< x 0) (- x))))

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; 练习1.6 \

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
    (else else-clause)))

; (define (sqrt-iter guess x)
;   (new-if (good-enough guess x)
;           guess
;           (sqrt-iter (improve guess x)
;                      x)))
; 无限递归，因为scheme采用的应用序求值，因此then-clause和else-clause都会被求值

; 练习1.8 求立方根
(define (cube x) (* x x x))

(define (cube-root-good-enough guess x)
  (< (abs (- (cube guess) x)) 0.0001))

(define (cube-root-improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root-iter guess x)
  (if (cube-root-good-enough guess x)
    guess
    (cube-root-iter (cube-root-improve guess x)
                    x)))

(define (cube-root x) (cube-root-iter 1.0 x))
