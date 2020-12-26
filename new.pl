even(X) :- 0 is X mod 2. 

second([A, B | C], B).

gcd(A,0,A).
gcd(A,B,X) :- B \= 0,
              C is A mod B,
              gcd(B,C,X). 



sum([], 0).
sum([A|T], X) :- sum(T,Y),
                 X is Y + A.

partition([],_,[],[]).
partition([A|T],P,[A|L],R) :- A < P, 
            partition(T,P,L,R).
partition([A|T],P,L,[A|R]) :- A >= P, 
            partition(T,P,L,R).

qsort([], []).
qsort([A], [A]).
qsort([A|T], S) :- partition(T,A,X,Y),
                   qsort(X,L), qsort(Y,R),
                   append([L,[A],R],S).


reverse(X,Y) :- reverse(X, [], Y).
reverse([],Y,Y).
reverse([A|T],Y,Z) :-  reverse(T,[A|Y],Z).

concate([],A,A).
concate([X|Y], B, [X|C]) :- concate(Y,B,C).  


doublelist(A,B) :- concate(A,A,B).

doubleelements([],[]).
doubleelements([A|B], [A,A|C]) :- doubleelements(B,C).


unzip([],[],[]).
unzip([A|B], Even, Odd ) :-  
