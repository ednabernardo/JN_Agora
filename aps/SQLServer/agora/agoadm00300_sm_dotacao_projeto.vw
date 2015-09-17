-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
CREATE VIEW agoadm00300_sm_dotacao_projeto
AS
  SELECT a.PROJETO,
    a.DOT_SEQ_DOT,
    a.SLD_INICIAL,
    a.SLD_ATUAL,
    a.ANO,
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
    p.nome               AS NOMEPROJ,
    a.id                 AS rowid_reg
  FROM sm_dotacao_projeto a
  INNER JOIN sm_projetos p
  ON a.ano      = p.ano
  AND a.projeto = p.cod
  /
 INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da view no SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00300_SM_DOTACAO_PROJETO','4.29')
/
COMMIT
/
   
   
   