#lang racket
; ---------------------------------------------------------------------------------------------------
(require (for-syntax syntax/parse))
(require (for-syntax racket/string))	

; To get the final amount given the ci details. 
; (number number number) => (list of (period-no amount)) 
(define (Ci loan rate periods)
  (for/list ([i (in-range 1 periods)])
    (define new-amt (* loan (expt (+ 1 (/ rate 100)) i)))
    (cons i new-amt)))


(define-syntax (ci stx)
  (syntax-parse stx
    [(_ (~var loan nat) (~var rate id) (~var periods nat))
     (with-syntax ([rt (datum->syntax #'rate `,(string->number (car (string-split (symbol->string   
         ;; an easier way to covert datum to datum?
                                                                  (syntax->datum #'rate)) "%"))))])
                  #'(Ci loan rt periods))]
    [(_ (~var loan nat) (~var rate id))
     #'(ci loan rate 10)]
    [(_ (~var loan nat) (~var periods nat))
     #'(ci loan 10% periods)]))


(ci 10000 8% 10)
(ci 10000 10)
(ci 10000 8%)
