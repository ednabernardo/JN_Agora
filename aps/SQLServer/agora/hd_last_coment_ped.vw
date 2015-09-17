CREATE VIEW HD_LAST_COMENT_PED as
    SELECT MAX(id) AS maxid,
    valor_01     AS ano,
    valor_02     AS gestor,
    valor_03     AS numped
  FROM hd_comentario
  WHERE tabela = 'SM_PEDIDOS'
  group by valor_01, valor_02, valor_03
GO
  
  