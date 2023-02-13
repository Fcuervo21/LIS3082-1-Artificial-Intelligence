% N is the number of the disk to be moved
% X and Y are the source and target rods Z is auxiliar

move(1, X, Y, _) :-
    % move the top disk from X to Y
    write('Move disk 1 from '),
    write(X),
    write(' to '),
    write(Y),
    nl.

move(N, X, Y, Z) :-
    N > 1,
    M is N - 1,
    % move the top N-1 disks from X to Z, using Y as the auxiliary rod
    move(M, X, Z, Y),
    % move the disk from X to Y
    move(1, X, Y, _),
    % move the N-1 disks from Z to Y, using X as the auxiliary rod
    move(M, Z, Y, X).

hanoi(N) :-
    % Begin moving N discs from left to right rod. Center is auxiliar 
    move(N, left, right, center).

