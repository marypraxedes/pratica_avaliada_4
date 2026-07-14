CREATE DATABASE db_faculdade;

USE db_faculdade;

CREATE TABLE tb_cursos(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
carga_horaria int NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_alunos(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
idade int NOT NULL,
id_curso BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_curso) REFERENCES tb_cursos(id)
);

INSERT INTO tb_cursos (nome, carga_horaria) VALUES
("Engenharia de Software", 3600),
("Análise e Desenvolvimento de Sistemas", 2400),
("Ciência da Computação", 3200),
("Administração", 3000),
("Marketing Digital", 1800),
("Design Gráfico", 2000),
("Banco de Dados", 1600),
("Segurança da Informação", 2200),
("Redes de Computadores", 2000),
("Inteligência Artificial", 2800);

INSERT INTO tb_alunos (nome, idade, id_curso) VALUES
("Ana Souza", 20, 1),
("Bruno Lima", 22, 3),
("Carla Oliveira", 18, 2),
("Daniel Santos", 24, 8),
("Eduarda Costa", 21, 5),
("Felipe Martins", 23, 1),
("Gabriela Rocha", 16, 10),
("Henrique Almeida", 25, 7),
("Isabela Ferreira", 17, 6),
("João Pedro", 17, 9);

SELECT * FROM tb_cursos;

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE idade >= 18;

UPDATE tb_alunos SET idade = 17 WHERE id = 5;

DELETE FROM tb_alunos WHERE id = 10;

SELECT * FROM tb_alunos INNER JOIN tb_cursos
ON tb_alunos.id_curso = tb_cursos.id;