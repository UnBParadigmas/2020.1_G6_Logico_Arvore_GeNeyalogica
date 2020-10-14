forall(Cond, Action) :-
    \+ (Cond, \+ Action).

ifThenElse(X, Y, _) :- X, !, Y.
ifThenElse(_, _, Z) :- Z.

printlist([]).
printlist([X|List]) :-
	write(X),nl,
	printlist(List).
