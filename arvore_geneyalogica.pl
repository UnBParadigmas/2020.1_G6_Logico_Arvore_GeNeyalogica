
antepassado(X,Y) :- progenitor(X,Y); progenitor(X,Z), antepassado(Z,Y).

mae(X,Y) :- progenitor(X,Y), mulher(X).
pai(X,Y) :- progenitor(X,Y), homem(X).

filhos(X,Y) :- progenitor(Y,X). % "Para todo X e Y, se X é progenitor de Y, então Y é filho de X"
filho(X,Y) :- filhos(X,Y), homem(X).
filha(X,Y) :- filhos(X,Y), mulher(X).

avos(X,Y) :- progenitor(X,Z), progenitor(Z,Y).
avomulher(X,Y) :- progenitor(X,Z), progenitor(Z,Y), mulher(X).
avohomem(X,Y) :- progenitor(X,Z), progenitor(Z,Y), homem(X).

netos(X,Y) :- avos(Y,X).
neto(X,Y) :- netos(X,Y), homem(X).
neta(X,Y) :- netos(X,Y), mulher(X).

irmaos(X,Y) :- progenitor(Z,X), progenitor(Z,Y), diferente(X,Y).
irma(X,Y) :- irmaos(X,Y), mulher(X).
irmao(X,Y) :- irmaos(X,Y), homem(X). % "Para todo X e Y, se Z é progenitor de X e Z é progenitor de Y e X é homem, X é um irmão"

tios(X,Y) :- irmaos(X,Z), progenitor(Z,Y).
tia(X,Y) :- tios(X,Y), mulher(X). % "\+ = operador NOT"
tio(X,Y) :- tios(X,Y), homem(X).

sobrinhos(X,Y) :- tios(Y,X).
sobrinho(X,Y) :- sobrinhos(X,Y), homem(X).
sobrinha(X,Y) :- sobrinhos(X,Y), mulher(X).

primos(X,Y) :- filhos(X,Z), tios(Z,Y).
primo(X,Y) :- primos(X,Y), homem(X).
prima(X,Y) :- primos(X,Y), mulher(X).

diferente(X,Y) :- X\==Y. %X é diferente de Y
