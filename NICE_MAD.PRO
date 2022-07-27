domains
predicates
	go
	hypothesis(symbol,symbol)
	symp(symbol,symbol)
	res(char)
clauses
	go:-
	clearwindow,
	write("Your name : "),readln(P),
	hypothesis(P,D),
	write(P, " may have ",D,"."),nl.
	go:-
	write("I can't diaagnose."),nl.
	
	hypothesis(P,measles):-
	symp(P,fever),
	symp(P,rash).
	
	hypothesis(P,mumps):-
	symp(P,fever),
	symp(P,pain_in_gland).
	
	symp(P,fever):-
	write("Fever?"),res(R),R='y'.
	symp(P,rash):-
	write("Rash?"),res(R),R='y'.
	symp(P,pain_in_gland):-
	write("Pain in Glands"),res(R),R='y'.
	
	res(R):-
	readchar(R),write(R),nl.