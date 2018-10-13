
;;;finding  square root

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (good-guess? guess )
    (< (abs (- (square guess)  x)) 0.001))
  (define (improve guess )
    (average guess (/ x guess)))
  (define (sqrt-rec guess )
    (if (good-guess? guess)
	guess
	(sqrt-rec (improve guess))))
  (sqrt-rec 1.0))

  

  







