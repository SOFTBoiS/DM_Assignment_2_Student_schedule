% name, classes
student(adam, [dm, si, lsd, ufo]).
student(emil, [dm, si, lsd, ufo]).
student(stephan, [dm, si, bi, lsd, ufo]).
student(sebbelicious, [dm, si, lsd, ufo]).
student(daniel, [dm, si, lsd, ufo]).
student(nikolaj, [dm, si, lsd, ufo]).
student(bob, [dm, si, lsd, ufo]).

% day, class, room
date(monday, dm, 301).
date(tuesday, si, 305).
date(wednesday, lsd, 305).
date(wednesday, bi, 301).
date(friday, ufo, 305).

% Automatically prints the whole week schedule with recursion
student_schedule(Student) :-
    write(Student),
    write("'s schedule:\n"),
    student(Student, Classes),
    process_schedule(Classes).

% Manual press ; in console to view days
day_schedule(Day) :-
    write("Schedule for "),
    write(Day),
    write(":\n"),
    date(Day, Class, Room),
    write("Class: "),
    write(Class),
    write("\nRoom: "),
    write(Room).

process_schedule([]).
process_schedule([H|T]) :-
    date(Day, H, Room),
    write("\nDay: "),
    write(Day),
    write("\nClass: "),
    write(H),
    write("\nRoom: "),
    write(Room),
    write("\n"),
    process_schedule(T).

