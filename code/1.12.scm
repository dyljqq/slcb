; pascal triangle
; (define (pascal row col)
;   (cond ((or (= 0 row) (= 0 col)) 1)
;         ((= col row) 1)
;         (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))
;
; (pascal 3 2)

; 迭代版本
(define (factorial n) (fact-iter 1 1 n))
(define (fact-iter product counter max-counter)
  (if (> counter max-counter)
    product
    (fact-iter (* counter product)
               (+ counter 1)
               max-counter)))
(define (pascal row col)
  (/ (factorial row)
     (* (factorial col) (factorial (- row col)))))
