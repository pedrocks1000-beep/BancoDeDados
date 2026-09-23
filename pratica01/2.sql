-- Active: 1790201652845@@127.0.0.1@5432@bd_hortifruti@public
CREATE DATABASE bd_hortifruti;


DROP TABLE IF EXISTS itens_venda;

CREATE TABLE itens_venda(
 id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 venda_id INTEGER,
 data_venda DATE,
 bairro_entrega TEXT,
 produto_id INTEGER NOT NULL,
 produto_nome TEXT NOT NULL,
 categoria TEXT,
 unidade TEXT NOT NULL,
 quantidade NUMERIC(10, 3) NOT NULL,
 valor_unitario NUMERIC(10, 2) NOT NULL
);

INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-03, segunda-feira
(3001, '2026-08-03', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 1.235, 5.99),
(3001, '2026-08-03', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.874, 7.49),
(3001, '2026-08-03', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 2.99),
(3001, '2026-08-03', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 2.000, 2.50),
(3002, '2026-08-03', NULL, 6, 'Batata', 'Legume', 'Kg', 2.140, 4.99),
(3002, '2026-08-03', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.965, 5.19),
(3003, '2026-08-03', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 2.000, 7.90),
(3003, '2026-08-03', 'Centro', 2, 'Laranja pera', 'Fruta', 'Kg', 3.180, 3.79),
(3003, '2026-08-03', 'Centro', 8, 'Cenoura', 'Legume', 'Kg', 1.020, 4.29),
-- 2026-08-04, terca-feira
(3004, '2026-08-04', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.460, 7.49),
(3004, '2026-08-04', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.785, 4.49),
(3004, '2026-08-04', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.00),
(3005, '2026-08-04', NULL, 4, 'Morango', 'Fruta', 'UN', 2.000, 9.90),
(3006, '2026-08-04', 'Lagoinha', 1, 'Banana prata', 'Fruta', 'Kg', 2.310, 5.99),
(3006, '2026-08-04', 'Lagoinha', 6, 'Batata', 'Legume', 'Kg', 1.505, 4.99),
(3006, '2026-08-04', 'Lagoinha', 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 2.99),
(3006, '2026-08-04', 'Lagoinha', 12, 'Cheiro-verde', 'Verdura', 'UN', 1.000, 2.50),
-- 2026-08-05, quarta-feira
(3007, '2026-08-05', NULL, 2, 'Laranja pera', 'Fruta', 'Kg', 2.450, 3.49),
(3007, '2026-08-05', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.635, 7.99),
(3008, '2026-08-05', NULL, 8, 'Cenoura', 'Legume', 'Kg', 0.780, 4.39),
(3008, '2026-08-05', NULL, 9, 'Cebola', 'Legume', 'Kg', 1.215, 5.19),
(3008, '2026-08-05', NULL, 11, 'Couve', 'Verdura', 'UN', 2.000, 3.00),
(3009, '2026-08-05', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 7.50),
(3009, '2026-08-05', 'Centro', 4, 'Morango', 'Fruta', 'UN', 1.000, 9.49),
(3009, '2026-08-05', 'Centro', 1, 'Banana prata', 'Fruta', 'Kg', 1.890, 6.29),
-- 2026-08-06, quinta-feira
(3010, '2026-08-06', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 0.925, 4.79),
(3010, '2026-08-06', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 3.29),
(3011, '2026-08-06', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.975, 8.49),
(3011, '2026-08-06', NULL, 6, 'Batata', 'Legume', 'Kg', 3.020, 5.29),
(3011, '2026-08-06', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 3.000, 2.50),
(3012, '2026-08-06', 'Planalto', 2, 'Laranja pera', 'Fruta', 'Kg', 4.060, 3.49),
(3012, '2026-08-06', 'Planalto', 8, 'Cenoura', 'Legume', 'Kg', 1.340, 4.39),
-- 2026-08-07, sexta-feira
(3013, '2026-08-07', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 0.965, 6.49),
(3013, '2026-08-07', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.540, 5.49),
(3013, '2026-08-07', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.50),
(3014, '2026-08-07', 'Lagoinha', 4, 'Morango', 'Fruta', 'UN', 3.000, 8.90),
(3014, '2026-08-07', 'Lagoinha', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 6.99),
-- 2026-08-08, sabado
(3015, '2026-08-08', NULL, 6, 'Batata', 'Legume', 'Kg', 1.250, 5.49),
(3016, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.115, 8.99),
(3016, '2026-08-08', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.360, 4.79);


INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-03, segunda-feira
(3017, '2026-08-08', NULL, 5, 'Tomate',        'Legume', 'Kg', 1.340, 8.99 ),
(3017, '2026-08-08', NULL, 10, 'Alface_Crespa','Legume', 'UN', 2,     9.90),
(3017, '2026-08-08', NULL, 4,  'Morango'       ,'Fruta', 'UN', 1,     9.90) 


SELECT * FROM itens_venda;

/*Consulta 1*/

SELECT DISTINCT
produto_id AS "produto",
produto_nome AS "nome",
unidade as "unidade_medida",
categoria as "categoria"

FROM
itens_venda

ORDER BY
categoria,
nome;


/*Consulta 2*/
SELECT
venda_id,
produto_nome,
valor_unitario,
categoria
FROM
itens_venda
WHERE
categoria IN('Legume', 'Verdura')

AND 
valor_unitario BETWEEN (3.000 AND 5.000)

ORDER BY
valor_unitario DESC,
venda_id;


/*Consulta 3*/
SELECT
venda_id,
produto_nome,
valor_unitario

FROM
itens_venda
WHERE produto_nome LIKE '%Batata%';
                                       
ORDER BY
data_venda,
venda_id;


/*Consulta 4*/
SELECT 
DISTINCT 
venda_id,
data_venda,
produto_nome,
quantidade

FROM itens_venda

WHERE
bairro_entrega IS NULL

ORDER BY
venda_id;


/*Consulta 5 Incompleta*/
SELECT
venda_id,
quantidade,
unidade,
valor_unitario,
ROUND(quantidade * valor_unitario,2) AS  valor_item
FROM
itens_venda
ORDER BY
valor_item DESC,
venda_id

LIMIT 
5 OFFSET 5;


/*Consulta 6 */
SELECT 
venda_id,
data_venda,
COALESCE(bairro_entrega, 'Retirada do balcao') AS "Destino",
COUNT(produto_id) AS quantidade_item,
ROUND(SUM(quantidade* valor_unitario),2) AS valor_total

FROM itens_venda

GROUP BY
venda_id,
data_venda,
bairro_entrega

ORDER BY
valor_total DESC;

LIMIT 
5 OFFSET 5;





/*Consulta 7*/
SELECT  
data_venda,
COUNT(DISTINCT venda_id), 
SUM(quantidade) AS quantidade,
SUM(valor_unitario) AS valor_unitario,
ROUND(SUM(valor_unitario * quantidade),2) AS faturamento

FROM itens_venda

GROUP BY
data_venda,
quantidade

ORDER BY
data_venda;





/*Consulta 8*/
SELECT
produto_id,
produto_nome,
unidade,
SUM(quantidade*valor_unitario) AS faturamento,
COUNT(venda_id) AS quantidade_venda_total,
ROUND(AVG(valor_unitario),2) AS media_simples,
ROUND(SUM(valor_unitario * quantidade) / SUM(quantidade),2) AS media_ponderada

FROM
itens_venda

GROUP BY
produto_id,
produto_nome,
unidade

ORDER BY
faturamento;


/*Consulta 09*/

-- Agrupa por categoria E unidade: Kg e UN nunca sao somados na mesma quantidade.
 
SELECT
categoria,
unidade,
COUNT(produto_id) AS itens,
SUM(quantidade) AS qtd_total,
ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
 
FROM
itens_venda
 
GROUP BY
categoria,
unidade
 
ORDER BY
categoria,
unidade;
 
 
/*Consulta 10*/
 
SELECT
bairro_entrega,
COUNT(DISTINCT venda_id) AS entregas,
ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
 
FROM
itens_venda
 
WHERE
bairro_entrega IS NOT NULL
 
GROUP BY
bairro_entrega
 
HAVING
SUM(quantidade * valor_unitario) > 40.00
 
ORDER BY
faturamento DESC;
 
 
/*Consulta 11*/
 
SELECT
venda_id,
ROUND(SUM(quantidade * valor_unitario), 2) AS total_arredondado,
SUM(ROUND(quantidade * valor_unitario, 2)) AS soma_dos_itens_arredondados
 
FROM
itens_venda
 
GROUP BY
venda_id
 
HAVING
ROUND(SUM(quantidade * valor_unitario), 2) <> SUM(ROUND(quantidade * valor_unitario, 2))
 
ORDER BY
venda_id;


CREATE TABLE aluno(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome TEXT, 
    matricula TEXT UNIQUE,
    data_nascimento DATE
);

SELECT
*
FROM aluno;

CREATE TABLE turma(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_turma TEXT NOT NULL


);

CREATE TABLE inscricao(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    turma_id INTEGER NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id),
    FOREIGN KEY (turma_id) REFERENCES Turma(id)

);




















