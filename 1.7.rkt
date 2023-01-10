#lang racket

(require "common.rkt")

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

;==========================

;过小的数：还没有达到指定的数值，就满足了good enough的要求
(sqrt 0.00001)
;过大的数：收敛较慢或无法收敛
;(sqrt 10000000000000)

;==========================

(define (good-enough-new? guess last-guess)
  (< (abs (- guess last-guess)) 0.001))

(define (sqrt-iter-new guess last-guess x)
  (if (good-enough-new? guess last-guess)
      guess
      (sqrt-iter-new (improve guess x)
                     guess
                     x)))
(define (sqrt-new x)
  (sqrt-iter-new 1.0 0 x))


(sqrt-new 9)
(sqrt-new 0.00001)
(sqrt-new 10000000000000)
