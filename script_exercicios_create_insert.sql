CREATE DATABASE ex01_filmes;

USE ex01_filmes;

CREATE TABLE filme(
id_filme  INT AUTO_INCREMENT  PRIMARY KEY,
titulo    VARCHAR(100),
genero    VARCHAR(50),
ano       VARCHAR(4),
visto     BOOLEAN
);
 INSERT INTO filme (titulo,genero,ano,visto)
    VALUES('Titanic', 'Drama', '1997', '0');
 
 INSERT INTO filme (titulo,genero,ano,visto)
	VALUES('A lagoa azul', 'Drama', '1898', '0');
-- --------------------------------------------
CREATE DATABASE ex02_jogos;

USE ex02_jogos;

-- ----------------------

CREATE TABLE jogo(
id_jogo       INT AUTO_INCREMENT  PRIMARY KEY,
nome          VARCHAR(100),
plataforma    VARCHAR(50),
genero        VARCHAR(50),
preco         DECIMAL(4,2) -- Exemplo: R$1.234,00 
);

 INSERT INTO jogo(nome,plataforma,genero,preco)
	VALUES('Valorant', 'PlayStation', 'Ação', '70.00');
    
    SELECT*FROM jogo
-- ----------------------

CREATE DATABASE ex03_produtos;

USE ex03_produtos;

-- ----------------------
CREATE TABLE produto(
id_produto    INT AUTO_INCREMENT PRIMARY KEY,
nome          VARCHAR(100),
categoria     VARCHAR(50),
preco         DECIMAL(10,2), -- Exemplo: R$12.3456,00
quantidade    INT 
);

 INSERT INTO produto(nome,categoria,preco,quantidade)
	VALUES('Banana', 'Alimento', '50.00', '60');
    
    INSERT INTO produto(nome,categoria,preco,quantidade)
	VALUES('Blush', 'Cosmetico', '800ss', '20');

    SELECT*FROM produto
    



