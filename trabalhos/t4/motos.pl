cor(amarela).
cor(azul).
cor(branca).
cor(verde).
cor(vermelha).

piloto(cesar).
piloto(fagner).
piloto(luciano).
piloto(roger).
piloto(tulio).

montadora(alema).
montadora(americana).
montadora(chinesa).
montadora(italiana).
montadora(japonesa).

placa(aaa1111).
placa(bbb2222).
placa(ccc3333).
placa(ddd4444).
placa(eee5555).

km(10).
km(20).
km(30).
km(40).
km(50).

desenho(caveira).
desenho(fenix).
desenho(guitarra).
desenho(serpente).
desenho(vampiro).

% Moto A está ao lado da moto B.
lado(MotoA, MotoB, Motos) :- nextto(MotoA, MotoB, Motos) ; nextto(MotoB, MotoA, Motos).
                       
% Moto A está à esquerda da moto B (em qualquer posição à esquerda)
esquerda(MotoA, MotoB, Motos) :- nth0(IndexA, Motos, MotoA), nth0(IndexB, Motos, MotoB), IndexA < IndexB.
                        
% Moto A está à direita da moto B (em qualquer posição à direita)
direita(MotoA, MotoB, Motos) :- esquerda(MotoB, MotoA, Motos).

% Moto A está exatamente a esquerda da moto B
exatamenteEsquerda(MotoA, MotoB, Motos) :- esquerda(MotoA, MotoB, Motos), nextto(MotoA, MotoB, Motos).

% Moto A está exatamente a esquerda da moto B
exatamenteDireita(MotoA, MotoB, Motos) :- exatamenteEsquerda(MotoB, MotoA, Motos).

% A moto A está em uma das pontas se for a primeira ou última da lista
pontas(MotoA, Motos) :- last(Motos, MotoA).
pontas(MotoA, [MotoA|_]).

% A moto A está entre a moto B e a moto C (nessa ordem)
entre(MotoA, MotoB, MotoC, Motos) :- direita(MotoA, MotoB, Motos), esquerda(MotoA, MotoC, Motos).

diff([]).
diff([H|T]) :- not(member(H,T)), diff(T).

solucao(Motos) :-
    Motos = [
        moto(Cor1, Dono1, Montadora1, Placa1, Kilometragem1, Desenho1),
        moto(Cor2, Dono2, Montadora2, Placa2, Kilometragem2, Desenho2),
        moto(Cor3, Dono3, Montadora3, Placa3, Kilometragem3, Desenho3),
        moto(Cor4, Dono4, Montadora4, Placa4, Kilometragem4, Desenho4),
        moto(Cor5, Dono5, Montadora5, Placa5, Kilometragem5, Desenho5)
    ],
    % A moto Vermelha está exatamente à esquerda da moto menos rodada.
    exatamenteEsquerda(
        moto(vermelha, _, _, _, _, _),
        moto(_, _, _, _, 10, _),
        Motos
    ),
    % A moto que tem 10 mil km está ao lado da moto do Túlio.
    lado(
        moto(_, _, _, _, 10, _),
        moto(_, tulio, _, _, _, _),
        Motos
    ),
    % A moto que tem o desenho de uma Guitarra está exatamente à esquerda da moto cuja placa é CCC-3333.
    exatamenteEsquerda(
        moto(_, _, _, _, _, guitarra),
        moto(_, _, _, ccc3333, _, _),
        Motos
    ),
    % A moto de 50 mil km está ao lado da moto do Roger.
    lado(
        moto(_, _, _, _, 50, _),
        moto(_, roger, _, _, _, _),
        Motos
    ),
    % Na quinta posição se encontra a moto de placa BBB-2222.
    Placa5 = bbb2222,
    % member(moto(Cor5, Dono5, Montadora5, bbb2222, Kilometragem5, Desenho5), Motos),
    % A moto de placa DDD-4444 está exatamente à direita da moto que tem o desenho de uma Serpente.
    exatamenteDireita(
        moto(_, _, _, ddd4444, _, _),
        moto(_, _, _, _, _, serpente),
        Motos
    ),
    % A moto Vermelha está em algum lugar à esquerda da moto do Túlio
    esquerda(
        moto(vermelha, _, _, _, _, _),
        moto(_, tulio, _, _, _, _),
        Motos
    ),
    % A moto de 40 mil km está exatamente à direita da moto Verde.
    exatamenteDireita(
        moto(_, _, _, _, 40, _),
        moto(verde, _, _, _, _, _),
        Motos
    ),
    % O desenho de Caveira está na moto localizada em uma das pontas.
    pontas(
        moto(_, _, _, _, _, caveira),
        Motos
    ),
    % César é o dono da moto de placa CCC-3333.
    member(moto(_, cesar, _, ccc3333, _, _), Motos),
    % A moto que tem o desenho de uma Fênix está exatamente à esquerda da moto que tem 30 mil km.
    exatamenteEsquerda(
        moto(_, _, _, _, _, fenix),
        moto(_, _, _, _, 30, _),
        Motos
    ),
    % A moto da montadora Japonesa está em algum lugar à direita da moto Vermelha.
    direita(
        moto(_, _, japonesa, _, _, _),
        moto(vermelha, _, _, _, _, _),
        Motos
    ),
    % Em uma das pontas está a moto de 20 mil km.
    pontas(
        moto(_, _, _, _, 20, _),
        Motos
    ),
    % A moto Verde está em algum lugar à esquerda da moto da montadora Alemã.
    esquerda(
        moto(verde, _, _, _, _, _),
        moto(_, _, alema, _, _, _),
        Motos
    ),
    % O desenho de Vampiro está na moto localizada na quarta posição.
    % member(moto(Cor4, Dono4, Montadora4, Placa4, Kilometragem4, vampiro), Motos),
    Desenho4 = vampiro,
    % A moto Branca está exatamente à direita da moto Amarela.
    exatamenteDireita(
        moto(branca, _, _, _, _, _),
        moto(amarela, _, _, _, _, _),
        Motos
    ),
    % Na quarta posição está a moto da montadora Italiana.
    % member(moto(Cor4, Dono4, italiana, Placa4, Kilometragem4, vampiro), Motos),
    Montadora4 = italiana,
    % A moto Verde está em algum lugar entre a moto do Fágner e a moto que tem o desenho de uma Guitarra, nessa ordem.
    entre(
        moto(verde, _, _, _, _, _),
        moto(_, fagner, _, _, _, _),
        moto(_, _, _, _, _, guitarra),
        Motos
    ),
    % A moto Amarela está ao lado da moto do Túlio.
    lado(
        moto(amarela, _, _, _, _, _),
        moto(_, tulio, _, _, _, _),
        Motos
    ),
    % A moto cuja placa é AAA-1111 está exatamente à direita da moto da montadora Chinesa.
    exatamenteDireita(
        moto(_, _, _, aaa1111, _, _),
        moto(_, _, chinesa, _, _, _),
        Motos
    ),

    cor(Cor1), cor(Cor2), cor(Cor2), cor(Cor2), cor(Cor5),
    diff([Cor1, Cor2, Cor3, Cor4, Cor5]),

    piloto(Dono1), piloto(Dono2), piloto(Dono3), piloto(Dono4), piloto(Dono5),
    diff([Dono1, Dono2, Dono3, Dono4, Dono5]),

    montadora(Montadora1), montadora(Montadora2), montadora(Montadora3), montadora(Montadora4), montadora(Montadora5),
    diff([Montadora1, Montadora2, Montadora3, Montadora4, Montadora5]),

    placa(Placa1), placa(Placa2), placa(Placa3), placa(Placa4), placa(Placa5),
    diff([Placa1, Placa2, Placa3, Placa4, Placa5]),

    km(Kilometragem1), km(Kilometragem2), km(Kilometragem3), km(Kilometragem4), km(Kilometragem5),
    diff([Kilometragem1, Kilometragem2, Kilometragem3, Kilometragem4, Kilometragem5]),
    
    desenho(Desenho1), desenho(Desenho2), desenho(Desenho3), desenho(Desenho4), desenho(Desenho5),
    diff([Desenho1, Desenho2, Desenho3, Desenho4, Desenho5]).