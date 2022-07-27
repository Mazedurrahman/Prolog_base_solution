
domains
predicates
	go
	hypothesis(symbol,symbol)
	symptom(symbol,symbol)
	responce(char)
clauses
	go:-
	clearwindow,
	write("Enter your name : "),readln(Patient),
	hypothesis(Patient,Disease),
	write(Patient," may have ", Disease,"'"),nl.
	
	go:-
	write("I can't diagnose."),nl.
	
	hypothesis(Patient,measles):-
	symptom(Patient,fever),
	symptom(Patient,rash).
	
	hypothesis(Patient,mumps):-
	symptom(Patient,fever),
	symptom(Patient,pain_in_gland).
	
	hypothesis(Patient,cough):-
	symptom(Patient,fever),
	symptom(Patient,cough).
	
	hypothesis(Patient,headache):-
	symptom(Patient,fever),
	symptom(Patient,headache).
	
	symptom(Patient,fever):-
	write("Are you have Fever? : "),
	responce(Reply),Reply='y'.
	
	symptom(Patient,rash):-
	write("Are you have Rash? : "),
	responce(Reply),Reply='y'.
	
	symptom(Patient,pain_in_gland):-
	write(" Have you any pain in gland? : "),
	responce(Reply),Reply='y'.
	
	symptom(Patient,cough):-
	write(" Does it hurt to Cough? : "),
	responce(Reply),Reply='y'.
	
	symptom(Patient,headache):-
	write(" Do you have any headache? : "),
	responce(Reply),Reply='y'.
	
	responce(Reply):-
	readchar(Reply),write(Reply),nl. 
	
	