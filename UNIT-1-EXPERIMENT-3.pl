% Append two lists
my_append([], L, L).

my_append([H|T], L, [H|R]) :-
    my_append(T, L, R).


% Reverse a list
my_reverse([], []).

my_reverse([H|T], R) :-
    my_reverse(T, RT),
    my_append(RT, [H], R).


% Search an element in a list
my_search(X, [X|_]).

my_search(X, [_|T]) :-
    my_search(X, T).


% Find length of a list
my_length([], 0).

my_length([_|T], N) :-
    my_length(T, N1),
    N is N1 + 1.

%These are a type of query
% Append two lists
%  my_append([1,2,3], [4,5], X).

% Reverse a list
% my_reverse([1,2,3,4], X).

% Search an element
% my_search(3, [1,2,3,4]).

%Search an element that doesn't exist
% my_search(7, [1,2,3,4]).

%Find length of a list
% my_length([10,20,30,40,50], X).
