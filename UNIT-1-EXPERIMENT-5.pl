%EX-5 - Classify students as topper, average, and fail using rule-based reasoning

% Student marks
marks(rahul, 85).
marks(amit, 72).
marks(priya, 55).
marks(neha, 35).
marks(rohit, 25).

% Classification rules

classify(Student, topper) :-
    marks(Student, Marks),
    Marks >= 75.

classify(Student, average) :-
    marks(Student, Marks),
    Marks >= 40,
    Marks < 75.

classify(Student, fail) :-
    marks(Student, Marks),
    Marks < 40.

% Queries
%1. Check Rahul
% classify(rahul, X).

% Check Priya
% classify(priya, X).

% Check Neha
% classify(neha, X).
% 
% Find classification of all students
% classify(Student, Category).