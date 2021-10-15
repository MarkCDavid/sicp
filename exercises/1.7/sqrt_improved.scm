(define (sqrt x)
  	(sqrt-iter 0.0 1.0 x))

(define (sqrt-iter previous-guess current-guess x)
  	(if (good-enough? previous-guess current-guess x)
	    current-guess
	    (sqrt-iter  current-guess
	      		(improve current-guess x)
		        x)))

(define (good-enough? previous-guess current-guess x)
	(= previous-guess current-guess))

(define (square x)
  	(* x x))

(define (improve guess x)
  	(average guess (/ x guess)))

(define (average x y)
  	(/ (+ x y) 2))

