-- 1 Registros
        
 
/**************
Ano Orçamentário
**************/		
set nocount on
 
begin tran
 
INSERT INTO SM_ANOCOMPRA(ANO, DATAINI) VALUES (2013, cast('02/01/2013' as date))
                                                                                
commit tran

/**************
Centro de custo
**************/	

begin tran
 
insert into sm_projetos (cod, nome, flg_inativo, flg_transfere, ano, flex_campo_01, flex_campo_02, flex_campo_03) values (1,'Padrao','N','N',2013,'email da pessoa responsável','','')
                                                                                
commit tran

/**************
Gestor de compras
**************/	

begin tran

insert into sm_gestorcompras (pres_cpl, membro1_cpl, membro2_cpl, membro3_cpl, nome, autoriza, calc_auto, criterio,
imp_sem_empenho, com_reserva, com_local, flg_usr_fazres, flg_usr_autped, emp_dotacao, emp_convenio, emp_local, chk_reserva_ay, chk_empenho_ay,
ins_reserva_ay, ins_empenho_ay, ins_corpoemp_ay, emp_reserva, verifica_marcamod, bcopreco_auto)
values ('','','','','Gestor de compras','N','S','MEDIA','N','S','S','N','N','S','S','N','N','N','N','N','N','N','N','S')

commit tran

/**************
Numeração de compras
**************/	

begin tran

insert into sm_availnumcompra (gcompra_numero, ano_ano, lastnum_ped, lastnum_compra, lastnum_ofor) values (1,2013,0,0,0)

commit tran

/**************
Cadastro de Licitação
**************/	

begin tran

insert into sm_tipolicitacao (modalidade, flg_periodo, descr) values ('C','N','Compras')

commit tran

/**************
Unidades
**************/	

begin tran

insert into sm_unidmed (unidade, nome) values ('Kw','Kilowatts')
insert into sm_unidmed (unidade, nome) values ('CAIXA','CAIXA')
insert into sm_unidmed (unidade, nome) values ('FRASCO','FRASCO')
insert into sm_unidmed (unidade, nome) values ('ROLO','ROLO')
insert into sm_unidmed (unidade, nome) values ('JOGO','JOGO')
insert into sm_unidmed (unidade, nome) values ('PACOTE','PACOTE')
insert into sm_unidmed (unidade, nome) values ('FOLHA','FOLHA')
insert into sm_unidmed (unidade, nome) values ('ENVELOPE','ENVELOPE')
insert into sm_unidmed (unidade, nome) values ('UNIDADE','UNIDADE')
insert into sm_unidmed (unidade, nome) values ('CENTAVOS','CENTAVOS')
insert into sm_unidmed (unidade, nome) values ('SERVICO','')
insert into sm_unidmed (unidade, nome) values ('M2','')
insert into sm_unidmed (unidade, nome) values ('GALAO','')
insert into sm_unidmed (unidade, nome) values ('KG','')

commit tran

/**************
Almoxarifado
**************/

begin tran

begin tran

insert into sm_almoxarifados (nome, fechado, perm_consol, flg_veestoque,flg_gerarm, flg_msgrestr_almox, flg_msgrestr_proj, flg_msgrestr_cota, 
flg_msgrestr_lote, flg_msgrestr_apre, flg_msgrestr_aplo, flg_ccprefer, ano, flg_ccpcota, flg_impguiadist, flg_apresfechada, flg_req_sem_est, flg_mat_cota,chk_empenho_ay) 
values ('Almoxarifado','N','N','N','N','S','S','S','S','S','S','S','2009','N','S','N','N','N','N')	

commit tran

/******************
Natureza de despesa
*******************/

begin tran

insert into sm_natdesp (numero, nome, desativ, orc, execucao, natbem, ano, flex_campo_01, flex_campo_02)
values (1,'Geral','N','S','S','S','2013','','')

commit tran

/**************
Dotações
**************/

begin tran

insert into sm_dotacoes (num_natdesp, num_unor, num_funcao, num_programa, num_subprog, num_projativ, num_fonte, flg_inativo,
vlr_inicial, vlr_atual, ano) values (1,1,1,1,1,1,1,'N',1000000,838769.21,'2013')

commit tran

/******************************
Dotações por centros de custos
*******************************/

begin tran

insert into sm_dotacao_projeto (projeto, dot_seq_dot, sld_inicial, sld_atual, ano) values ('1',1,250000,239364.18,2013)

commit tran

set nocount off 


