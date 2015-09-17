-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
CREATE VIEW agoadm01030_empenhos_pedido AS
 SELECT p.ano        AS ano_pedido,
    p.gcompra_numero AS gestor_pedido,
    p.numped         AS num_pedido,
    'Pedido no.'
    + p.numped
    + '/'
    + p.ano        AS id_empenho,
    '6C72F11C-3E5C-4C26-BD08-09D36E5B4CD2'     AS status_empenho,
    p.projeto       AS centrocusto_empenho,
    p.flex_campo_02 AS contrato_empenho,
    f.cgc                            AS fornec_CNPJ,
	f.nome                           As fornec_nome,
    f.flex_campo_01                  AS id_fornecJanus,
    p.flex_campo_01                  AS atividade_empenho,
    cast(n.flex_campo_01 as numeric)                 As grupoorc_empenho,
    cast(n.flex_campo_02 as numeric)                 As catorc_empenho,
    'Referente ao pedido de compra no.'
    + p.numped
    +'/'
    + p.ano
    + ':'
    + p.descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.flex_campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.flex_campo_02 as numeric) as varchar) AS descr_empenho,
    getdate()                                       AS data_empenho,
    'SM_ITENSPEDIDO'                                AS origem_empenho,
    (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01 + n.flex_campo_02) as numeric)         AS chave_empenho,
    sum(iofor.preco_tot)                                                                             AS valor_empenho
  FROM sm_pedidos p
  INNER JOIN sm_itped_ofor io
  ON p.ano             = io.ano_ped
  AND p.gcompra_numero = io.gcompra_numero
  AND p.numped         = io.numped
  INNER JOIN sm_itensofor iofor
  ON io.ano_ofor        = iofor.ano
  AND io.numofor        = iofor.numofor
  AND io.itemofor       = iofor.itemofor
  AND io.gcompra_numero = iofor.gcompra_numero
  INNER JOIN sm_itenspedido i
  ON io.ano_ped        = i.ano
  AND i.gcompra_numero = io.gcompra_numero
  AND i.numped         = io.numped
  AND io.itemped       = i.itemped
  INNER JOIN sm_ordemfornec o
  ON io.ano_ofor        = o.ano
  AND io.numofor        = o.numofor
  AND io.gcompra_numero = o.gcompra_numero
  INNER JOIN sm_fornecedor f
  ON o.numfornec = f.numfornec
  INNER JOIN sm_natdesp_item ni
  on i.sm_item_itemid = ni.sm_item_itemid
  and ni.ano  = p.ano
  INNER JOIN sm_natdesp n
  on ni.natdesp = n.numero
  and ni.ano    = n.ano  
  and f.numfornec <> 0
  Group by
       p.ano,
       p.gcompra_numero,
       p.numped,
       'Pedido no.'
       + p.numped
       + '/'
       + p.ano,
       p.projeto,
       p.flex_campo_02,
       f.cgc,
	   f.nome,
       f.flex_campo_01,
       p.flex_campo_01,
       cast(n.flex_campo_01 as numeric),
       cast(n.flex_campo_02 as numeric),
       'Referente ao pedido de compra no.'
       + p.numped
       +'/'
       + p.ano
       + ':'
       + p.descricao
       + ' - Grupo e Cat :  '
       + cast(cast(n.flex_campo_01 as numeric) as varchar)
       + '.'
       + cast(cast(n.flex_campo_02 as numeric) as varchar),
       (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01 + n.flex_campo_02) as numeric)
GO
-- INICIO ---------------------------- HAD_FIXES ---------------------------------------------
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da View no SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','PACKAGE BODY','AGOADM01030_EMPENHOS_PEDIDO','4.29')
/
COMMIT
/
-- FIM ---------------------------- HAD_FIXES ---------------------------------------------


