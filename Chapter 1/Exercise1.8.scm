;;;find cube root

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-guess?  guess x)
  (< (abs (- (cube  guess) x)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root-rec guess x)
  (if (good-guess? guess x)
      guess
      (cube-root-rec (improve guess x) x)))