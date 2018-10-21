#lang sicp

;;; Exercise 1.17 (Uses Russian peasant method)

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))


(define (mul a b)
  (define (mult large small)
    (cond ((= small 1) large)
          ((even? small) (mult (double large) (halve small)))
          (else (+ large (mult large (- small 1))))))
  (cond ((or (= a 0) (= b 0)) 0)
        ((< a b) (mult b a))
        ((< b a) (mult a b))
        (else (mult a b))))