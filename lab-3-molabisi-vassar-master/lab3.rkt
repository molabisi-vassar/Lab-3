;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lab3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; CMPU-101
; Lab 3 
; Professor Smith
; Name: <Michaela Olabisi>
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;                       HtDP Exercises (warm-up)
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 64. Design the function manhattan-distance, which measures
; the Manhattan distance of the given posn to the origin.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;posn -> num
;computes the distance of the given posn p to the origin

(define (manhattan-distance p)
  (+ (posn-x p)
   (posn-y p)))
(check-expect (manhattan-distance (make-posn 0 5)) 5)
(check-expect (manhattan-distance (make-posn 7 0)) 7)
(check-expect (manhattan-distance (make-posn 3 4)) 7)
(check-expect (manhattan-distance (make-posn 8 6)) 14)
(check-expect (manhattan-distance (make-posn 5 12)) 17)
  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 65. Write down (as comments) the names of the functions
; (constructors, selectors, and predicates) that each of the following
; type definitions introduces:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(define-struct movie [title producer year])
;make-movie
;movie-title, movie-producer, movie-year
;movie?
(make-movie "Get Out" "Jason Blum" "2017")


(define-struct person [name hair eyes phone])
;make-person
;person-name, person-hair, person-eyes, person-phone
;person?
(make-person "Jane" "black" "brown" "777-5555")
 
(define-struct pet [name number])
;make-pet
;pet-name, pet-number
;pet?
(make-pet "Sammy" "7")
 
(define-struct CD [artist title price])
;make-CD
;CD-artist, CD-title, CD-price
;CD?
(make-CD "Ariana Grande" "Positions" "14.00")
 
(define-struct sweater [material size producer])
;make-sweater
;sweater-matrieal, sweater-size, sweater-producer
;sweater?
(make-sweater "Cotton" "Medium" "Everlane")
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 66. Revisit the structure type definitions of exercise 65.
; Make sensible guesses as to what kind of values go with which fields.
; Then create at least one instance per structure type definition.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(make-movie "Get Out" "Jason Blum" "2017")
(make-person "Jane" "black" "brown" "777-5555")
(make-pet "Sammy" "7")
(make-CD "Ariana Grande" "Positions" "14.00")
(make-sweater "Cotton" "Medium" "Everlane")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;                         Additional exercises
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Design the function move, which consumes a Posn p and
; adds 3 to each of the x and y coordinates.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;posn-> posn
;increases the x/y-coordinate of p by 3
(define (move p)
  (make-posn (+ (posn-x p) 3) (+ (posn-y p) 3)))
(check-expect (move (make-posn 10 0)) (make-posn 13 3))
(check-expect (move (make-posn 9 1)) (make-posn 12 4))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Design the function posn-, which consumes two Posns, p and q.
; To create the resulting Posn, it subtracts the x coordinate of q
; from the x coordinate of p and the y coordinate of q from that of p.
;posn->posn
(define (posn-posn p q)
  (make-posn (- (posn-x p) (posn-x q)) 
   (- (posn-y p) (posn-y q))))
(check-expect (posn-posn (make-posn 12 18) (make-posn 4 10))  (make-posn 8 8))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;