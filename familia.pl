mulher(pam).
mulher(su).
mulher(liz).
mulher(pat).
mulher(ann).

homem(fran).
homem(tom).
homem(bil).
homem(bob).
homem(paul).
homem(john).
homem(jim).

progenitor(fran, su).
progenitor(fran, pam).

progenitor(su, bil).

progenitor(pam, bob).	% "pais do bob"
progenitor(tom, bob).

progenitor(pam, paul).	% "pais do paul"
progenitor(tom, paul).

progenitor(tom, liz).	% "tom é um dos progenitores de liz"

progenitor(bob, ann).
progenitor(bob, pat).

progenitor(pat, jim).

progenitor(liz, john).

casado(pam, tom).
