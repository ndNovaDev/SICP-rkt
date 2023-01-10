#lang racket

(require "common.rkt")

(define (improve guess x)
  (/ (+ (/ x  (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.001))

(define (cube-iter guess last-guess x)
  (if (good-enough? guess last-guess)
      guess
      (cube-iter (improve guess x)
                     guess
                     x)))

(define (cube x)
  (cube-iter 1.0 0 x))

(cube 1)
(cube 8)
(cube 27)


