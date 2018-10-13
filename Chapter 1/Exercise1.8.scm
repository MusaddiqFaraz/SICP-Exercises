;;;find cube root

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (average x y)
  (/ (+ x y) 2))

(define (cube-root x)
  (define (good-guess? guess)
    (< (abs (- (cube guess) x)) 0.001))
  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (cube-root-rec guess)
  (if (good-guess? guess)
      guess
      (cube-root-rec (improve guess))))
  (cube-root-rec 1.0))












