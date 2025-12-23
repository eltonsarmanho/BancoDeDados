/*
1. SELECT nome, fone FROM Pessoa;

2.SELECT cdturma, COUNT(cdpessoa) FROM Participante GROUP BY cdturma;

3. SELECT Pessoa.nome, Turma.nome 
FROM Pessoa INNER JOIN Turma ON Pessoa.cdpessoa = Turma.profe;

4. SELECT Turma.nome, Pessoa.nome 
FROM Participante 
INNER JOIN Pessoa ON Participante.cdpessoa = Pessoa.cdpessoa
INNER JOIN Turma ON Participante.cdturma = Turma.cdturma;

5. SELECT Pessoa.nome, COUNT(Turma.cdturma) 
FROM Pessoa 
INNER JOIN Turma ON Pessoa.cdpessoa = Turma.profe 
GROUP BY Pessoa.nome;

6. SELECT cdturma, COUNT(cdpessoa) AS num_participantes
FROM Participante
GROUP BY cdturma
HAVING COUNT(cdpessoa) > 1;

7. select p.nome,count(t.cdturma) from pessoa as p 
inner join turma as t on p.cdpessoa = t.profe
group by p.nome
HAVING count(t.cdturma)>=2

*/