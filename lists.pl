sumListDown([], 0) :- !.
sumListDown([H|T],S):-sumListDown(T,S1), S is S1+H.

sumListUp(L,S) :- sumListUp(L, 0, S).
sumListUp([], S, S):-!.
sumListUp([H|L], S1, S):-S11 is S1 + H, sumListUp(T,S11,S).

listNumb(I, [H|T], E):-(
    integer(I)  ->  listNumb2(I, [H|T], E); 
                    listNumb1(I, [H|T], E, 0)
                    ).

listNumb1(_, [], _, _):-!.
listNumb1(I, [H|T], E, IE):-
    H is E ->
    I is IE;
    IE1 is IE+1, listNumb1(I, [H|T], E, IE1).

listNumb2(I, [_H|T], E):-N1 is I-1, listNumb2(N1,T,E).
listNumb2(0, [E|_T], E):-!. %Нашли элемент
listNumb2(0, [], _E):-!. %Нашли элемент