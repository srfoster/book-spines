#lang racket

(provide (rename-out 
           [red-spine2 red-spine]
           [orange-spine2 orange-spine]
           [yellow-spine2 yellow-spine]
           [green-spine2 green-spine]
           [cyan-spine2 cyan-spine]
           [blue-spine2 blue-spine]
           [purple-spine2 purple-spine] ))

(require image-coloring
         "./assets.rkt"
         2htdp/image)

(define (red-spine1)
  (change-hue 120 
              (change-saturation 100 spine1)))


(define (red-spine2)
  (change-hue 0 spine2))

(define (orange-spine2)
  (change-hue 30 spine2))

(define (yellow-spine2)
  (change-hue 60 spine2))

(define (green-spine2)
  (change-hue 90 spine2))

(define (cyan-spine2)
  (change-hue 150 spine2))

(define (blue-spine2)
  (change-hue 210 spine2))

(define (purple-spine2)
  (change-hue 250 spine2))


