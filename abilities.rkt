#lang racket

(provide fill-abilities)
(provide compose-abilities)
(provide hourglass)
(provide get-ability-image)
(provide get-ability-time)
(provide get-ability-pos)
(provide get-ability-next)

(require "random.rkt")
(require lang/posn)
(require 2htdp/image)

; Imaginea si range-ul în care vor aparea abilitațile
; Nu modificați
(define POSITION_RANGE '((300 2000) (30 550)))
(define (hourglass color) (underlay
 (rectangle 40 40 "solid" color)
 (polygon
  (list (make-posn 0 0)
        (make-posn 25 0)
        (make-posn 0 25)
        (make-posn 25 25))
  "outline"
  (make-pen "darkslategray" 5 "solid" "round" "round"))))

;(define-struct abil_struct (abil-image abil-time abil-pos abil-next))
; Fiecare funcție returneaza o componenta a unei abilități.
;(define (get-initial-abil color)
;  (let
;      ([image (hourglass color)])
;  (abil_struct image 15 null 7)))

;(define abil_green (get-initial-abil "green"))
;(define abil_red (get-initial-abil "red"))

(define (get-ability-image ability) 'my-code-here);(abil_struct-abil-image ability))
(define (get-ability-time  ability) 'my-code-here);(abil_struct-abil-time ability))
(define (get-ability-pos   ability) 'my-code-here);(abil_struct-abil-pos ability))
(define (get-ability-next  ability) 'my-code-here);(abil_struct-abil-next ability))

; Returneaza o poziție aleatorie în POSITION_RANGE.
(define (random-position range)
	(apply make-posn (map ((curry apply) random) range)))

; Returnează o listă de n elemente alese aleatoriu din lista L.
(define (choice-abilities n L)
	(sample (discrete-dist L) n))

; Va parcurge abitatile și pentru cele care au poziția null va asigna
; una aletorie.
; Folosiți random-position
(define (position-abilities abilities)
	'my-code-here) ;(apply position-helper abilities))

;(define (position-helper ability)
;  (if (null? (get-ability-pos ability))
;      (struct-copy abil_struct ability [abil-pos (random-position POSITION_RANGE)])
;      ability))

; Fiecare abilitate are o funcție next care modifica stare jocului
; Compuneti toate funcțiile next în una singură
; Hint: compose
(define (compose-abilities L)
	'my-code-here) ;(compose (compose-helper L null)))
(define (compose-helper L rez)
  (if (null? L) rez
      (compose-helper (cdr L) (cons (car L) rez))))

; Primiște o listă de abilități inițiale, un număr n
; și o listă cu toate abilități posibile.
; Va adauga elemente aleatoare la lista inițială pană aceasta are lungimea n
; Atentie n poate fi chiar si 0 cand vrem sa jucam fara nicio abilitate.
; Folosiți choice-abilities.
(define (fill-abilities initial n abilities)
	'my-code-here);(if (<= n (length initial)) initial
            ;(cons (choice-abilities (- n (length initial)) abilities) initial)))
