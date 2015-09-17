--Tarefa 79033- 14/05/2013 - Edna - 4.29
CREATE VIEW agoadm00012_sm_fclasses
AS
  SELECT a.SM_GCLASSE_GRUPO_CLASSE,
    a.SM_GCLASSE_SM_ICLASSE_ITEM_CLA,
    a.FAM_CLASSE,
    a.NOME,
    a.FLG_IMOVEL,
    a.FLG_PATRIM,
    a.FLG_SERV,
    a.FLG_ALMOX,
    a.FLG_OBRAS,
    a.DESCRICAO,
    a.VIDAUCONT,
    a.DEPREC,
    a.NATDESP,
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
    a.INDICE_RESIDUAL,
    a.id AS rowid_reg
  FROM sm_fclasses a
/
-- INI ---------------------------- HAD_FIXES ---------------------------------------------
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação de View no SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00012_SM_FCLASSES','4.29')
/
COMMIT
/
-- FIM ---------------------------- HAD_FIXES ---------------------------------------------

