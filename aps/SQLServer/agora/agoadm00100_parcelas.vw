 -- Tarefa 79033 - Edna - 14/05/2013 - v4.29
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
  AND ipo.itemped         = ipp.itemped;
  /
INSERT INTO HAD_FIX
(IDENT,DESCRICAO,DATAALTERACAO,SIS,TIPOOBJ,OBJETO,VERSAO)
VALUES
('TAREFA79033','Criação da view SQL Server',
 TO_DATE('14/05/2013','DD/MM/YYYY'),'AGORA','VIEW','AGOADM00100_PARCELAS','4.29')
/
COMMIT
/


