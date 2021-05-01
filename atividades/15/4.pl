bhaskara(A, B, C, Raiz1, Raiz2) :-
    Delta is ((B * B) - (4 * A * C)),
    Delta >= 0,
    Raiz1 is ((-B + sqrt(Delta)) / 2 * A),
    Raiz2 is ((-B - sqrt(Delta)) / 2 * A).