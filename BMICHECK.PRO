domains
	number = real
	name = Symble
predicates
	go
	name(name)
	BMI(number,number)
	check(number)
clauses
	go:-
	
	writr("Enter your name: "),readln(N),
	write("Input your aeight in KG: "),nl,readreal(W),
	write("Input hight in Meter: "),nl,readreal(H),
	BMI(W,H).
	
	
	BMI(W,H):-
	
	Y=H*H,
	Result=W/Y,
	check(Result).
	
		check(Result):-
			Result<=18.5,
			write("Your BMI: ",Result),
			
			write("  Underweight").
			
		check(Result):-		
			Result>=18.5,
			Result<=24.9,
			
			write("Your BMI: ",Result),
			write(" Healthy ").
			
		check(Result):-
			Result>=25,
			Result<=29.9,
			
			write("Your BMI: ",Result),
			write(" Overweight").
			
		check(Result):-
			Result>30,
			
			write("Your BMI: ",Result),
			write("Obese").