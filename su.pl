:- use_module(library(clpfd)).

moneypuzzle(X) :- X = [S,E,N,D,M,O,R,Y],
 [S,E,N,D,M,O,R,Y] ins 0..9,
 all_distinct([S,E,N,D,M,O,R,Y]),
 S #\= 0,
 M #\= 0,
 1000*S + 100*E + 10*N + D +
 1000*N + 100*0 + 10*R + E
 #= 10000*M +  1000*O + 100*N + 10*E + Y,
 label([S,E,N,D,M,O,R,Y]).


dangerpuzzle(X) :- X = [C,R,O,S,A,D,N,G,E],
 [C,R,O,S,A,D,N,G,E] ins 0..9,
 all_distinct([C,R,O,S,A,D,N,G,E]),
 C #\= 0,
 R #\= 0,
 D #\= 0,
 10000*C + 1000*R + 100*O + 10*S + S + 
 10000*R + 1000*0+ 100*A + 10*D + S 
 #= 100000*D +  10000*A + 1000*N + 100*G + 10*E + R, 
 label([C,R,O,S,A,D,N,G,E]).


 cubes(X) :- X = [N,A,B,C,D],
 [N,A,B,C,D] ins 1..100000, 
 A #< C, 
 A #< B, 
 C #< D, 
 N #= A*A*A + B*B*B, 
 N #= C*C*C + D*D*D,
 label([N,A,B,C,D]).

