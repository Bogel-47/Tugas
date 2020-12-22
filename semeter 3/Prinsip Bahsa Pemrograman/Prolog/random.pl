remove_in(H,[H|T],1,T).
remove_in(X,[H|T],N,[H|R]):-
       N1 is N-1,
       remove_in(X,T,N1,R).

rnd_select(L,1,[H]):-
    length(L,Length),
    R is random(Length)+1,
    remove_in(H,L,R,_).

rnd_select(L,N,[H|T]):-
    length(L,Length),
    R is random(Length) + 1,
    remove_in(H,L,R,X),
    N1 is N-1,
    rnd_select(X, N1, T).

pair(X,Y):-
    numlist(1,100,L),
    rnd_select(L,1,[Z]),
    built_struct(X,Z,Y).

built_struct(A,B,A-B).

pairrandom(X,N):-
    A = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z],
    rnd_select(A,N,X1),
    maplist(pair,X1,X).