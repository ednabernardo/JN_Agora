-- Tarefa 79033 - Edna - 14/05/2013 - v4.29
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
  AND ipo.itemofor     = io.itemofor;
  /
  
  INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da view no SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00100_ORDEMFORNEC','4.29')
/
COMMIT
/


