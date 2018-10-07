
;;;finding  square root

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-guess? guess x)
  (< (abs (- (square guess)  x)) 0.001))

(define (sqrt-rec guess x)
  (if (good-guess? guess x)
      guess
      (sqrt-rec (improve guess x) x)))


