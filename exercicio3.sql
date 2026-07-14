CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_categorias(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
preco decimal(10,2) NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome) VALUES
("Eletrônicos"),
("Informática"),
("Celulares"),
("Eletrodomésticos"),
("Móveis"),
("Esportes"),
("Livros"),
("Brinquedos");

INSERT INTO tb_produtos (nome, preco, id_categoria) VALUES
("Smart TV 50", 2499.90, 1),
("Notebook Gamer", 5899.90, 2),
("Smartphone Galaxy", 3299.90, 3),
("Micro-ondas", 699.90, 4),
("Mesa para Escritório", 549.90, 5),
("Bola de Futebol", 119.90, 6),
("Livro Java para Iniciantes", 89.90, 7),
("Quebra-cabeça 1000 peças", 79.90, 8);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco BETWEEN 100 AND 1000;

UPDATE tb_produtos SET preco = 99.90 WHERE id = 8;

DELETE FROM tb_produtos WHERE id = 6;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;






