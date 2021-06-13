estudante(joao).
estudante(djalma).
estudante(gabriel).
estudante(samuel).
estudante(andre).
estudante(jose).
estudante(hans).

professor(maicon).
professor(lc).
professor(vestepau).
professor(patricia).
professor(ronaldo).
professor(cancian).

estuda(joao, ine5416).
estuda(joao, ine5414).
estuda(joao, ine5411).
estuda(djalma, ine5416).
estuda(djalma, ine5414).
estuda(hans, ine5411).
estuda(hans, ine5416).
estuda(hans, ine5413).
estuda(hans, ine5417).

leciona(maicon, ine5417).
leciona(lc, ine5411).
leciona(vestepau, ine5414).

ensina(Professor, Aluno) :- leciona(Professor, Disciplina), estuda(Aluno, Disciplina).

colegas(AlunoA, AlunoB) :- estuda(AlunoA, Disciplina), estuda(AlunoB, Disciplina), AlunoA \== AlunoB.

