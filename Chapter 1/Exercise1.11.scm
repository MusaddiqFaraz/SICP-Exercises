#lang sicp

;;; Exercise 1.11

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
	       (* 2 (f-rec (- n 2)))
	       (* 3 (f-rec (- n 3))))))

(define (f n)
  (define (f-iter val1 val2 val3 n)
    (if (= n 0)
	val3 
	(f-iter val2 val3 
		   (+ val3 (* 2 val2) (* 3 val1))
		(- n 1))))
  (if (< n 3) n
	   (f-iter 0 1 2 n)))
  
    
