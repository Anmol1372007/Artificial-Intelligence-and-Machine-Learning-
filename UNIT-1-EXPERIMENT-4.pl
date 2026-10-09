%Develop a timetable database and answer queries regarding faculty, subjects, and classrooms.

% Faculty
faculty(rahul, ai).
faculty(priya, dbms).
faculty(amit, java).
faculty(neha, python).

% Subjects
subject(ai).
subject(dbms).
subject(java).
subject(python).

% Classroom
classroom(ai, room101).
classroom(dbms, room102).
classroom(java, room103).
classroom(python, room104).

% Timetable
timetable(ai, monday, 10, room101).
timetable(dbms, tuesday, 11, room102).
timetable(java, wednesday, 10, room103).
timetable(python, thursday, 12, room104).

% Faculty teaches a subject
teaches(Faculty, Subject) :-
    faculty(Faculty, Subject).

% Find classroom for a subject
room_for(Subject, Room) :-
    classroom(Subject, Room).

% Find timetable details
schedule(Subject, Day, Time, Room) :-
    timetable(Subject, Day, Time, Room).

%These are a type of queries
%1. Find the faculty teaching AI
% teaches(Faculty, ai).

% Find the classroom for DBMS
% room_for(dbms, Room).
 
%3. Find the complete timetable of Java
% schedule(java, Day, Time, Room).

% Find all subjects and their classrooms
% classroom(Subject, Room).

% Find the faculty teaching each subject
% faculty(Faculty, Subject).