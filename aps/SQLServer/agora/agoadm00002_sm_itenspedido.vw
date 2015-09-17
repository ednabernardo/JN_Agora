-- Tarefa 79055 - Edna - 14/05/2012 - v4.29
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
from sm_itenspedido a;
/
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da View no SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00002_SM_ITENSPEDIDO','4.29')
/
COMMIT
/


