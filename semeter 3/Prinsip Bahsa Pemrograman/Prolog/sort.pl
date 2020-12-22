sorting([],[]).
sorting([X|Y],[X|Z]):-
    length(X,I),
    forall(member(J,Y),
           (length(J,K),I=<K)),
    sorting(Y,Z),!.
sorting([L,M|Y],N):-
    append(Y,[L],O),
    sorting([M|O],N).




















