% Facts: Student details
student(rahul).
student(amit).
student(priya).
student(neha).

% Facts: Courses
course(ai).
course(ml).
course(java).
course(dbms).

% Facts: Enrollment
enrolled(rahul, ai).
enrolled(rahul, java).
enrolled(amit, ml).
enrolled(amit, dbms).
enrolled(priya, ai).
enrolled(neha, java).

% Rule: A student is taking a course
takes_course(Student, Course) :-
    enrolled(Student, Course).

% Rule: Find students who are enrolled in a particular course
student_of_course(Student, Course) :-
    enrolled(Student, Course).

% These are a types of query.
% check whether Rahulis a student:
% student(rahul).

% Check whether Rahul is enrolled in AI
% enolled(rahul,ai).

%Find all courses taken by Rahul
% enrolled(rahul, Course).

% Find all student studying AI
% student_of_course(Student, ai).