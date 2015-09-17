-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
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
 from sm_pedidos a;
/
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','View no SQL SERVER',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00001_SM_PEDIDOS','4.29')
/
COMMIT
/

