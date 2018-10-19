#lang sicp

;;; Exercise 1.12 Pascal's Triangle

(define (fact val count n)
  (if (=  n 0)
      val
      (fact (* val count) (+ count 1) (- n 1))))

(define (coefficient k n)
  (/  (fact 1 1 n) (* (fact 1 1 k) (fact 1 1 (- n k)))))

(define (coeff-iter k n)
  (cond ((= k n) (display (coefficient n n))
                 (display "\n"))
        (else (display (coefficient k n))
              (display " ")
              (coeff-iter (+ k 1) n))))
               

(define (pascal-triangle n)
  (define (pascal-iter count n)
    (cond ((<= count n)
        (coeff-iter 0 count)
         (pascal-iter (+ count 1) n))))

  (pascal-iter 0 (- n 1)))

        