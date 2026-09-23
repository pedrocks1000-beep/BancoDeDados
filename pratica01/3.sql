/*Filtros*/

/*Consulta1*/
SELECT DISTINCT 
produto_id, 
produto_nome, 
categoria,
 unidade 


FROM itens_venda
ORDER BY categoria ASC,
 produto_nome ASC;

 /*Consulta 2*/
 SELECT venda_id, 
 produto_nome,
  valor_unitario 
 FROM itens_venda
 WHERE categoria IN ('Legume', 'Verdura')
 AND valor_unitario 
 BETWEEN 3.00 AND 5.00 
 ORDER BY 
  valor_unitario DESC,
  venda_id ASC;

  /*Consulta 3*/
  SELECT venda_id, 
  data_venda, 
  produto_nome,
  quantidade 
  FROM
   itens_venda
  WHERE produto_nome LIKE 'Batata%'
  ORDER BY 
  data_venda ASC,
  venda_id ASC;

/*Consulta 4*/
  SELECT DISTINCT 
   venda_id,
   data_venda, 
   bairro_entrega 

  FROM itens_venda
 WHERE bairro_entrega IS NOT NULL 
 ORDER BY venda_id ASC;

 /*Consulta 05 */
 SELECT 
 venda_id, 
 produto_nome, 
 quantidade, 
 unidade, 
 valor_unitario, 
 ROUND
 (quantidade * valor_unitario, 2) AS valor_item 
 FROM 
 itens_venda 
 ORDER BY 
 valor_item DESC, 
 venda_id ASC 
 LIMIT 5 OFFSET 5;

 /*Consulta 06*/

 SELECT 
 venda_id,
  data_venda, 
 COALESCE(bairro_entrega, 'Retirada no balcao') AS destino,
 COUNT(*) AS itens, 
 ROUND(SUM(quantidade * valor_unitario), 2) AS valor_total 
 FROM itens_venda 
 GROUP BY 
 venda_id, 
 data_venda, 
 bairro_entrega 
 ORDER BY valor_total DESC;

 /*Consulta07*/
 SELECT 
  data_venda,
  COUNT(DISTINCT venda_id) AS vendas,
  COUNT(*) AS itens, 
  ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento 
 FROM 
 itens_venda 
 GROUP BY 
 data_venda 
 ORDER BY
  data_venda ASC;