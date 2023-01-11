#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (define (it b n a)
    (cond ((= n 0) 1)
          ((= n 1) (* b a))
          ((even? n) (it (* b b) (/ n 2) a))
          (else (it b (- n 1) (* a b)))))
  (it b n 1))

(fast-expt 2 0)
(fast-expt 2 1)
(fast-expt 2 2)
(fast-expt 2 3)
(fast-expt 2 4)
(fast-expt 2 5)
(fast-expt 2 6)
(fast-expt 2 7)
(fast-expt 2 8)
(fast-expt 2 9)
