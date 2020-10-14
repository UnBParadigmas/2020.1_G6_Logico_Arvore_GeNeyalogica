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

lePrimoIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de primos:'), nl, findall(Y, primos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) primo(a) para saber seus primos:'), nl,
	read(PrimoPesquisado), forall(setof(_, primos(Primos,PrimoPesquisado), _),
    format('Primo(a) de ~w: ~w\n', [PrimoPesquisado, Primos])).

leTioIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de tios:'), nl, findall(Y, sobrinho(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) tio(a) para saber seus sobrinhos:'), nl,
	read(Tio), forall(setof(_, sobrinho(Sobrinhos,Tio), _),
    format('Sobrinho(a) de ~w: ~w\n', [Tio, Sobrinhos])).

leIrmaoIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de irmaos:'), nl, findall(Y, irmaos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) irmão(ã) para saber seus irmãos:'), nl,
	read(IrmaoPesquisado), forall(setof(_, irmaos(Irmao,IrmaoPesquisado), _),
    format('Irmão(ã) de ~w: ~w\n', [IrmaoPesquisado, Irmao])).

lePaisIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de pais:'), nl, findall(Y, filhos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) pai/mãe para saber seus filhos:'), nl,
	read(Pais), forall(setof(_, filhos(Filho,Pais), _),
    format('Filho(a) de ~w: ~w\n', [Pais, Filho])).

leAvosIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de avós:'), nl, findall(Y, avos(Y,X), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) avô(ó) para saber seus netos:'), nl,
	read(Avos), forall(setof(_, avos(Avos,Neto), _),
    format('Neto(a) de ~w: ~w\n', [Avos, Neto])).

leFilhosIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de filhos:'), nl, findall(Y, filhos(Y,X), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) filho(a) para saber seus pais:'), nl,
	read(Progenitor), forall(setof(_, filhos(Progenitor, Filho), _),
    format('Pais(a) de ~w: ~w\n', [Progenitor, Filho])).