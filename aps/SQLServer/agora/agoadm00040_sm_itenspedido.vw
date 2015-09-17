-- Tarefa 79033 - 14/05/2013 - Edna - 4.29
CREATE VIEW agoadm00040_sm_itenspedido
AS
  SELECT b.numfornec,
    c.nome AS descforn,
    c.cgc,
	c.sigla_forn,
    b.marcamod,
    b.data,
    b.preco,
    a.itemped,
    a.ano,
    a.gcompra_numero,
    a.numped,
    a.descr,
    a.sm_unidmed_unidade AS unidmed,
    a.quant_atend,
    b.seq,
    a.sm_item_itemid                 AS itemid,
    b.flex_campo_01,
    b.flex_campo_02,
    b.flex_campo_03,
    b.flex_campo_04,
    b.flex_campo_05,
    b.flex_campo_06,
    b.flex_campo_07,
    b.flex_campo_08,
    b.flex_campo_09,
    b.flex_campo_10,
    b.flg_calculo,
    b.dt_prev_ent,
    b.classif_forn,
    b.origem,
    b.usuario,
    b.comprado,
	b.desejado,
    b.id AS rowid_reg
  FROM sm_itenspedido a
  INNER JOIN sm_precoestimado b
  ON b.ano             = a.ano
  AND b.gcompra_numero = a.gcompra_numero
  AND b.numped         = a.numped
  AND b.itemped        = a.itemped
  INNER JOIN sm_fornecedor c
  ON c.numfornec = b.numfornec;
/
-- INI ---------------------------- HAD_FIXES ---------------------------------------------
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da View no SQL SERVER',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00040_SM_ITENSPEDIDO','4.29')
/
COMMIT
/
