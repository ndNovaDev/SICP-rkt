#lang racket

(define (maxSum a b c) (cond ((and (< a b) (< a c)) (+ b c))
                             ((and (< b a) (< b c)) (+ a c))
                             (else (+ a b))))

(maxSum 1 2 3)
(maxSum 3 2 1)
(maxSum 1 1 1)
(maxSum 23 0 1)