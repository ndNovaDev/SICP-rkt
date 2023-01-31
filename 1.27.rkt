#lang racket

(require "common.rkt")

(define (check n)
  (define (it a)
    (cond ((= a 0) #t)
          ((= a (expmod a n n)) (it (- a 1)))
          (else #f)))
  (it (- n 1)))

(check 561)