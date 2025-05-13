create database secretaria_starschool;

USE secretaria_starschool;

CREATE TABLE tb_alunos_starschool(
	ra BIGINT AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    faltas BIGINT,
    nota double,
    nome_do_responsavel varchar(255) NOT NULL,
    dt_nascimento date,
    PRIMARY KEY (ra)
);

INSERT INTO tb_alunos_starschool (nome, faltas, nota, nome_do_responsavel, dt_nascimento) VALUES
('Ana Souza', 5, 8.5, 'Carlos Souza', '2005-03-12'),
('Lucas Oliveira', 3, 7.0, 'Patrícia Oliveira', '2004-11-25'),
('Mariana Silva', 0, 9.2, 'José Silva', '2006-07-19'),
('Gabriel Santos', 2, 6.8, 'Roberta Santos', '2005-09-15'),
('Juliana Costa', 10, 7.8, 'Eliane Costa', '2004-02-08'),
('Francisco Soares', 2, 6.8, 'Roberta Santos', '2005-09-15'),
('Igor Jesus', 10, 7.8, 'Eliane Costa', '2004-02-08'),
('Pedro Almeida', 4, 9.0, 'Ricardo Almeida', '2005-01-22');


SELECT * FROM tb_alunos_starschool where nota > 7.00;

SELECT * FROM tb_alunos_starschool where nota < 7.00;

UPDATE tb_alunos_starschool 
SET faltas = 12 
WHERE ra = 15;
