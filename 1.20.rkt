#lang racket

(require "common.rkt")

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

;(remainder a b): 6
;(remainder 40 (remainder a b)): 4
;(remainder (remainder a b) (remainder 40 (remainder a b))): 2
; (remainder (remainder 40 (remainder a b))  (remainder (remainder a b) (remainder 40 (remainder a b)))): 0

(gcd 206 40)
(gcd 40 (remainder a b))
;+1
(gcd (remainder a b) (remainder 40 (remainder a b)))
;+2
(gcd (remainder 40 (remainder a b)) (remainder (remainder a b) (remainder 40 (remainder a b))))
;+4
(gcd (remainder (remainder a b) (remainder 40 (remainder a b))) (remainder (remainder 40 (remainder a b))  (remainder (remainder a b) (remainder 40 (remainder a b)))))
;+7
(remainder (remainder a b) (remainder 40 (remainder a b)))
;+4
;18次


(gcd 206 40)
(gcd 40 (remainder 206 40))
;+1
(gcd 40 6)
(gcd 6 (remainder 40 6))
;+1
(gcd 6 4)
(gcd 4 (remainder 6 4))
;+1
(gcd 4 2)
(gcd 2 (remainder 4 2))
;+1
(gcd 2 0)
;2
;4次