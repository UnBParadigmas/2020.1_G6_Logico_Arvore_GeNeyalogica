mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).

homem(tom).
homem(bob).
homem(jim).
homem(paul).
homem(john).

progenitor(pam, bob).	% "pais do bob"
progenitor(tom, bob).

progenitor(pam, paul).	% "pais do paul"
progenitor(tom, paul).

progenitor(tom, liz).	% "tom é um dos progenitores de liz"

progenitor(bob, ann).

progenitor(bob, pat).

progenitor(pat, jim).

progenitor(liz, john).
