; 习题 1.10
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; 2^10
(A 1 10)
; (2^4)^4
(A 2 4)
; (2^4)^4
(A 3 3)

; 2 * n
(define (f n) (A 0 n))
; 2^n
(define (g n) (A 1 n))
; (2^n)^n
(define (h n) (A 2 n))
; 5*n*n
(define (k n) (* 5 n n))
