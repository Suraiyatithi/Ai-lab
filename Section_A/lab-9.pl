odd_or_even(N) :-
    ( N mod 2 =:= 0 ->
        write('even')
    ;
        write('odd')
    ).
