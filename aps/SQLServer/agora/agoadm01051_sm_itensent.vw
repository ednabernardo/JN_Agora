-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
create view agoadm01051_sm_itensent as
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
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79055','Criação da view SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','agoadm01051_sm_itensent','4.29')
/
COMMIT
/

