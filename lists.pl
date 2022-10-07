sumListDown([], 0) :- !.
sumListDown([H|T],S):-sumListDown(T,S1), S is S1+H.

sumListUp(L,S)