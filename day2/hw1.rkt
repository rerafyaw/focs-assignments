#lang racket

;;; Student Name: Anderson Ang Wei Jian
;;;
;;; Check one:
;;; [ ] I completed this assignment without assistance or external resources.
;;; [Y] I completed this assignment with assistance from ___
;;;     and/or using these external resources: stackoverflow (examples 5 and 6)

;;     NOTE:  You need not worry about error checking in the programs below.

;; 1.  WRITE SQUARE:  given n, returns n^2.  Hint:  use *
(define (square x)
  (* x x))

(display (square 2)) (newline)  ;; -> 4

;; 2.  WRITE is-right-triangle:  given three numbers, returns true iff the third
;;     could be the hypotenuse of a right triangle with the specified three side lengths
;;     Hint:  use = to compare numeric values

(define (is-right-triangle x y z)
  (cond ((= (* z z) (+ (* x x)(* y y) )) true)
        (else false)))

(display (is-right-triangle 3 4 5)) (newline)  ;; -> #t
(display (is-right-triangle 4 5 6)) (newline)  ;; -> #f

;; 3.  WRITE FACTORIAL:  given n, returns n!
;;     Hint:  recursion is your friend
(define (fact n)
    (if(= n 0)
            1
     (* n (fact (- n 1)))))

(display (fact 1)) (newline) ;; -> 1
(display (fact 2)) (newline) ;; -> 2

;; 4.  WRITE FIBONACCI:  given n, returns the nth fibonacci number as shown below
;;     Hint:  don't run this on really big numbers!
(define (fib n)
  (if (<= n 2)
    1
    (+ (fib (- n 1)) (fib (- n 2)))))


(display (fib 1)) (newline) ;; -> 1
(display (fib 2)) (newline) ;; -> 1
(display (fib 3)) (newline) ;; -> 2
(display (fib 4)) (newline) ;; -> 3
(display (fib 5)) (newline) ;; -> 5
(display (fib 6)) (newline) ;; -> 8

;; 5.  WRITE a procedure that takes a list of numbers and returns the sum of those numbers
;;     Hint:  first, rest, cons
(define (sum lst)
  (let loop ((lst lst) (accum 0))
  (cond
    ((empty? lst) accum)
    ((not (number? (car lst))) '())
    (else (loop (cdr lst) (+ accum (car lst)))))))

(display (sum '(1 2 3 4))) (newline) ;; -> 10
(display (sum '(1 20 300))) (newline) ;; -> 321

;; 6.  WRITE a procedure that takes a list of numbers and returns the largest one.
;;     While there are solutions using scheme's built-in max, we were actually hoping you'd do something else...
(define (my-max lst)
      (let loop ((lst (cdr lst))
      (maxval (car lst)))  ; first val maximum
      (cond ((null? lst) maxval)    ; null scenario
            ((> (car lst) maxval)   ; current element > max = max
             (loop (cdr lst) (car lst))) ; replace new maximum
            (else
             (loop (cdr lst) maxval)))))

(display (my-max '(1 10 2 20 3))) (newline) ;; -> 20
