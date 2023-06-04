#lang racket
(define (sum-of-squares a b c)
 (define (square n) (* n n))

 (cond ((and (<= a b) (<= b c)) (+ (square b) (square c))
        (and (<= b a) (<= b c)) (+ (square a) (square c)))
        (else (+ (square a) (square b)))))