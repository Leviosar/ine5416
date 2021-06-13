abs(N, X) :- N >= 0 -> X is N.
abs(N, X) :- N <  0 -> X is -N.