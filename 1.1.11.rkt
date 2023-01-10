#lang racket

(define (fr n)
  (if (< n 3)
      n
      (+ (fr (- n 1))
         (* 2 (fr (- n 2)))
         (* 3 (fr (- n 3))))))

(define (fi n)
  (define (it count _1 _2 _3)
    (if (= count 0)
        _1
        (it (- count 1)
            (+ _1
               (* 2 _2)
               (* 3 _3))
            _1
            _2)))
  (if (< n 3)
      n
      (it (- n 2)
          2
          1
          0)))

(fr 10)
(fi 10)