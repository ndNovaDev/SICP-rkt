#lang racket

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (expt b n)
  (define (it b n a)
    (cond ((= n 0) 1)
          ((= n 1) (* b a))
          ((even? n) (it (* b b) (/ n 2) a))
          (else (it b (- n 1) (* a b)))))
  (it b n 1))

(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (expmod base exp m) 
   (cond ((= exp 0) 1) 
         ((even? exp) 
          (remainder (square (expmod base (/ exp 2) m)) 
                     m)) 
         (else 
          (remainder (* base (expmod base (- exp 1) m)) 
                     m))))  

(define (fermat-test n)
   (define (try-it a)
     (= (expmod a n n) a))
   (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
   (cond ((= times 0) true)
   ((fermat-test n) (fast-prime? n (- times 1)))
   (else #f)))

(provide square average even? expt smallest-divisor fast-prime?)
