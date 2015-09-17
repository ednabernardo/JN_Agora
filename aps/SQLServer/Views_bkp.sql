create view agoadm00001_sm_pedidos as
select gcompra_numero,
     ano,
     numped,
     convenio,
    natdesp_exec,
    usuario,
    empresa,
    setor,
    natdesp,
    usu_cot,
    usu_aut,
    dot_seq_dot,
    projeto,
    reserva,
    data,
    descricao,
    preco_est,
    tipo,
    flg_servico,
    situacao,
    data_sit,
    tipo_entrega,
    entrega_setor_empresa,
    entrega,
    evres_ay,
    gpf_ay,
    valor01_gpf,
    valor02_gpf,
    valor03_gpf,
    valor04_gpf,
    valor05_gpf,
    valor06_gpf,
    valor07_gpf,
    valor08_gpf,
    valor09_gpf,
    valor10_gpf,
    valor11_gpf,
    valor12_gpf,
    valor13_gpf,
    flex_campo_01,
    flex_campo_02,
    flex_campo_03,
    flex_campo_04,
    flex_campo_05,
    flex_campo_06,
    flex_campo_07,
    flex_campo_08,
    flex_campo_09,
    flex_campo_10,
    prazo_entr,
    garantia,
    exam_quali,
    observacao,
	motivo_indeferimento,
    id  as rowid_reg
from sm_pedidos a	
GO

create view agoadm00002_sm_itenspedido as
select a.numped,
       a.ano,
       a.gcompra_numero,
       a.itemped,
       a.usu_sel,
       a.flg_servico,
       a.numcompr,
       a.sm_unidmed_unidade,
     (select b.unidade from
         sm_unidmed b
         where b.unidade = a.sm_unidmed_unidade) as descrunidade,
        a.sm_fclasse_fam_classe,
      ( select f.nome
          from sm_fclasses  f
         where f.fam_classe                     = a.sm_fclasse_fam_classe
           and f.sm_gclasse_grupo_classe        = a.sm_fclasse_sm_gclasse_grupo_cl
           and f.sm_gclasse_sm_iclasse_item_cla = a.sm_fclasse_sm_gclasse_sm_iclas )  as descfam,
       a.sm_fclasse_sm_gclasse_grupo_cl,
       (select g.nome
          from sm_gclasses  g
            where g.grupo_classe = a.sm_fclasse_sm_gclasse_grupo_cl
             and g.sm_iclasse_item_classe = a.sm_fclasse_sm_gclasse_sm_iclas
          ) as descgrupo,

       a.sm_fclasse_sm_gclasse_sm_iclas,
       (select i.nome
           from sm_iclasses  i
          where i.item_classe   = a.sm_fclasse_sm_gclasse_sm_iclas) as descitem,
       a.sm_item_itemid,
       a.compr_ano,
       a.itemcompra,
       a.descr,
       a.item_mat,
       a.quant_sol,
       a.quant_atend,
       a.preco_est,
       a.flg_autorizado,
       a.data_autorizacao,
       a.flg_indeferido,
       a.quant_contr,
       a.quant_entr,
       a.precounit,
       a.nat_desp,
       a.sm_pais,
       a.flex_campo_01,
       a.flex_campo_02,
       a.flex_campo_03,
       a.flex_campo_04,
       a.flex_campo_05,
       a.flex_campo_06,
       a.flex_campo_07,
       a.flex_campo_08,
       a.flex_campo_09,
       a.flex_campo_10,
       a.criterio_cot,
       id as rowid_reg
from sm_itenspedido a
GO

create view agoadm00004_sm_precoestimado as
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
	b.desejado,
	b.comprado,
    b.id AS rowid_reg
  FROM sm_itenspedido a,
    sm_precoestimado b,
    sm_fornecedor c
  WHERE b.ano           = a.ano
  AND b.gcompra_numero  = a.gcompra_numero
  AND b.numped          = a.numped
  AND b.itemped         = a.itemped
  AND c.numfornec      =  b.numfornec
GO

CREATE VIEW agoadm00010_sm_itens
AS
  SELECT a.ITEMID ,
    a.SM_FCLASSE_SM_GCLASSE_SM_ICLAS ,
    a.SM_FCLASSE_SM_GCLASSE_GRUPO_CL ,
    a.SM_FCLASSE_FAM_CLASSE ,
    a.ITEM ,
    a.NOME ,
    a.SM_UNIDMED_UNIDADE ,
    a.FLG_LOTE ,
    a.ESPECIF ,
    a.TIPO_PATR ,
    a.VIDAUFIS ,
    a.NUM_ANTIGO ,
    a.FLG_FRACAO ,
    a.FLG_DECIMAL ,
    a.FLG_DESUSO ,
    a.SM_PAIS ,
    a.FLEX_CAMPO_01 ,
    a.FLEX_CAMPO_02 ,
    a.FLEX_CAMPO_03 ,
    a.FLEX_CAMPO_04 ,
    a.FLEX_CAMPO_05 ,
    a.FLEX_CAMPO_06 ,
    a.FLEX_CAMPO_07 ,
    a.FLEX_CAMPO_08 ,
    a.FLEX_CAMPO_09 ,
    a.FLEX_CAMPO_10 ,
    a.COD_INC,
    a.id AS rowid_reg,
    g.NOME               AS NOMEGRUPO,
    f.NOME               AS NOMEFAMILIA
  FROM sm_itens a
  INNER JOIN sm_gclasses g
  ON a.SM_FCLASSE_SM_GCLASSE_SM_ICLAS  = g.SM_ICLASSE_ITEM_CLASSE
  AND a.SM_FCLASSE_SM_GCLASSE_GRUPO_CL = g.GRUPO_CLASSE
  INNER JOIN sm_fclasses f
  ON a.SM_FCLASSE_SM_GCLASSE_SM_ICLAS  = f.SM_GCLASSE_SM_ICLASSE_ITEM_CLA
  AND a.SM_FCLASSE_SM_GCLASSE_GRUPO_CL = f.SM_GCLASSE_GRUPO_CLASSE
  AND a.SM_FCLASSE_FAM_CLASSE          = f.FAM_CLASSE
GO

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
GO  

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
GO

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
  ON c.numfornec = b.numfornec
GO


CREATE VIEW agoadm00050_sm_ped_ofor_parc AS
	SELECT   IPEDPARC.QUANT					AS QUANT_ENTREGUE_ITEM_NA_PARCELA , 
			 IPEDPARC.ID	                AS ROWID_ITEMPEDIDO_PARCELA ,
			 IPARC.ITEMOFOR					AS ITEM_ORDEM_FORNEC , 
			 IPARC.QUANT						AS QUANT_ESPERADA_ITEM_NA_PARCELA , 
			 IPARC.QUANT						AS QUANT_SUGERIDA_RECEBIMENTO , 
			 IPARC.VALOR						AS VALOR_ITEM_NA_PARCELA ,
			 IPARC.ID  		                    AS ROWID_ITEMPARCELA ,
			 PARC.NUMOFOR						AS NUMERO_ORDEM ,
			 PARC.NUMPAR						AS NUMERO_PARCELA ,
			 PARC.ANO							AS ANO ,
			 PARC.GCOMPRA_NUMERO				AS GESTOR_COMPRA ,
			 PARC.DATA_PREV					AS DATA_PREVISTA ,
			 PARC.DATA_ENTR					AS DATA_ENTREGA ,
			 PARC.NUM_ENT                    AS NUM_ENTRADA,
			 PARC.LOCAL_ENTREGA				AS LOCAL_ENTREGA ,
			 PARC.NOTAFISCAL					AS NOTA_FISCAL ,
			 PARC.VALOR							AS VALOR_PARCELA ,
			 PARC.USUARIO						AS USUARIO ,
			 PARC.ID		                    AS ROWID_PARCELA ,
			 IPED.NUMPED						AS NUMERO_PEDIDO,
			 IPED.ITEMPED						AS ITEM_PEDIDO ,
			 IPED.DESCR							AS DESCRICAO_ITEM ,
			 IPED.QUANT_SOL					AS QUANT_SOLICITADA_NO_PEDIDO ,
			 IPED.QUANT_ATEND					AS QUANT_ATENDIDA_NO_PEDIDO ,
			 IPED.QUANT_CONTR					AS QUANT_CONTRATADA_NO_PEDIDO ,
			 IPED.QUANT_ENTR					AS QUANT_ENTREGUE_NO_PEDIDO,
			 IPED.ID              		        AS ROWID_ITEMPEDIDO,
			 OFOR.PARCELAS 					AS QTDE_PARCELAS_ORDEM_FORNEC ,
			 OFOR.VALOR 						AS VALOR_ORDEM_FORNEC ,
			 OFOR.DATA_INI 					AS DATA_INICIO_ORDEM_FORNEC ,
			 OFOR.DATA_FIM 					AS DATA_FIM_ORDEM_FORNEC ,
			 OFOR.USUARIO 						AS USUARIO_ORDEM_FORNEC ,
			 OFOR.DATA_OFOR 					AS DATA_ORDEM_FORNEC ,
			 OFOR.ID                    		AS ROWID_ORDEM_FORNEC ,
			 FORNEC.NUMFORNEC					AS NUM_FORNECEDOR ,
			 FORNEC.CGC							AS CGC_FORNECEDOR ,
			 FORNEC.NOME						AS NOME_FORNECEDOR ,
			 FORNEC.DATACONTR					AS DATA_CONTRATO_FORNECEDOR ,
			 FORNEC.SIGLA_FORN                  AS SIGLA_FORNECEDOR,
			 PED.SITUACAO                       AS SITUACAO,
			 PED.ANO                            AS ANO_PED,
			 FORNEC.NUMFORNEC 	                AS ROWID_FORNECEDOR ,
			 IPEDOF.ID 	                        AS ROWID_ITEM_PEDIDO_ORDEM
	  FROM   SM_ITPED_PARCELA IPEDPARC, 
			 SM_ITENSPARCELA IPARC, 
			 SM_PARCELAS PARC, 
			 SM_ITPED_OFOR IPEDOF,
			 SM_ITENSPEDIDO IPED,
			 SM_ITENSOFOR IOF,
			 SM_ORDEMFORNEC OFOR,
			 SM_FORNECEDOR FORNEC,
			 SM_PEDIDOS PED
--
	 WHERE  IPEDPARC.NUMOFOR				= IPARC.NUMOFOR
		AND IPEDPARC.ITEMOFOR			= IPARC.ITEMOFOR
		AND IPEDPARC.NUMPAR				= IPARC.NUMPAR
		AND IPEDPARC.ANO_OFOR			= IPARC.ANO
		AND IPEDPARC.GCOMPRA_NUMERO	= IPARC.GCOMPRA_NUMERO
		AND IPEDPARC.NUMOFOR				= IPARC.NUMOFOR
		AND IPEDPARC.ITEMPED				= IPED.ITEMPED
		AND IPEDPARC.NUMPED				= IPED.NUMPED
		AND IPEDPARC.ANO_PED				= IPED.ANO
		AND IPEDPARC.GCOMPRA_NUMERO	= IPED.GCOMPRA_NUMERO
		AND IPARC.NUMOFOR					= PARC.NUMOFOR
		AND IPARC.NUMPAR					= PARC.NUMPAR
		AND IPARC.ANO						= PARC.ANO
		AND IPARC.GCOMPRA_NUMERO		= PARC.GCOMPRA_NUMERO
		AND IPEDOF.NUMOFOR				= IOF.NUMOFOR
		AND IPEDOF.ITEMOFOR				= IOF.ITEMOFOR
		AND IPEDOF.ANO_OFOR				= IOF.ANO
		AND IPEDOF.GCOMPRA_NUMERO		= IOF.GCOMPRA_NUMERO
		AND IPEDOF.ITEMPED				= IPED.ITEMPED
		AND IPEDOF.NUMPED				= IPED.NUMPED
		AND IPEDOF.ANO_PED				= IPED.ANO
		AND IPEDOF.GCOMPRA_NUMERO		= IPED.GCOMPRA_NUMERO
		AND IPED.GCOMPRA_NUMERO         = PED.GCOMPRA_NUMERO
		AND IPED.NUMPED                 = PED.NUMPED
		AND IPED.ANO                    = PED.ANO
		AND OFOR.NUMFORNEC				= FORNEC.NUMFORNEC
		AND OFOR.ANO						= PARC.ANO
		AND OFOR.GCOMPRA_NUMERO			= PARC.GCOMPRA_NUMERO
		AND OFOR.NUMOFOR					= PARC.NUMOFOR
GO

CREATE VIEW agoadm00061_hd_comentario
AS
SELECT
	C.ID, 
	C.DATA_COMENT,
	C.USUARIO,
	C.COMENTARIO,
	C.TABELA,
	C.CHAVE_01,
	C.CHAVE_02,
	C.CHAVE_03,
	C.CHAVE_04,
	C.CHAVE_05,
	C.CHAVE_06,
	C.CHAVE_07,
	C.CHAVE_08,
	C.VALOR_01,
	C.VALOR_02,
	C.VALOR_03,
	C.VALOR_04,
	C.VALOR_05,
	C.VALOR_06,
	C.VALOR_07,
	C.VALOR_08,
	C.FLEX_CAMPO_01,
	C.FLEX_CAMPO_02,
	C.FLEX_CAMPO_03,
	C.FLEX_CAMPO_04,
	C.FLEX_CAMPO_05,
	C.FLEX_CAMPO_06,
	C.id AS ROWID_REG
FROM
    HD_COMENTARIO C
GO

create view agoadm00100_ordemfornec
as
  SELECT p.ano,
    p.numped,
    p.gcompra_numero,
    p.descricao,
    ip.itemped,
    ip.sm_item_itemid,
    i.nome AS nomeitem,
    ip.quant_sol,
    ip.preco_est,
    ip.precounit,
    ipo.numofor,
    io.itemofor,
    io.quant,
    io.preco_unit,
    io.preco_tot,
    o.numfornec,
    o.valor,
    o.numcompr,
    o.compr_ano,
    f.cgc,
    f.nome                  AS nomefornec,
    o.id   AS rowid_reg,
    ipo.id AS rowid_itped_ofor
  FROM sm_pedidos p
  INNER JOIN sm_itenspedido ip
  ON p.numped          = ip.numped
  AND p.ano            = ip.ano
  AND p.gcompra_numero = ip.gcompra_numero
  INNER JOIN sm_itped_ofor ipo
  ON ipo.numped          = ip.numped
  AND ipo.ano_ped        = ip.ano
  AND ipo.itemped        = ip.itemped
  AND ipo.gcompra_numero = ip.gcompra_numero
  INNER JOIN sm_ordemfornec o
  ON o.ano             = ipo.ano_ofor
  AND o.numofor        = ipo.numofor
  AND o.gcompra_numero = ipo.gcompra_numero
  INNER JOIN sm_itensofor io
  ON o.ano             = io.ano
  AND o.numofor        = io.numofor
  AND o.gcompra_numero = io.gcompra_numero
  INNER JOIN sm_fornecedor f
  ON o.numfornec = f.numfornec
  INNER JOIN sm_itens i
  ON ip.sm_item_itemid = i.itemid
  WHERE ipo.numofor    = io.numofor
  AND ipo.itemofor     = io.itemofor
GO

create view agoadm00100_parcelas as
  SELECT p.numofor,
    p.numpar,
    p.ano,
    p.data_prev,
    p.data_entr,
    p.notafiscal,
    p.local_entrega,
    p.usuario,
    p.valor AS valorparcela,
    ip.itemofor,
    ip.valor  AS valoritem,
    o.valor   AS valorordem,
    ip.quant  AS quant_esperada,
    ipp.quant AS quant_recebida,
    ipp.numped,
    iped.sm_item_itemid,
    iped.itemped,
    iped.sm_unidmed_unidade,
    o.id   AS rowid_ordem,
    p.id   AS rowid_parcela,
    ipp.id AS rowid_itped_parcela,
    ipo.id AS rowid_itped_ofor
  FROM sm_parcelas p
  INNER JOIN sm_itensparcela ip
  ON p.numpar          = ip.numpar
  AND p.ano            = ip.ano
  AND p.numofor        = ip.numofor
  AND p.gcompra_numero = ip.gcompra_numero
  INNER JOIN sm_ordemfornec o
  ON o.numofor         = p.numofor
  AND o.ano            = p.ano
  AND o.gcompra_numero = p.gcompra_numero
  INNER JOIN sm_itensofor io
  ON o.ano             = io.ano
  AND o.numofor        = io.numofor
  AND o.gcompra_numero = io.gcompra_numero
  INNER JOIN sm_itped_ofor ipo
  ON ipo.numofor         = io.numofor
  AND ipo.itemofor       = io.itemofor
  AND ipo.gcompra_numero = io.gcompra_numero
  INNER JOIN sm_itped_parcela ipp
  ON ipp.numofor         = p.numofor
  AND ipp.ano_ofor       = p.ano
  AND ipp.gcompra_numero = p.gcompra_numero
  AND ipp.numpar         = p.numpar
  AND ipp.itemofor       = ipo.itemofor
  INNER JOIN sm_itenspedido iped
  ON iped.numped          = ipp.numped
  AND iped.ano            = ipp.ano_ped
  AND iped.gcompra_numero = ipp.gcompra_numero
  AND iped.itemped        = ipp.itemped
  WHERE ipo.numped        = ipp.numped
  AND ipo.ano_ped         = ipp.ano_ofor
  AND ipo.itemped         = ipp.itemped
 GO
 
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
  ON a.mbairro_municipio_codigo = m.codigo
GO

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
  GO
  
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
    n.nome               AS NOMENATDESP
  FROM sm_dotacoes a
  INNER JOIN sm_natdesp n
  ON a.ano          = n.ano
  AND a.num_natdesp = n.numero
GO
 
CREATE VIEW agoadm00400_sm_natdesp_item
AS
  SELECT a.NATDESP,
    a.ANO,
    a.SM_ITEM_ITEMID,
    n.nome               AS nomenatdesp,
    i.nome               AS nomeitem,
    a.id                 AS rowid_reg
  FROM sm_natdesp_item a
  INNER JOIN sm_natdesp n
  ON a.ano      = n.ano
  AND a.natdesp = n.numero
  INNER JOIN sm_itens i
  ON a.sm_item_itemid = i.itemid
GO

CREATE VIEW agoadm00401_sm_natdesp
AS
  SELECT a.NUMERO,
    a.NOME,
    a.DESATIV,
    a.ORC,
    a.EXECUCAO,
    a.NATBEM,
    a.VIDAUCONT,
    a.INDICE_RESIDUAL,
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
    a.id AS rowid_reg
  FROM sm_natdesp a
GO

CREATE VIEW agoadm01005_cancela_empenhos  AS
 SELECT 
    p.ano            AS ano_pedido,
    p.gcompra_numero AS gestor_pedido,
    p.numped         AS num_pedido,
	o.numofor        AS num_ordem,
    'Pedido no.'
    + p.numped
    + '/'
    + p.ano        AS id_empenho,
    '0000-PREV'     AS status_empenho,
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
    getdate()                                      AS data_empenho,
    'SM_ITENSPEDIDO'                              AS origem_empenho,
	(p.numped * 10000 + p.ano) * 10000 + cast((n.flex_campo_01+n.flex_campo_02) As numeric) AS chave_empenho,
     sum(iofor.preco_tot)                          AS valor_empenho
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
  INNER JOIN sm_itensent ie
  ON ie.gcompra_numero  = iofor.gcompra_numero
  and ie.numofor        = iofor.numofor
  and ie.anoofor        = iofor.ano
  and ie.itemofor       = iofor.itemofor
  INNER JOIN sm_itenspedido i
  ON io.ano_ped        = i.ano
  AND i.gcompra_numero = io.gcompra_numero
  AND i.numped         = io.numped
  AND io.itemped       = i.itemped
  INNER JOIN sm_ordemfornec o
  ON io.ano_ofor        = o.ano
  AND io.numofor        = o.numofor
  AND io.gcompra_numero = o.gcompra_numero
  INNER JOIN sm_entradas e
  ON ie.almox          = e.almox
  and ie.num_ent       = e.num_ent
  INNER JOIN sm_fornecedor f
  ON o.numfornec = f.numfornec
  INNER JOIN sm_natdesp_item ni
  on i.sm_item_itemid = ni.sm_item_itemid
  and ni.ano  = p.ano
  INNER JOIN sm_natdesp n
  on ni.natdesp = n.numero
  and ni.ano    = n.ano  
  and p.situacao = 'CANCELADO'
  and o.numfornec <> 0
  Group by 
    p.ano,
    p.gcompra_numero,
    p.numped,
	o.numofor,
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
	(p.numped * 10000 + p.ano) * 10000 + cast((n.flex_campo_01+n.flex_campo_02) As numeric) 
GO

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

CREATE VIEW agoadm01050_empenhos_pedido AS
 SELECT 
    p.ano        AS ano_pedido,
    p.gcompra_numero AS gestor_pedido,
    p.numped         AS num_pedido,
	o.numofor        AS num_ordem,
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
    getdate()                                           AS data_empenho,
    (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01+n.flex_campo_02) as numeric)         AS chave_empenho,
    sum(iofor.preco_tot)                          AS valor_empenho
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
  INNER JOIN sm_itensent ie
  ON ie.gcompra_numero  = iofor.gcompra_numero
  and ie.numofor        = iofor.numofor
  and ie.anoofor        = iofor.ano
  and ie.itemofor       = iofor.itemofor
  INNER JOIN sm_itenspedido i
  ON io.ano_ped        = i.ano
  AND i.gcompra_numero = io.gcompra_numero
  AND i.numped         = io.numped
  AND io.itemped       = i.itemped
  INNER JOIN sm_ordemfornec o
  ON io.ano_ofor        = o.ano
  AND io.numofor        = o.numofor
  AND io.gcompra_numero = o.gcompra_numero
  INNER JOIN sm_entradas e
  ON ie.almox          = e.almox
  and ie.num_ent       = e.num_ent
  INNER JOIN sm_fornecedor f
  ON e.numfornec = f.numfornec
  INNER JOIN sm_natdesp_item ni
  on i.sm_item_itemid = ni.sm_item_itemid
  and ni.ano  = p.ano
  INNER JOIN sm_natdesp n
  on ni.natdesp = n.numero
  and ni.ano    = n.ano  
  and o.numfornec = 0
  Group by p.ano,
    p.gcompra_numero,
    p.numped,
	o.numofor,
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
    (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01+n.flex_campo_02) as numeric)
GO

create view agoadm01051_sm_entradas as
select e.almox,
     e.num_ent,
     e.tipo,
     e.usuario,
     e.numfornec,
	 f.cgc,
     f.nome,
	 f.sigla_forn,
     e.numofor,
	 e.anoofor,
     e.ano,
     e.gcompra_numero,
     e.numpar,
     e.data_entrega,
     e.notafiscal,
	 e.flg_patrim,
	 e.empenho,
	 e.numproc,
	 e.flg_consol,
	 e.gest_patr,
	 e.tipo_patr,
	 e.situacao_ent,
	 e.usu_sit_ent,
	 e.flg_finaliz,
	 e.usu_finaliz,
     e.flex_campo_01,
     e.flex_campo_02,
     e.flex_campo_03,
     e.flex_campo_04,
     e.flex_campo_05,
     e.flex_campo_06,
     e.flex_campo_07,
     e.flex_campo_08,
     e.flex_campo_09,
     e.flex_campo_10,
     e.id  as rowid_entrada
 from sm_entradas e,
      sm_fornecedor f
 Where e.numfornec = f.numfornec
GO

create or replace view agoadm01051_sm_itensent as
select ie.almox,
     ie.num_ent,
     ie.itemid,
     i.nome,
     ie.quant,
     ie.valor,
     ie.id  as rowid_reg
 from sm_itensent ie,
      sm_itens i
 Where ie.itemid = i.itemid
 GO
 
create view hd_coment_ped
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

CREATE VIEW hd_last_coment_ped as
    SELECT MAX(id) AS maxid,
    valor_01     AS ano,
    valor_02     AS gestor,
    valor_03     AS numped
  FROM hd_comentario
  WHERE tabela = 'SM_PEDIDOS'
  group by valor_01, valor_02, valor_03
GO  

CREATE VIEW cagoadm00001_sm_pedidos
AS
  SELECT a.gcompra_numero,
    a.ano,
    a.numped,
    a.convenio,
    a.natdesp_exec,
    a.usuario,
    a.empresa,
    a.setor,
    a.natdesp,
    a.usu_cot,
    a.usu_aut,
    a.dot_seq_dot,
    a.projeto,
    a.reserva,
    a.data,
    a.descricao,
    a.preco_est,
    a.tipo,
    a.flg_servico,
    a.situacao,
    a.data_sit,
    a.tipo_entrega,
    a.entrega_setor_empresa,
    a.entrega,
    a.evres_ay,
    a.gpf_ay,
    a.valor01_gpf,
    a.valor02_gpf,
    a.valor03_gpf,
    a.valor04_gpf,
    a.valor05_gpf,
    a.valor06_gpf,
    a.valor07_gpf,
    a.valor08_gpf,
    a.valor09_gpf,
    a.valor10_gpf,
    a.valor11_gpf,
    a.valor12_gpf,
    a.valor13_gpf,
    a.flex_campo_01,
    a.flex_campo_02,
    a.flex_campo_03,
    a.flex_campo_04,
    a.flex_campo_05,
    a.flex_campo_06,
    a.flex_campo_07,
    a.flex_campo_08,
    a.flex_campo_09,
    a.flex_campo_10,
    a.prazo_entr,
    a.garantia,
    a.exam_quali,
    a.observacao,
    p.nome nomeprojeto,
	a.motivo_indeferimento,
    a.rowid_reg,
    aj.atividade     AS nomeatividade,
    cj.identificador AS nomecontrato,
    c.comentario AS last_comentario
  FROM AGOADM00001_SM_PEDIDOS a
  LEFT OUTER JOIN sm_projetos p ON p.ano = a.ano and p.cod = a.projeto
  LEFT OUTER JOIN hd_last_coment_ped lc ON lc.ano = a.ano and lc.numped = a.numped and lc.gestor = a.gcompra_numero
  LEFT OUTER JOIN hd_coment_ped c ON c.ano = a.ano and c.numped = a.numped and c.gestor = a.gcompra_numero and c.id = lc.maxid
  LEFT OUTER JOIN c_agora_atividadejanus aj ON a.flex_campo_01 = aj.id_atividade
  LEFT OUTER JOIN c_agora_contratojanus cj ON a.flex_campo_02 = cj.id_contrato
GO
