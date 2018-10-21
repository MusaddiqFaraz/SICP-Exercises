#lang sicp

;;; Exercise 1.18 (Uses Russian peasant method) (iter method)

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))


(define (mul a b)
  (define (mult answer large small)
    (cond ((= small 1) (+ answer large))
          ((even? small) (mult answer (double large) (halve small)))
          (else (mult (+ answer large)
                      (double large) (halve (- small 1))))))
  (cond ((or (= a 0) (= b 0)) 0)
        ((< a b) (mult 0 b a))
        ((< b a) (mult 0 a b))
        (else (mult 0 a b))))