-- Tabela "Pai" (lado 1 do relacionamento)
CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela "Filha" (lado N do relacionamento)
CREATE TABLE professores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario NUMERIC(10,2),
    data_admissao DATE,
    departamento_id INT,
    -- Definicao da Chave Estrangeira
    CONSTRAINT fk_depto FOREIGN KEY (departamento_id)
    REFERENCES departamentos(id));

CREATE DOMAIN dom_sexo AS CHAR(1)
CHECK (VALUE IN ('M', 'F'))
NOT NULL;

CREATE TABLE estudantes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    sexo dom_sexo,
    idade INT
);



-- 1. Inserir Departamentos
INSERT INTO departamentos (nome) VALUES
    ('Ciencias Exatas'),
    ('Ciencias Humanas'),
    ('Saude');

-- 2. Inserir Professores (referenciando departamentos criados)
INSERT INTO professores (nome, salario, departamento_id) VALUES
    ('Prof. Elton', 12000.00, 1),
    ('Prof. Carlos', 9500.50, 2),
    ('Prof. Fabricio', 11000.00, 3);

-- 3. Inserir Estudantes    
INSERT INTO estudantes (nome, sexo, idade) VALUES
    ('Ana Silva', 'F', 20),
    ('Bruno Souza', 'M', 22),
    ('Carla Dias', 'F', 19);


-- Aumentar salario em 10% para o departamento 1
UPDATE professores
SET salario = salario * 1.10
WHERE departamento_id = 1;

-- Remover professores com salario muito baixo
DELETE FROM professores
WHERE salario < 1500;
--------------------------------------------------------------
--Projeto de Banco de Dados - Exercicio de Aula
--------------------------------------------------------------
-- Criacao da tabela departamentos
CREATE TABLE departamentos (
    departamento_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Criacao da tabela professores
CREATE TABLE professores (
    professor_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

-- Criacao da tabela cursos
CREATE TABLE cursos (
    curso_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

-- Criacao da tabela alunos
CREATE TABLE alunos (
    aluno_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(curso_id)
);

-- Insercao de dados na tabela departamentos
INSERT INTO departamentos (nome) VALUES ('EExatas');
INSERT INTO departamentos (nome) VALUES ('HHHumanas');
INSERT INTO departamentos (nome) VALUES ('Saude');

-- Insercao de dados na tabela professores
INSERT INTO professores (nome, departamento_id) VALUES ('Prof. Elton', 1);
INSERT INTO professores (nome, departamento_id) VALUES ('Prof. Carlos', 2);
INSERT INTO professores (nome, departamento_id) VALUES ('Prof. Fabricio', 3);


-- Insercao de dados na tabela cursos
INSERT INTO cursos (nome, departamento_id) VALUES ('Sistemas de Informaxao', 1);
INSERT INTO cursos (nome, departamento_id) VALUES ('Historia', 2);
INSERT INTO cursos (nome, departamento_id) VALUES ('Biologiaaaa', 3);

-- Insercao de dados na tabela alunos
INSERT INTO alunos (nome, curso_id) VALUES ('Eva', 1);
INSERT INTO alunos (nome, curso_id) VALUES ('Ana', 2);
INSERT INTO alunos (nome, curso_id) VALUES ('Ide', 3);


-- Exercicio com Random --
ALTER TABLE professores ADD COLUMN salario DECIMAL(8,2);

UPDATE professores SET salario = CAST((RANDOM() * 12000 + 3000) AS DECIMAL(8,2));

select * from professores order by salario desc;

-- Exercicios com datas
ALTER TABLE professores ADD COLUMN data_admissao DATE;

UPDATE professores
SET data_admissao =
    '2011-01-01'::DATE +
    (RANDOM() * ('2024-01-01'::DATE - '2011-01-01'::DATE))::INTEGER;



-- Join
SELECT
    p.nome AS Professor,
    d.nome AS Departamento
FROM professores as p
left JOIN departamentos as d ON p.departamento_id = d.departamento_id;

INSERT INTO professores (nome) VALUES ('Prof. Allan');


-- Exercício 1: Média salarial por Departamento}
-- Objetivo: Verificar média salarial dos professores em cada departamento.
SELECT
    d.nome AS Departamento,
    AVG(p.salario) AS Media_Salarial
FROM professores AS p
JOIN departamentos AS d ON p.departamento_id = d.departamento_id
GROUP BY d.nome;

-- Exercício 2: Número de Alunos por Curso}
-- Objetivo: Determinar o número de Alunos oferecidos por cada Curso.
SELECT
    c.nome AS Curso,
    COUNT(a.aluno_id) AS Numero_Alunos
FROM cursos AS c
LEFT JOIN alunos AS a ON c.curso_id = a.curso_id
GROUP BY c.nome;

--Exercicio 3:  Mostrar Nome dos alunos em seus respectivos Departamentos.
SELECT
    a.nome AS Aluno,
    d.nome AS Departamento
FROM alunos AS a
JOIN cursos AS c ON a.curso_id = c.curso_id
JOIN departamentos AS d ON c.departamento_id = d.departamento_id;