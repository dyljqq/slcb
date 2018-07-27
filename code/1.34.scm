(define (f g) (g 2))

(display (f square))
(display (f (lambda (z) (* z (+ z 1)))))

; (f f)
; error, The object 2 is not applicable
; (f f) = (f (lambda (g) (g 2))) = ((lambda (g) (g 2)) 2)
; ((lambda (g) (g 2)) 2)
