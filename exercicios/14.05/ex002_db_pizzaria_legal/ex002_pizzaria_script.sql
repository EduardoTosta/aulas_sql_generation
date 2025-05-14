-- Criando o Banco de Dados
CREATE SCHEMA IF NOT EXISTS `db_pizzaria_legal` DEFAULT CHARACTER SET utf8 ;
USE `db_pizzaria_legal` ;

-- -----------------------------------------------------
-- Tabela tb_categorias
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_categorias` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela tb_pizzas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_pizzas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `ingredientes` VARCHAR(255) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `tb_categoria_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_pizzas_tb_categorias_idx` (`tb_categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_pizzas_tb_categorias`
    FOREIGN KEY (`tb_categoria_id`)
    REFERENCES `db_pizzaria_legal`.`tb_categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


INSERT INTO `db_pizzaria_legal`.`tb_categorias` (nome, descricao) VALUES
('Tradicional', 'Pizzas tradicionais com ingredientes clássicos'),
('Gourmet', 'Pizzas com ingredientes diferenciados e sofisticados'),
('Doces', 'Pizzas de sabores doces para sobremesa'),
('Vegetariana', 'Pizzas com opções de vegetais e sem carne'),
('Especial', 'Pizzas especiais com combinações criativas');


INSERT INTO `db_pizzaria_legal`.`tb_pizzas` 
(nome, ingredientes, preco, tb_categoria_id) 
VALUES
('Pizza Margherita', 'Mussarela, tomate, manjericão', 42.00, 1),
('Pizza Calabresa', 'Calabresa, cebola, azeitona', 48.00, 1),
('Pizza Quatro Queijos', 'Mussarela, provolone, gorgonzola, parmesão', 58.00, 2),
('Pizza Frango com Catupiry', 'Frango desfiado, catupiry, azeitona', 55.00, 1),
('Pizza Doce de Leite', 'Doce de leite, chocolate', 60.00, 3),
('Pizza de Morango', 'Morango, leite condensado, chocolate branco', 65.00, 3),
('Pizza Vegetariana', 'Cogumelos, pimentão, azeitonas, cebola', 50.00, 4),
('Pizza Portuguesa', 'Presunto, ovo, azeitona, cebola', 52.00, 1);


SELECT * FROM `db_pizzaria_legal`.`tb_pizzas` WHERE preco > 45.00;

SELECT * FROM `db_pizzaria_legal`.`tb_pizzas` WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM `db_pizzaria_legal`.`tb_pizzas` WHERE nome LIKE '%M%';

SELECT 
  p.id, 
  p.nome AS pizza_nome, 
  p.ingredientes, 
  p.preco, 
  c.nome AS categoria_nome
FROM 
  `db_pizzaria_legal`.`tb_pizzas` p
INNER JOIN 
  `db_pizzaria_legal`.`tb_categorias` c 
ON 
  p.tb_categoria_id = c.id;


SELECT 
  p.id, 
  p.nome AS pizza_nome, 
  p.ingredientes, 
  p.preco, 
  c.nome AS categoria_nome
FROM 
  `db_pizzaria_legal`.`tb_pizzas` p
INNER JOIN 
  `db_pizzaria_legal`.`tb_categorias` c 
ON 
  p.tb_categoria_id = c.id
WHERE 
  c.nome = 'Doces';

