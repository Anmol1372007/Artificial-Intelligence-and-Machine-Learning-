% Ex-9- Hill Climbing

% Objective function
value(1, 2).
value(2, 5).
value(3, 8).
value(4, 6).
value(5, 3).

% Hill climbing
hill_climb(X, Best) :-
    value(X, V),
    X1 is X + 1,
    ( value(X1, V1), V1 > V ->
        hill_climb(X1, Best)
    ;
        Best = X
    ).

% ?- hill_climb(1, Best).
% Best = 3.