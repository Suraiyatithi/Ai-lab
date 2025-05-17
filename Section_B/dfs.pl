
edge(a, b).
edge(a, c).
edge(b, d).
edge(c, e).
edge(d, f).
edge(e, f).
edge(f, g).


connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).


dfs(Start, Goal, Path) :-
    dfs_helper(Start, Goal, [Start], Path).


dfs_helper(Goal, Goal, Visited, Path) :-
    reverse(Visited, Path).


dfs_helper(Current, Goal, Visited, Path) :-
    connected(Current, Next),
    \+ member(Next, Visited),
    dfs_helper(Next, Goal, [Next|Visited], Path).
