 -- Tarefa 79033 - Edna - 14/05/2013 - v4.29
CREATE VIEW agoadm00200_sm_fornecedor
AS
  SELECT NUMFORNEC,
    a.CGC,
    a.NOME,
    a.ATUAREG,
    a.ATIVO,
    a.SIGLA_FORN,
    a.INSCREST,
    a.INSCRMUNIC,
    a.INSCRECON,
    a.REGPROFIS,
    a.SITUACAO,
    a.CRC,
    a.VALIDCRC,
    a.CAPITAL,
    a.OBS,
    a.PATRIMLIQ,
    a.CONTRSOCIAL,
    a.DATACONTR,
    a.NUM_ORIGEM,
    a.TIPO_END,
    a.RUA,
    a.NUM_END,
    a.COMPL_END,
    a.CEP,
    a.NUM_DDD,
    a.NUM_TEL,
    a.NUM_FAX,
    a.IMP_CRC,
    a.EMISSAOCRC,
    a.MBAIRRO_CODIGO,
    a.MBAIRRO_MUNICIPIO_CODIGO,
    a.FLG_QUALIDADE,
    a.END_MAIL,
    a.SENHA,
    a.END_WEB,
    a.END_IP,
    a.USUARIO_AUT,
    a.DATA_AUT,
    a.FLG_EMAIL,
    a.CAIXA_POSTAL,
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
    a.CEL_NUM,
    a.TIPO_CADASTRO,
    a.FLG_PROPRIETARIO,
    m.nome               AS nomemunic,
    a.numfornec AS rowid_reg
  FROM sm_fornecedor a
  INNER JOIN municipio m
  ON a.mbairro_municipio_codigo = m.codigo;
/   
  INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da view no SQL SERVER',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00200_SM_FORNECEDOR','4.29')
/
COMMIT
/


