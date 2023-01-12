#lang racket

(require "common.rkt")


(define (double x)
  (* 2 x))
(define (halve x)
  (/ x 2))


(define (multi a b)
  (define (it a b x)
    (cond ((= b 0) x)
          ((= b 1) (+ a x))
          ((even? b) (it (double a) (halve b) x))
          (else (it a (- b 1) (+ x a)))))
  (it a b 0))

(multi 3 7)
(multi 2 4)
(multi 9 9)
(multi 1 3)
(multi 3 1)
(multi 0 9)
(multi 9 0)