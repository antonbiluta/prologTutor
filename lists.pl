sumListDown([], 0) :- !.
sumListDown([H|T],S):-sumListDown(T,S1), S is S1+H.

sumListUp(L,S) :- sumListUp(L, 0, S).
sumListUp([], S, S):-!.
sumListUp([H|L], S1, S):-S11 is S1 + H, sumListUp(T,S11,S).