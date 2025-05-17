
edge(a, b).
edge(a, c).
edge(b, d).
edge(c, e).
edge(d, f).
edge(e, f).
edge(f, g).


connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).


bfs(Start, Goal, Path) :-
    bfs_search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).


bfs_search([[Goal|RestPath]|_], Goal, [Goal|RestPath]).


bfs_search([[Current|RestPath]|OtherPaths], Goal, Path) :-
    findall([Next,Current|RestPath],
            (connected(Current, Next),
             \+ member(Next, [Current|RestPath])),
            NewPaths),
    append(OtherPaths, NewPaths, UpdatedPaths),
    bfs_search(UpdatedPaths, Goal, Path).
