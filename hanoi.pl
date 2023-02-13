move(1, S, E, _):-
    write(' Move fist disk from '),
    write(S),
    write(' peg to '),
    write(E),
    write(' peg'),
    nl.

move(N, S, E, A):-
    N>1,
    M is N-1,
    move(M,S,A,E),
    move(1,S,E,_),
    move(M,A,E,S).

hanoi(N):-move(N,start,end,extra).
