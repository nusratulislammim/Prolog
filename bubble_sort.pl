bubble_sort(List, Sorted) :-
    swap_pass(List, Result, Swapped),
    ( Swapped = yes ->
        bubble_sort(Result, Sorted)
    ;
        Sorted = Result
    ).

swap_pass([], [], no).
swap_pass([X], [X], no).

swap_pass([X, Y | T], [Y | R], yes) :-
    X > Y,
    swap_pass([X | T], R, _).

swap_pass([X, Y | T], [X | R], Swapped) :-
    X =< Y,
    swap_pass([Y | T], R, Swapped).