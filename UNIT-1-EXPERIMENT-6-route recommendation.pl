%EX-6. Design a route commendation system using city connections and inference rules.

% Direct connections between cities

connected(bilaspur, raipur).
connected(raipur, durg).
connected(durg, bhilai).
connected(raipur, nagpur).
connected(nagpur, bhopal).
connected(bhopal, indore).

% Connections are bidirectional

route(X, Y) :-
    connected(X, Y).

route(X, Y) :-
    connected(Y, X).

% Route recommendation based on preference

recommend_route(Start, Destination, Route) :-
    route(Start, Destination),
    Route = direct.

recommend_route(Start, Destination, Route) :-
    route(Start, Intermediate),
    route(Intermediate, Destination),
    Route = via(Intermediate).

%Queries
%1. Check direct route
% route(bilaspur, raipur).

%2. Find route between Durg and Bhilai
%?- route(durg, bhilai).

%3. Recommend route from Bilaspur to Raipur
% recommend_route(bilaspur, raipur, Route).

%4. Find an intermediate city
% recommend_route(raipur, bhilai, Route).