CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_departamentos(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
salario decimal(6,2) NOT NULL,
id_departamento BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_departamento) REFERENCES tb_departamentos(id)
);

INSERT INTO tb_departamentos (nome) VALUES
("Recursos Humanos"),
("Financeiro"),
("Tecnologia da Informação"),
("Marketing"),
("Comercial"),
("Logística");

INSERT INTO tb_funcionarios (nome, salario, id_departamento) VALUES
("Ana Souza", 3200.00, 1),
("Bruno Lima", 4500.00, 3),
("Carla Oliveira", 2800.00, 4),
("Daniel Santos", 5200.00, 2),
("Eduarda Costa", 3900.00, 5),
("Felipe Martins", 3400.00, 6);

SELECT * FROM tb_departamentos;

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 3500;

UPDATE tb_funcionarios SET salario = 3600.00 WHERE id = 1;

DELETE FROM tb_funcionarios WHERE id = 6;

SELECT * FROM tb_funcionarios INNER JOIN tb_departamentos
ON tb_funcionarios.id_departamento = tb_departamentos.id;