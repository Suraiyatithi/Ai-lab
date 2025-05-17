list_length([],0).
list_length([_|L],N):-
    list_length(L,N1),
    N is N1+1.
