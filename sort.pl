halves([], [], []).
havlves([A], [A], []).
halves([A,B|T], [A|H1], [A|H2]).


merge([],X,X).
merge(X,[],X).
merge([A|T1], [B|T2], [A|M]) :- A < B, merge(T1, B|T2, M)
merge([A|T1], [B|T2], [B|M])

mergeSort([], []).
mergeSort([A], [A]).
mergeSort(X,Y) :- halves(X,A,B), mergeSort(A,C), mergeSort(B,C), merge(C, D, Y).



