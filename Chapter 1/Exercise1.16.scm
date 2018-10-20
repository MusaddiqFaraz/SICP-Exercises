#lang sicp

;;; Exercise 1.16

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))


(define (fast-exp b n)
  (define (fast-exp-iter a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-exp-iter a (square b) (/ n 2)))
          (else (fast-exp-iter (* a b) b (- n 1)))))
  (fast-exp-iter 1 b n))
