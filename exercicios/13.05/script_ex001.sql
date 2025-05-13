create database rh_starcorp;

USE rh_starcorp;

CREATE TABLE tb_starcorp_colaboradores(
	id bigint AUTO_INCREMENT,
    departamento varchar(255) NOT NULL,
    nome varchar(255) NOT NULL,
    função varchar(255) NOT NULL,
	salario double,
    PRIMARY KEY (id)
);

INSERT INTO tb_starcorp_colaboradores (departamento, nome, função, salario) VALUES
('TI', 'Amanda Ribeiro', 'Analista de Sistemas', 6200.00),
('Projetos', 'Carlos Mendes', 'Gerente de Projetos', 9800.00),
('TI', 'Fernanda Lima', 'Desenvolvedora Backend', 7000.00),
('Design', 'João Pedro Costa', 'Designer UX/UI', 5600.00),
('Financeiro', 'Lucas Almeida', 'Analista Financeiro', 5900.00),
('Produto', 'Mariana Soares', 'Product Owner', 8700.00);


SELECT * FROM tb_starcorp_colaboradores where salario > 2000;

SELECT * FROM tb_starcorp_colaboradores where salario < 2000;

UPDATE tb_starcorp_colaboradores 
SET salario = 7500.00 
WHERE id = 3;
