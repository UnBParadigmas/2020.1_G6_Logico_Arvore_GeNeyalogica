main:-  consult('familia.pl'),
	consult('arvore_geneyalogica.pl'),
    menu,
	!.

menu :- repeat,
	write('=== MENU ==='), nl,
	write('1. Option A'), nl,
	write('2. Option B'), nl,
	write('0. Exit'), nl,
	read(X),
	option(X),
	X==0,
	!.

forall(Cond, Action) :-
    \+ (Cond, \+ Action).

option(0) :- !.
option(1) :- nl,
    write('You choose the option A...'), nl,
    forall(setof(X, tio(X,Y), L),
    format('Tio(s) de ~w: ~w\n', [Y, L])), nl, !.
    
option(2) :- write('You choose the option B...'), nl, !.
option(_) :- write('It is not an acceptable option'), nl, !.
