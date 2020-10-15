mulher(pam).
mulher(su).
mulher(liz).
mulher(pat).
mulher(ann).
mulher(emily).

homem(fran).
homem(tom).
homem(bil).
homem(bob).
homem(paul).
homem(john).
homem(jim).
homem(jack).
homem(harry).

progenitor(fran, su).
progenitor(fran, pam).

progenitor(su, bil).

progenitor(pam, bob).	% "pais do bob"
progenitor(tom, bob).

progenitor(pam, paul).	% "pais do paul"
progenitor(tom, paul).

progenitor(tom, liz).	% "tom é um dos progenitores de liz"
progenitor(pam, liz).

progenitor(bob, ann).
progenitor(bob, pat).
progenitor(emily, pat).
progenitor(emily, ann).

progenitor(pat, jim).
progenitor(jack, jim).

progenitor(liz, john).
progenitor(harry, john).

casado(pam, tom).

casado(emily, bob).

casado(harry, liz).
