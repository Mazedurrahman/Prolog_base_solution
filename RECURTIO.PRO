predicates
	count(integer)
clauses
	count(90).
	count(N):-
		write(" ", N),
		NN=N+1,
		count(NN).