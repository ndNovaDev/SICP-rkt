#lang racket

(require "common.rkt")


(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 100)
      (report-prime (- (current-milliseconds) start-time))
      #f))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))


(define (find-n-prime begin n)
  (if (= n 0)
      (display "done")
      (if (timed-prime-test (+ begin 1))
          (find-n-prime (+ begin 1) (- n 1))
          (find-n-prime (+ begin 1) n))))


(find-n-prime 1000 3)
(find-n-prime 10000 3)
(find-n-prime 100000 3)
(find-n-prime 1000000 3)
