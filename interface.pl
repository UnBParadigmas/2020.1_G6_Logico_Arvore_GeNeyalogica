leSobrinhoIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de sobrinhos:'), nl, findall(X, sobrinhos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome do(a) sobrinho(a) para saber seus tios:'), nl,
	read(Sobrinho), forall(setof(_, tios(Tio,Sobrinho), _),
    format('Tio(a) de ~w: ~w\n', [Sobrinho, Tio])).

leNetoIndividual(X,Y):-
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de netos:'), nl, findall(X, netos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome do(a) neto(a) para saber seus avós:'), nl,
	read(Neto), forall(setof(_, avos(Avo,Neto), _),
    format('Avô(a) de ~w: ~w\n', [Neto, Avo])).

lePrimoIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de primos:'), nl, findall(X, primos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) primo(a) para saber seus primos:'), nl,
	read(PrimoPesquisado), forall(setof(_, primos(Primo,PrimoPesquisado), _),
    format('Primo(a) de ~w: ~w\n', [PrimoPesquisado, Primo])).

leTioIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de tios:'), nl, findall(X, tios(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) tio(a) para saber seus sobrinhos:'), nl,
	read(Tio), forall(setof(_, sobrinhos(Sobrinho,Tio), _),
    format('Sobrinho(a) de ~w: ~w\n', [Tio, Sobrinho])).

leIrmaoIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de irmaos:'), nl, findall(X, irmaos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) irmão(ã) para saber seus irmãos:'), nl,
	read(IrmaoPesquisado), forall(setof(_, irmaos(Irmao,IrmaoPesquisado), _),
    format('Irmão(ã) de ~w: ~w\n', [IrmaoPesquisado, Irmao])).

lePaisIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de pais:'), nl, findall(X, progenitor(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) pai/mãe para saber seus filhos:'), nl,
	read(Progenitor), forall(setof(_, filhos(Filho,Progenitor), _),
    format('Filho(a) de ~w: ~w\n', [Progenitor, Filho])).

leAvosIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de avós:'), nl, findall(X, avos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) avô(ó) para saber seus netos:'), nl,
	read(Avo), forall(setof(_, netos(Neto,Avo), _),
    format('Neto(a) de ~w: ~w\n', [Avo, Neto])).

leFilhosIndividual(X,Y):- 
    consult('arvore_geneyalogica.pl'),
    consult('util.pl'),
	write('Listagem de filhos:'), nl, findall(X, filhos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) filho(a) para saber seus pais:'), nl,
	read(Filho), forall(setof(_, filhos(Filho, Progenitor), _),
    format('Pais(a) de ~w: ~w\n', [Filho, Progenitor])).
