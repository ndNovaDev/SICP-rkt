#lang racket

(require "common.rkt")


(define (double x)
  (* 2 x))
(define (halve x)
  (/ x 2))



(define (multi a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (multi (double a) (halve b)))
        (else (+ a (multi a (- b 1))))))

(multi 3 7)
(multi 2 4)
(multi 9 9)
(multi 1 3)
(multi 3 1)
(multi 0 9)
(multi 9 0)