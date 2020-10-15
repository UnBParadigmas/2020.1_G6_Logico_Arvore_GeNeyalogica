main:- consult('interface.pl'), menu, !.

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
	write('9. Cônjuges'), nl,
	write('0. Exit'), nl,
	read(X),
	interface(X),
	X==0,
	!.
