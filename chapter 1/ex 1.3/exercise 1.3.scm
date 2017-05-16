;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |exercise 1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (minValue x y z)
  (cond ((and (<= x y) (<= x z)) x)
        ((and (<= y x) (<= y z)) y)
        (else z)))

(define (square x) (* x x))

(define (squareMaxPair x y z)
  (cond ((= x (minValue x y z)) (+ (square y) (square z)))
        ((= y (minValue x y z)) (+ (square x) (square z)))
        (else (+ (square x) (square y)))))
        
  
