#lang racket

(require "common.rkt")


(define (double x)
  (* 2 x))
(define (halve x)
  (/ halve 2))



(define (plus a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (plus (double a) (halve b)))
        (else (+ a (plus a (- b 1))))))

(* 3 7)
(* 2 4)
(* 9 9)
(* 1 3)
(* 3 1)
(* 0 9)
(* 9 0)