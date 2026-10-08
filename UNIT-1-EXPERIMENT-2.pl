% Arithmetic Operations

add(X, Y, Z) :-
    Z is X + Y.

subtract(X, Y, Z) :-
    Z is X - Y.

multiply(X, Y, Z) :-
    Z is X * Y.

divide(X, Y, Z) :-
    Z is X / Y.


% Factorial using Recursion

factorial(0, 1).

factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.


% Fibonacci using Recursion

fibonacci(0, 0).

fibonacci(1, 1).

fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.


%These are the types of queries
%  add(10, 5, X).
% subtract(10, 5, X).
% multiply(10, 5, X).
% divide(10, 5, X).
% factorial(5, X).
% fibonacci(6, X).