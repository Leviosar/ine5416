% Fatos de genitores
genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ana).
genitor(bob, pat).
genitor(liz,bill).
genitor(pat, jim).

% Fatos de pessoas
mulher(pam).
mulher(liz).
mulher(pat).
mulher(ana).
homem(tom).
homem(bob).
homem(jim).
homem(bill).

% Regra que define pai
pai(X,Y) :- genitor(X,Y), homem(X).
% Regra que define mãe
mae(X,Y) :- genitor(X,Y), mulher(X).

% Regra que define avô
avo(AvoX, X) :- genitor(GenitorX, X), genitor(AvoX, GenitorX), homem(AvoX).
% Regra que define avó
avoh(AvohX, X) :- genitor(GenitorX, X), genitor(AvohX, GenitorX), mulher(AvohX).

% Regra que define irmão
irmao(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, homem(X).
% Regra que define irmã
irma(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, mulher(X).
% Regra que define irmandade sem definição de gênero
irmaos(X,Y) :- (irmao(X,Y); irma(X,Y)), X \== Y.

ascendente(X,Y) :- genitor(X,Y). %recursão - caso base
ascendente(X,Y) :- genitor(X, Z), ascendente(Z, Y). %recursão - passo recursivo

tio(X,Y) :- irmao(X, PaiY) , pai(PaiY, Y), homem(X).
tia(X,Y) :- irma(X, PaiY) , pai(PaiY, Y), mulher(X).

primo(X, Y) :- genitor(GenitorX, X) , genitor(GenitorY, Y) , irmaos(GenitorX, GenitorY).