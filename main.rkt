#lang racket

(provide (all-from-out "./spines.rkt")
         with-text)

(require "./spines.rkt")

(define (with-text t spine)
  (rotate -90
          (overlay
            (overlay
              (text t 50 'white)
              (rectangle 500 55 'solid (make-color 0 0 0 200)))
            (rotate 90 spine))))

