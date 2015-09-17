-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
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
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da view SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','agoadm01051_sm_entradas','4.29')
/
COMMIT
/


