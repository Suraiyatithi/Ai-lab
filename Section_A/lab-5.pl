
is_list_member(X, [X|_]).

is_list_member(X, [_|Tail]) :-
    is_list_member(X, Tail).
