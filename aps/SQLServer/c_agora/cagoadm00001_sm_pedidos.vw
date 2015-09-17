-- Tarefa 79033 - Edna - 15/05/2013 - v1.00
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
 -- INICIO ---------------------------- HAD_FIXES ---------------------------------------------
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação de view no SQL Server' ,
 TO_DATE('15/05/2013','DD/MM/YYYY'),'C_AGORA','VIEW','CAGOADM00001_SM_PEDIDOS','1.00')
/
COMMIT
/
-- FIM ---------------------------- HAD_FIXES ---------------------------------------------
 
  