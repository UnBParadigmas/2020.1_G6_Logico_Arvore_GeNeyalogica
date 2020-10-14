leSobrinhoIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de sobrinhos:'), nl, findall(Y, tios(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome do(a) sobrinho(a) para saber seus tios:'), nl,
	read(Sobrinho), forall(setof(_, tios(Tios,Sobrinho), _),
    format('Tio(a) de ~w: ~w\n', [Sobrinho, Tios])).

leNetoIndividual(X,Y):-
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de netos:'), nl, findall(Y, avos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome do(a) neto(a) para saber seus avós:'), nl,
	read(Neto), forall(setof(_, avos(Avos,Neto), _),
    format('Avô(a) de ~w: ~w\n', [Neto, Avos])).
