#lang racket

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(provide square average)
