#lang racket

(require meta-engine
         2htdp/image
         fastcar/show-cards
         "./spines.rkt")

(define (with-text t spine)
  (rotate -90
          (overlay
            (overlay
              (text t 50 'white)
              (rectangle 500 55 'solid (make-color 0 0 0 200)))
            (rotate 90 spine))))

(hotswap me
         (game
           (show-cards 
             #:delay 50
             (map register-sprite
                  (map (curry scale 0.25)
                       (list
                         (with-text 
                           "Red Fern Grows"
                           (red-spine))
                         (with-text
                           "The Color Orange"
                           (orange-spine))
                         (with-text
                           "Old Yeller"
                           (yellow-spine))
                         (with-text
                           "The Green Mile"
                           (green-spine))
                         (with-text
                           "Cyan is not a common word"
                           (cyan-spine))
                         (with-text
                           "Blue is lonely"
                           (blue-spine))
                         (with-text
                           "A clockwork purple"
                           (purple-spine))
                         ))))))

