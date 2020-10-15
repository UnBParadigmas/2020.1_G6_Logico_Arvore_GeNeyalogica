interface(X) :-
    consult('util.pl'),
    consult('arvore_geneyalogica.pl'),
    option(X).

option(0) :- !.

option(1) :- consult('familia.pl').

option(2) :-
    submenu, !.

option(3) :- nl,
	write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, leTiosIndividual(X,Y), write('Listagem de todos os tios e tias...')),
	nl,
    forall(setof(X, tio(X,Y), L),
    format('Tio(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, tia(X,Y), L),
    format('Tia(s) de ~w: ~w\n', [Y, L])), nl, !.

option(4) :- nl,
    write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, leAvosIndividual(X,Y), write('Listagem de todos os avôs e avós...')),
	nl,
    forall(setof(X, avohomem(X,Y), L),
    format('Avô(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, avomulher(X,Y), L),
    format('Avó(s) de ~w: ~w\n', [Y, L])), nl, !.

option(5) :- nl,
    write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, lePrimosIndividual(X,Y), write('Listagem de todos os primos e primas...')),
    nl,
    forall(setof(X, primo(X,Y), L),
    format('Primo(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, prima(X,Y), L),
    format('Prima(s) de ~w: ~w\n', [Y, L])), nl, !.

option(6) :- nl,
    write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, leSobrinhosIndividual(X,Y), write('Listagem de todos os sobrinhos e sobrinhas...')),
    nl,
    forall(setof(X, sobrinho(X,Y), L),
    format('Sobrinho(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, sobrinha(X,Y), L),
    format('Sobrinha(s) de ~w: ~w\n', [Y, L])), nl, !.

option(7) :- nl,
    write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, leIrmaosIndividual(X,Y), write('Listagem de todos os irmãos e irmãs...')),
    nl,
    forall(setof(X, irmao(X,Y), L),
    format('Irmão(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, irma(X,Y), L),
    format('Irmã(s) de ~w: ~w\n', [Y, L])), nl, !.

option(8) :- nl,
    write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, leFilhosIndividual(X,Y), write('Listagem de todos os filhos e filhas...')),
    nl,
    forall(setof(X, filho(X,Y), L),
    format('Filho(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, filha(X,Y), L),
    format('Filha(s) de ~w: ~w\n', [Y, L])), nl, !.

option(9) :- nl,
	write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, leNetosIndividual(X,Y), write('Listagem de todos os netos e netas...')),
    nl,
    forall(setof(X, neto(X,Y), L),
    format('Neto(s) de ~w: ~w\n', [Y, L])), nl,
    forall(setof(X, neta(X,Y), L),
    format('Neta(s) de ~w: ~w\n', [Y, L])), nl, !.

option(10) :- nl,
	write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, lePaisIndividual(X,Y), write('Listagem de todos os pais e mães...')),
    nl,
    forall(setof(X, pai(X,Y), [H|_]),
    format('Pai de ~w: ~w\n', [Y, H])), nl,
    forall(setof(X, mae(X,Y), [H|_]),
    format('Mãe de ~w: ~w\n', [Y, H])), nl, !.

option(11) :- nl,
	write('Deseja listar uma pessoa específica? (1 = Sim/ 0 = Não)'),
	read(Alternativa),
	ifThenElse(Alternativa =:= 1, leCasadosIndividual(X,Y), write('Listagem de todos os casados...')),
    nl,
    forall(setof(X, marido(X,Y), [H|_]),
    format('Marido de ~w: ~w\n', [Y, H])), nl,
    forall(setof(X, esposa(X,Y), [H|_]),
    format('Esposa de ~w: ~w\n', [Y, H])), nl, !.

option(_) :- write('Escolha uma opção válida.'), nl, !.

submenu:-  repeat,
	write('=== MENU DE ATUALIZAÇÃO DA BASE ==='), nl,
	write('1. Adicionar pessoa a base'), nl,
	write('2. Mostrar todas as pessoas da base de dados'), nl,
    write('3. Adicionar progenitores'), nl,
	write('0. Sair para o menu principal'), nl,
	read(K),
	submenu_option(K),
	K==0,
	!.

submenu_option(0):- !.
submenu_option(1):- 
    write('Você deseja adicionar uma mulher ou um homem? (0 = Homem, 1 = Mulher)'), nl,
    read(Escolha),
    ifThenElse(Escolha =:= 0, inserirHomemNaBase, inserirMulherNaBase), !.
submenu_option(2):- mostrarPessoasNaBase, nl, !.
submenu_option(3):- adicionarProgenitores, nl, !.

submenu_option(_):- write('Escolha uma opção válida.'), nl, !.

inserirHomemNaBase():- write('Digite o nome do homem a ser inserido'), read(Pessoa), asserta(homem(Pessoa)).

inserirMulherNaBase():- write('Digite o nome da mulher a ser inserida'), read(Pessoa), asserta(mulher(Pessoa)).

mostrarPessoasNaBase():- write('Listando pessoas da base..'), nl,
                         forall(setof(_, homem(X), _), format('Homem: ~w\n', X)),
                         forall(setof(_, mulher(Y), _), format('Mulher: ~w\n', Y)).

adicionarProgenitores():-write('Digite o progenitor e seu/sua filho(a)'), nl,
                   write('Progenitor:'), nl, read(Progenitor), nl,
                   write('Filho(a):'), nl, read(Filho), nl,
                   asserta(progenitor(Progenitor, Filho)).

leTiosIndividual(X,Y) :- 
	write('Listagem de sobrinhos:'), nl, findall(X, sobrinhos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome do(a) sobrinho(a) para saber seus tios:'), nl,
	read(Sobrinho), forall(setof(_, tios(Tio,Sobrinho), _),
    format('Tio(a) de ~w: ~w\n', [Sobrinho, Tio])).

leAvosIndividual(X,Y) :- 
	write('Listagem de netos:'), nl, findall(X, netos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome do(a) neto(a) para saber seus avós:'), nl,
	read(Neto), forall(setof(_, avos(Avo,Neto), _),
    format('Avô(a) de ~w: ~w\n', [Neto, Avo])).

lePrimosIndividual(X,Y) :- 
	write('Listagem de primos:'), nl, findall(X, primos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) primo(a) para saber seus primos:'), nl,
	read(PrimoPesquisado), forall(setof(_, primos(Primo,PrimoPesquisado), _),
    format('Primo(a) de ~w: ~w\n', [PrimoPesquisado, Primo])).

leSobrinhosIndividual(X,Y) :- 
	write('Listagem de tios:'), nl, findall(X, tios(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) tio(a) para saber seus sobrinhos:'), nl,
	read(Tio), forall(setof(_, sobrinhos(Sobrinho,Tio), _),
    format('Sobrinho(a) de ~w: ~w\n', [Tio, Sobrinho])).

leIrmaosIndividual(X,Y) :- 
	write('Listagem de irmaos:'), nl, findall(X, irmaos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) irmão(ã) para saber seus irmãos:'), nl,
	read(IrmaoPesquisado), forall(setof(_, irmaos(Irmao,IrmaoPesquisado), _),
    format('Irmão(ã) de ~w: ~w\n', [IrmaoPesquisado, Irmao])).

leFilhosIndividual(X,Y) :- 
	write('Listagem de pais:'), nl, findall(X, progenitor(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) pai/mãe para saber seus filhos:'), nl,
	read(Progenitor), forall(setof(_, filhos(Filho,Progenitor), _),
    format('Filho(a) de ~w: ~w\n', [Progenitor, Filho])).

leNetosIndividual(X,Y) :- 
	write('Listagem de avós:'), nl, findall(X, avos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) avô(ó) para saber seus netos:'), nl,
	read(Avo), forall(setof(_, netos(Neto,Avo), _),
    format('Neto(a) de ~w: ~w\n', [Avo, Neto])).

lePaisIndividual(X,Y) :- 
	write('Listagem de filhos:'), nl, findall(X, filhos(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de um(a) filho(a) para saber seus pais:'), nl,
	read(Filho), forall(setof(_, filhos(Filho, Progenitor), _),
    format('Pai/Mãe de ~w: ~w\n', [Filho, Progenitor])).

leCasadosIndividual(X,Y) :- 
	write('Listagem de pessoas casadas:'), nl, findall(X, casados(X,Y), L), sort(L, X), printlist(X), nl,
	write('Digite o nome de uma pessoa para saber seu cônjuge:'), nl,
	read(Pessoa), forall(setof(_, casados(Pessoa, Conjuge), _),
    format('Cônjuge de ~w: ~w\n', [Pessoa, Conjuge])).
