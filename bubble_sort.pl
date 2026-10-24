bubble_sort([], []).

bubble_sort([A, B | T], [B | R]) :-
    A > B,
    bubble_sort([A | T], R).

bubble_sort([A, B | T], [A | R]) :-
    A =< B,
    bubble_sort([B | T], R).

bubble_sort([X], [X]).