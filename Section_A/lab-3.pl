min_max_in_list([X|Xs], Min, Max) :-
    min_max_helper(Xs, X, X, Min, Max).

min_max_helper([], CurrentMin, CurrentMax, CurrentMin, CurrentMax).

min_max_helper([X|Xs], CurrentMin, CurrentMax, Min, Max) :-
    NewMin is min(X, CurrentMin),
    NewMax is max(X, CurrentMax),
    min_max_helper(Xs, NewMin, NewMax, Min, Max).

