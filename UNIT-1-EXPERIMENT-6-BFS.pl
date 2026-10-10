% Ex-6.Implement Breadth-First Search (BFS) to find the shortest path in a graph

edge(a, b).
edge(a, c).
edge(b, d).
edge(c, d).

bfs(Start, Goal, [Start, Goal]) :-
    edge(Start, Goal).

bfs(Start, Goal, [Start|Path]) :-
    edge(Start, Next),
    bfs(Next, Goal, Path).

% Query
% ?- bfs(a, d, Path).