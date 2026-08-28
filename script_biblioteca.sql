-- ============================================================
-- CONSULTAS PARA TESTAR O BANCO
-- ============================================================
SELECT * FROM tipo_usuario;
SELECT * FROM armario;
SELECT * FROM categoria;
SELECT * FROM editora;
SELECT * FROM autor;
SELECT * FROM espaco;
SELECT * FROM usuario;
SELECT * FROM livro;
SELECT * FROM livro_autor;
SELECT * FROM emprestimo;
SELECT * FROM reserva_livro;
SELECT * FROM reserva_espaco;

-- Consultas - insert
INSERT INTO espaco
(nome, capacidade, localizacao, status) VALUES
('Sala de Gastronomia', 8, '3º andar', 'Disponível');

INSERT INTO livro
(isbn, titulo, ano_publicacao, id_categoria, id_editora) VALUES
('6565656565454', 'Senhor dos anéis',1954, 7, 6);

-- READ - SELECT - CONSULTA REGISTRO JÁ CADASTRADOS
SELECT * FROM livro
WHERE ano_publicacao > 2000 AND ano_publicacao < 2025;

-- UPDATE - UPDATE - EDITAR UM REGISTRO JÁ CADASTRADO 
UPDATE livro
SET titulo = 'Código Limpo'
WHERE id_livro = '2';


-- DELETE - DELETE - EXCLUIR UM REGISTRO JÁ CADASTRADO
DELETE FROM livro 
WHERE id_livro = '6';

-- EXEMPLO DE INTEGRIDADE E SEGURANÇA
DELETE FROM livro;
-- Cuidado! Pode apagar tudo!

-- CRIAR NOVA COLUNA BO BANCO DE DADOS
ALTER TABLE armario 
ADD COLUMN status_novo BOOLEAN;

-- 	AO INVÉS DE USAR DELETE E PERDER OS DADOS DO ARMÁRIO 
-- USAREMOS DELEGAÇÃO LÓGICA - ATIVO INATIVO /1 OU 0 /
UPDATE armario
SET status_novo = '0'
WHERE id_armario = '1';

UPDATE armario
SET status_novo = '1'
WHERE id_armario > '1';


-- Exercício: Inative um usuário 'Ana Santos'
ALTER TABLE usuario 
ADD COLUMN status BOOLEAN;

UPDATE usuario
SET status = '1'
WHERE id_usuario > '0';

UPDATE usuario
SET status = '0'
WHERE id_usuario = '4';
 
 -- --------------Exercícios---------------------
 
 -- Cadastre na tabela tipo_usuario um novo tipo com a descrição:
 SELECT * FROM tipo_usuario;
 INSERT INTO tipo_usuario (descricao) VALUES ('Visitante');
 
 -- Cadastre na tabela armario um novo armário com os seguintes dados:
SELECT * FROM armario;
INSERT INTO armario (numero, status)
VALUES ('A06', 'Disponível');
 
 -- Cadastre na tabela categoria a seguinte categoria: ● Desenvolvimento Web
 SELECT * FROM categoria;
 INSERT INTO categoria (nome) VALUES ('Desenvolvimento Web');
 
 -- Cadastre na tabela editora a seguinte editora: Casa do Código
 SELECT * FROM editora;
 INSERT INTO editora (nome) VALUES ('Casa do Código');
 
 -- Cadastre na tabela autor o seguinte autor: Martin Fowler
 SELECT * FROM autor;
 INSERT INTO autor (nome) VALUES ('Martin Fowler');
 
 -- Cadastre na tabela espaco um novo espaço com os seguintes dados: Nome: Sala de Estudos 3 Capacidade: 12 Localização: 2º andar Status: Disponível
SELECT * FROM espaco;
INSERT INTO espaco (nome, capacidade, localizacao, status)
VALUES ('Sala de Estudos 3', '12', '2ª andar', 'Disponível');

-- Cadastre na tabela usuario um novo usuário com os seguintes dados: Nome: Fernanda Lima E-mail: fernanda.lima@email.com Senha: 123456 Telefone: 31999990006 Tipo de usuário: utilize um id_tipo_usuario existente Armário: nenhum
SELECT * FROM usuario;
INSERT INTO usuario
(nome, email, senha, telefone, id_tipo_usuario, id_armario, status)
VALUES ('Fernanda Lima', 'fernanda.lima@email.com', '123456', '31999990006', 1, NULL, '1');

-- Cadastre na tabela livro um novo livro com os seguintes dados: ISBN: 9788550800653 Título: Engenharia de Software Ano de publicação: 2019 Categoria: utilize um id_categoria existente Editora: utilize um id_editora existente
SELECT * FROM livro;
INSERT INTO livro (isbn, titulo, ano_publicacao, id_categoria, id_editora)
VALUES ('9788550800653', 'Engenharia de Software', 2019, 1, 1);