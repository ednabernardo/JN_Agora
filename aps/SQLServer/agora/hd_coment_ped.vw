CREATE VIEW HD_COMENT_PED
AS
  SELECT id,
    data_coment,
    usuario,
    comentario,
    valor_01 AS ano,
    valor_02 AS gestor,
    valor_03 AS numped
  FROM hd_comentario
  WHERE tabela = 'SM_PEDIDOS'
GO
  
  