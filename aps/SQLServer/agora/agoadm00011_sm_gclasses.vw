--Tarefa 79033 - 14/05/2013 - Edna - 4.29
CREATE VIEW agoadm00011_sm_gclasses
AS
  SELECT a.SM_ICLASSE_ITEM_CLASSE,
    a.GRUPO_CLASSE,
    a.NOME,
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
    a.id AS rowid_reg
  FROM sm_gclasses a
/
-- INI ---------------------------- HAD_FIXES ---------------------------------------------
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação de View no SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00011_SM_GCLASSES','4.29')
/
COMMIT
/
-- FIM ---------------------------- HAD_FIXES ---------------------------------------------

