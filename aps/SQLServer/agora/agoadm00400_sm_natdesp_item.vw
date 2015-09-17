-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
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
 /
 
  
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da view no SQL Server',
 TO_DATE('14/05/2012','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00400_SM_NATDESP_ITEM','4.29')
/
COMMIT
/
   
  