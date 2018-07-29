; 解法 1
; (define (tan-cf x k)
;   (define (D i) (- (* 2 i) 1))
;   (define (cf i)
;     (if (= k i)
;       (D k)
;       (- (D i) (/ (square x) (cf (+ i 1))))))
;   (/ x (cf 1.0)))
;
; (tan-cf 1 2)

; 解法2

(define (cont-frac N D k)

    (define (cf i)
        (if (= k i)
            (/ (N k) (D k))
            (/ (N i)
               (+ (D i) (cf (+ i 1))))))

    (cf 1))

(define (tan-cf x k)
  (define (N i)
    (if (= i 1)
      x
      (- (square x))))
  (define (D i) (- (* 2 i) 1))
  (exact->inexact (cont-frac N D k)))

(tan-cf 10 1000)
