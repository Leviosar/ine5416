len([], 0).
len([_|T], C) :- len(T, CT), C is CT + 1.

indexOf(X, [X|_], 0) :- !.
indexOf(X, [_|T], P) :- 
    indexOf(X, T, PT), 
    !,
    P is PT + 1.