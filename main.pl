main:-  consult('familia.pl'),
	consult('arvore_geneyalogica.pl'),
    menu,
	!.

menu :- repeat,
	write('=== MENU ==='), nl,
	write('1. Tios e tias'), nl,
	write('2. Avós e avôs'), nl,
	write('3. Primos e primas'), nl,
	write('4. Sobrinhos e sobrinhas'), nl,
	write('5. Irmãos e irmãs'), nl,
	write('6. Filhos e filhas'), nl,
	write('7. Netos e netas'), nl,
	write('8. Pais e mães'), nl,
	write('0. Exit'), nl,
	read(X),
	option(X),
	X==0,
	!.

forall(Cond, Action) :-
    \+ (Cond, \+ Action).

option(0) :- !.
option(1) :- nl,
    write('Listagem de tios e tias...'), nl,
    forall(setof(X, tio(X,Y), L),
    format('Tio(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, tia(X,Y), L),
    format('Tia(s) de ~w: ~w\n', [Y, L])), nl, !.

option(2) :- nl,
    write('Listagem de avôs e avós...'), nl,
    forall(setof(X, avohomem(X,Y), L),
    format('Avô(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, avomulher(X,Y), L),
    format('Avó(s) de ~w: ~w\n', [Y, L])), nl, !.

option(3) :- nl,
    write('Listagem de primos e primas...'), nl,
    forall(setof(X, primo(X,Y), L),
    format('Primo(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, prima(X,Y), L),
    format('Prima(s) de ~w: ~w\n', [Y, L])), nl, !.

option(4) :- nl,
    write('Listagem de sobrinhos e sobrinhas...'), nl,
    forall(setof(X, sobrinho(X,Y), L),
    format('Sobrinho(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, sobrinha(X,Y), L),
    format('Sobrinha(s) de ~w: ~w\n', [Y, L])), nl, !.

option(5) :- nl,
    write('Listagem de irmãos e irmãs...'), nl,
    forall(setof(X, irmao(X,Y), L),
    format('Irmão(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, irma(X,Y), L),
    format('Irmã(s) de ~w: ~w\n', [Y, L])), nl, !.

option(_) :- write('It is not an acceptable option'), nl, !.
