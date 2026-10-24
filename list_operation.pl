% find the length of a list
length_n([],0).

length_n([_ | T],N):-
    length_n(T,N1),
    N is N1+1.

% insert

insert_element(X,L, [X | L]).

% delete

delete_element(_,[],[]).
delete_element(X,[X | T],T).

delete_element(X, [H | T],[H | R]):-
    X \= H,
    delete_element(X,T,R).


concat([],L,L).
concat([H | T], L , [H | R]):-
    concat(T,L,R).



