#lang racket

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

;计算了过多的中间数据