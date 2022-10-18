
domains
	number=integer
	
predicates
	maximum(number,number)

clauses
	go:-
	write("Enter 1st number: "),nl,readint(X),
	write("Enter 2nd number: "),nl,readint(Y),
	
	maximun(X,Y)
	X>Y,write(X," id greter then ",Y),nl.