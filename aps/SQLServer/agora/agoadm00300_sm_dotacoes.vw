-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
CREATE VIEW agoadm00300_sm_dotacoes
AS
  SELECT a.SEQ_DOT,
    a.NUM_NATDESP,
    a.NUM_UNOR,
    a.NUM_FUNCAO,
    a.NUM_PROGRAMA,
    a.NUM_SUBPROG,
    a.NUM_PROJATIV,
    a.NUM_FONTE,
    a.FLG_INATIVO,
    a.VLR_INICIAL,
    a.VLR_ATUAL,
    a.ANO,
    a.DESCRICAO,
    a.FLEX_CAMPO_01,
    a.FLEX_CAMPO_02,
    a.FLEX_CAMPO_03,
    a.FLEX_CAMPO_04,
    a.FLEX_CAMPO_05,
    a.FLEX_CAMPO_06,
    a.FLEX_CAMPO_07,
    a.FLEX_CAMPO_08,
    a.FLEX_CAMPO_09,
    a.FLEX_CAMPO_10,
    n.nome               AS NOMENATDESP,
    (a.seq_dot)          AS rowid_reg
  FROM sm_dotacoes a
  INNER JOIN sm_natdesp n
  ON a.ano          = n.ano
  AND a.num_natdesp = n.numero;
GO
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da view no SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00300_SM_DOTACOES','4.29')
GO
COMMIT
/

