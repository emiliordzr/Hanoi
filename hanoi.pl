%The move function used to show each of the moves done
move(1, S, E, _):-
    write(' Move fist disk from '),
    write(S),
    write(' peg to '),
    write(E),
    write(' peg'),
    nl.

move(N, S, E, A):-
    %Check if the number of disks is greater than one
    N>1,
    %Assign n-1 to m to represent the new number of disks
    M is N-1,
    %Create recursive calls that switch the order of the pegs
    move(M,S,A,E),
    move(1,S,E,_),
    move(M,A,E,S).

% Create the Hanoi function that only needs the number of disks, it runs
% the move function which solves the problem
hanoi(N):-move(N,start,end,extra).
