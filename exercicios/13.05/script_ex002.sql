create database estoque_starcorp;

USE estoque_starcorp;

CREATE TABLE tb_starcorp_produtos(
	id BIGINT AUTO_INCREMENT,
    qnr_estoque BIGINT,
    tipo varchar(255) NOT NULL,
    nome varchar(255) NOT NULL,
    marca varchar(255) NOT NULL,
	preco double,
    PRIMARY KEY (id)
);

INSERT INTO tb_starcorp_produtos (qnr_estoque, tipo, nome, marca, preco) VALUES
(15, 'Eletrônico', 'Notebook Ultra X15', 'Dell', 5200.00),
(30, 'Mobiliário', 'Cadeira Ergonômica Pro', 'Flexform', 850.00),
(20, 'Eletrônico', 'Monitor LED 27"', 'Samsung', 1299.90),
(100, 'Papelaria', 'Caderno Executivo', 'Tilibra', 22.50),
(40, 'Eletrônico', 'Teclado Mecânico RGB', 'Logitech', 399.99),
(10, 'Mobiliário', 'Mesa de Escritório Compacta', 'Tok&Stok', 1120.00),
(50, 'Eletrônico', 'Mouse Sem Fio Silent', 'Logitech', 149.90),
(75, 'Papelaria', 'Kit Canetas Coloridas', 'Faber-Castell', 35.00),
(8, 'Mobiliário', 'Armário de Arquivo 2 Portas', 'Kappesberg', 780.00);

SELECT * FROM tb_starcorp_produtos where preco > 500;

SELECT * FROM tb_starcorp_produtos where preco < 500;

UPDATE tb_starcorp_produtos 
SET preco = 7500.00 
WHERE id = 15;
