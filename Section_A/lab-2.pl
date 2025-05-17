sum([],0).
sum([Head|Tail],Sum):-
    sum(Tail,Sum1),
    Sum is Sum1+Head.
