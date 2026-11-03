% N-Queens Problem using Backtracking

% Check whether two queens attack each other
safe(_, []).
safe(Col, [C2|Others]) :-
    Col =\= C2,
    abs(Col - C2) =\= 1,
    safe(Col, Others).

% Generate a valid arrangement of queens
n_queens(N, Solution) :-
    length(Solution, N),
    place_queens(Solution, N).

% Place queens row by row
place_queens([], _).
place_queens([Col|Others], N) :-
    between(1, N, Col),
    safe(Col, Others),
    place_queens(Others, N).

%query
?- n_queens(4, Solution).

%Expected output 
Solution = [2, 4, 1, 3] ;
Solution = [3, 1, 4, 2] ;
false.