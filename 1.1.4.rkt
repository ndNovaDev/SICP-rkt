#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;当b>0时，选择运算符+，否则选择运算符-