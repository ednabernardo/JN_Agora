BEGIN TRANSACTION; 

Update sm_pedidos
 set Id_natdesp = n.id_natdesp
From SM_Pedidos p, sm_natdesp n
where p.Ano = n.Ano
and p.Natdesp = n.Numero;


Update sm_pedidos
 set ID_Projetos = pp.ID_Projetos 
From sm_pedidos p, SM_Projetos pp
where p.Ano = pp.Ano
and p.Projeto = pp.Cod;

Update sm_pedidos
set id_dotacoes = d.ID_Dotacoes
From sm_pedidos p, SM_Dotacoes d
where p.Dot_seq_dot = d.Seq_dot
and p.Ano = d.ano;


Update SM_EventosCompra
set id_compras = c.id_compras
from SM_EventosCompra e, SM_Compras c
where e.Ano = c.Ano_ano
and e.Gcompra_numero = c.Gcompra_numero
and e.Numcompr = c.Numcompr;


Update SM_ItensCompra
set id_compras = c.id_compras
FROM SM_ITENSCOMPRA IC, SM_Compras C
WHERE IC.Ano = C.Ano_ano
AND IC.Numcompr = C.Numcompr
AND IC.Gcompra_numero = C.Gcompra_numero;

Update SM_ItensCompra
set ID_itens = i.ID_Itens
From sm_itenscompra c, sm_itens i
where c.Itemid = i.itemid;

Update SM_ItensCompra
set ID_Fclasses = f.ID_Fclasses
From sm_itenscompra i, SM_Fclasses f
where i.Fam_classe = f.Fam_classe
and i.Item_classe = f.Item_classe
and i.Grupo_classe = f.Grupo_classe;

Update SM_OrdemFornec
set ID_Dotacoes = D.ID_dotacoes
FROM SM_OrdemFornec O, SM_Dotacoes D
WHERE O.Dot_seq_dot = d.Seq_dot
and O.Ano = d.Ano;

Update SM_OrdemFornec
set ID_Natdesp = n.ID_NatDesp
From sm_ordemfornec o, SM_NatDesp n
where o.Ano = n.Ano
and o.Natdesp_exec = n.Numero;

Update SM_OrdemFornec
set ID_Compras = c.ID_Compras
from SM_OrdemFornec o, SM_Compras c
where o.Compr_ano = c.Ano_ano
and o.Gcompra_numero = c.Gcompra_numero
and o.Numcompr = c.Numcompr;

Update SM_Propostas
set ID_Compras = C.ID_Compras
From SM_Propostas p, SM_Compras c
WHERE P.Ano = C.Ano_ano
AND P.Numcompr = C.Numcompr
AND P.Gcompra_numero = C.Gcompra_numero;

Update SM_entradas
set ID_Parcelas = p.ID_Parcelas
From SM_entradas E, SM_Parcelas P
where e.AnoOfor = p.Ano
and e.NumOfor = p.NumOfor
and e.Gcompra_Numero = p.Gcompra_numero
and e.NumPar = p.Numpar;

Update SM_Dotacao_Projeto
set id_projetos = p.id_projetos
From sm_dotacao_projeto dp, SM_Projetos p
where dp.Ano = p.Ano
and dp.Projeto = p.cod;

Update SM_Dotacao_Projeto
set id_dotacoes = d.ID_Dotacoes
from SM_Dotacao_Projeto dp, SM_Dotacoes d
where dp.Ano = d.Ano
and dp.Dot_seq_dot = d.Seq_dot;

Update SM_Dotacoes
set ID_Natdesp = n.Id_natdesp 
From SM_Dotacoes d, SM_NatDesp n
Where d.Ano = n.Ano
And d.Num_natdesp = n.Numero;

Update SM_cotacoes
set ID_Itens = i.ID_Itens
From sm_cotacoes c, SM_Itens i
where c.ItemId = i.itemid;

Update SM_fclasses
set ID_Gclasses = g.ID_Gclasses
From SM_fclasses f, SM_Gclasses g
where f.Grupo_classe = g.Grupo_classe
and f.Item_classe = g.Item_classe;

Update SM_itens 
set ID_Gclasses = g.ID_Gclasses
From SM_itens i, SM_Gclasses g
where i.Item_classe = g.Item_classe
and i.Grupo_Classe = g.Grupo_classe;

Update SM_itens
set ID_Fclasses = f.ID_Fclasses
From sm_itens i, SM_Fclasses f
Where i.Fam_Classe = f.Fam_classe
and i.Grupo_Classe = f.Grupo_classe
and i.Item_classe = f.Item_classe;

Update SM_ItensEnt
set ID_Itens = i.ID_Itens
From sm_itensent ie, SM_Itens i
where ie.ItemId = i.itemid;

Update SM_ItensEnt
set ID_Entradas = e.ID_Entradas
From sm_itensent ie, SM_Entradas e
Where ie.Almox = e.Almox
and ie.Num_Ent = e.Num_Ent;

Update SM_ItensEnt
set ID_Parcelas = p.ID_Parcelas
From sm_itensent ie, SM_Parcelas p
where ie.Gcompra_Numero = p.Gcompra_numero
and ie.NumOfor = p.NumOfor
and ie.AnoOfor = p.Ano
and ie.NumPar = p.NumPar;

Update SM_ItensEnt
set ID_ItensParcela = ip.ID_ItensParcela
From sm_itensent ie, SM_ItensParcela ip
where ie.Gcompra_Numero = ip.Gcompra_numero
and ie.NumOfor = ip.NumOfor
and ie.AnoOfor = ip.Ano
and ie.ItemOfor = ip.ItemOfor
and ie.NumPar = ip.NumPar;

Update SM_ItensEnt
set ID_ItensOfor = io.id_itensofor 
From SM_ItensEnt ie, sm_itensofor io
where ie.NumOfor = io.Numofor
and ie.AnoOfor = io.Ano
and ie.Gcompra_Numero = io.Gcompra_numero
and ie.ItemOfor = io.Itemofor;

Update SM_ItensEnt
Set ID_MaterialAlmox =  ma.ID_MaterialAlmox 
From sm_itensent ie, SM_MaterialAlmox ma
Where ie.Almox = ma.Almox
And ie.ItemId = ma.itemid;

UPDATE SM_ITENSOFOR
Set ID_OrdemFornec = O.ID_OrdemFornec
FROM SM_ITENSOFOR IO, SM_OrdemFornec O
WHERE IO.Ano = O.Ano
AND IO.Numofor = O.Numofor;

UPDATE SM_ITENSOFOR
Set ID_Compras = C.ID_Compras
FROM SM_ITENSOFOR IO, SM_Compras C
WHERE IO.Numcompr = C.Numcompr
AND IO.Compr_ano = C.Ano_ano
AND IO.Gcompra_numero = C.Gcompra_numero;

UPDATE SM_ITENSOFOR
SET ID_ItensCompra = IC.ID_ItensCompra 
FROM SM_ITENSOFOR IO, SM_ItensCompra IC
WHERE IO.Compr_ano = IC.Ano
AND IO.Gcompra_numero = IC.Gcompra_numero
AND IO.Numcompr = IC.Numcompr
AND IO.Itemcompra = IC.Itemcompra;

UPDATE SM_ITENSPARCELA
set ID_Ordemfornec =  O.ID_OrdemFornec 
FROM SM_ITENSPARCELA IP, SM_OrdemFornec O
WHERE IP.Ano = O.Ano
AND IP.NumOfor = O.Numofor
AND IP.Gcompra_Numero = O.Gcompra_numero;

UPDATE SM_ItensParcela
SET ID_ItensOfor = IO.ID_ItensOfor 
FROM SM_ItensParcela IP, SM_ItensOfor IO
WHERE IP.Ano = IO.Ano
AND IP.NumOfor = IO.Numofor
AND IP.ItemOfor = IO.ItemOfor
AND IP.Gcompra_Numero = IO.Gcompra_numero;

Update SM_ItensParcela
set Id_Parcelas = p.ID_Parcelas
From sm_itensparcela ip, SM_Parcelas p
where ip.Ano = p.Ano
and ip.NumPar = p.Numpar
and ip.NumOfor = p.NumOfor
and ip.Gcompra_Numero = p.Gcompra_numero;

Update SM_ItensPedido
set ID_Pedidos = p.ID_Pedidos
From SM_ItensPedido ip, SM_Pedidos p
where ip.Ano = p.Ano
and ip.Gcompra_numero = p.Gcompra_numero
and ip.Numped = p.Numped;

Update SM_ItensPedido
set ID_Itens = I.ID_ITENS 
FROM SM_ItensPedido IP, SM_Itens I
WHERE IP.ItemId = I.ITEMID;

Update SM_ItensPedido
set ID_Fclasses = F.ID_Fclasses 
FROM SM_ItensPedido IP, SM_Fclasses F
WHERE IP.Fam_Classe = F.Fam_classe
AND IP.Item_Classe = F.Item_classe
AND IP.Grupo_Classe = F.Grupo_classe;

Update SM_ItensPedido
set ID_ItensCompra = IC.ID_ItensCompra 
FROM SM_ITENSPEDIDO IP, SM_ItensCompra IC
WHERE IP.Compr_ano = IC.Ano
AND IP.Gcompra_numero = IC.Gcompra_numero
AND IP.Numcompr = IC.Numcompr
AND IP.Itemcompra = IC.Itemcompra;

Update SM_ItensPedido
set ID_Gclasses = g.ID_Gclasses 
From sm_itenspedido ip, SM_Gclasses g
Where ip.Grupo_Classe = g.Grupo_classe
And ip.Item_Classe = g.Item_classe;

Update SM_ItensPedido
set ID_Compras = c.ID_Compras
from sm_itenspedido ip, SM_Compras c
where ip.Compr_ano = c.Ano_ano
and ip.Numcompr = c.Numcompr
and ip.Gcompra_numero = c.Gcompra_numero;

Update SM_ItensProposta
set ID_Propostas = P.ID_Propostas
from sm_itensproposta ip, SM_Propostas p
where ip.NumFornec = p.Numfornec
and ip.ano = p.Ano
and ip.Gcompra_Numero = p.Gcompra_numero
and ip.NumCompr = p.Numcompr;

Update SM_ItensProposta
set ID_ItensCompra = ic.ID_ItensCompra 
FROM SM_ITENSPROPOSTA IP, SM_ItensCompra ic
where ip.Ano = ic.Ano
and ip.Gcompra_Numero = ic.Gcompra_numero
and ip.NumCompr = ic.Numcompr
and ip.ItemCompra = ic.itemcompra;

Update SM_Itped_Ofor
set ID_ItensPedido = ip.ID_ItensPedido 
From SM_Itped_Ofor ipo, SM_ItensPedido ip
where ipo.Gcompra_numero = ip.Gcompra_numero
and ipo.Numped = ip.Numped
and ipo.Ano_ped = ip.Ano
and ipo.Itemped = ip.Itemped;

Update SM_Itped_Ofor
set ID_ItensOfor = io.ID_ItensOfor 
From SM_Itped_Ofor ipo, SM_ItensOfor io
where ipo.Numofor = io.Numofor
and ipo.Ano_ofor = io.Ano
and ipo.Gcompra_numero = io.Gcompra_numero
and ipo.Itemofor = io.Itemofor;

Update SM_Itped_Ofor
set ID_OrdemFornec = o.ID_OrdemFornec 
from SM_Itped_Ofor ipo, SM_OrdemFornec o
where ipo.Ano_ofor = o.Ano
and ipo.Numofor = o.Numofor
and ipo.Gcompra_numero = o.Gcompra_numero;

Update SM_Itped_Ofor
set ID_Pedidos = p.ID_Pedidos 
from SM_Itped_Ofor ipo, SM_Pedidos p
where ipo.Gcompra_numero = p.Gcompra_numero
and ipo.Ano_ped = p.Ano
and ipo.Numped = p.Numped;

Update SM_Itped_PARCELA
set ID_ItensPedido = ip.ID_ItensPedido 
FROM SM_Itped_PARCELA ipa, SM_ItensPedido ip
where ipa.Ano_Ped = ip.Ano
and ipa.Gcompra_Numero = ip.Gcompra_numero
and ipa.NumPed = ip.Numped
and ipa.ItemPed = ip.itemped;

Update SM_Itped_PARCELA
set ID_ItensParcela = ip.ID_ItensParcela 
From sm_itped_parcela ipa, SM_ItensParcela ip
where ipa.NumOfor = ip.NumOfor
and ipa.Ano_Ofor = ip.Ano
and ipa.ItemOfor = ip.ItemOfor
and ipa.Gcompra_Numero = ip.Gcompra_Numero
and ipa.NumPar = ip.NumPar;

Update SM_Itped_PARCELA
set ID_Parcelas = p.ID_Parcelas 
from SM_Itped_Parcela ipa, SM_Parcelas p
where ipa.NumOfor = p.NumOfor
and ipa.Ano_Ofor = p.Ano
and ipa.Gcompra_Numero = p.Gcompra_numero
and ipa.NumPar = p.Numpar;

Update SM_Itped_Parcela
set ID_OrdemFornec = o.ID_OrdemFornec 
From SM_Itped_Parcela ipa, SM_OrdemFornec o
where ipa.NumOfor = o.Numofor
and ipa.Ano_Ofor = o.Ano
and ipa.Gcompra_Numero = o.Gcompra_numero;

Update SM_Itped_Parcela
set ID_ItensOfor = io.ID_ItensOfor 
From SM_Itped_Parcela ipa, SM_ItensOfor io
where ipa.NumOfor = io.Numofor
and ipa.Ano_Ofor = io.Ano
and ipa.Gcompra_Numero = io.Gcompra_numero
and ipa.ItemOfor = io.itemofor;

Update SM_MaterialAlmox
Set ID_Itens = i.ID_Itens 
From SM_MaterialAlmox ma, SM_Itens i
where ma.Itemid = i.itemid;

Update SM_Natdesp_item
set ID_Natdesp = n.ID_NatDesp 
from SM_Natdesp_item ni, SM_NatDesp n
where ni.Ano = n.Ano
and ni.Natdesp = n.Numero;

Update SM_NatDesp_Item
set ID_Itens = i.ID_Itens 
from sm_natdesp_item ni, SM_Itens i
where ni.Itemid = i.itemid;

Update SM_PARCELAS
set ID_OrdemFornec = o.ID_OrdemFornec 
FROM SM_PARCELAS P, SM_OrdemFornec O
WHERE p.NumOfor = o.Numofor
and p.Ano = o.Ano
and p.Gcompra_numero = o.Gcompra_numero;

Update Sm_PrecoEstimado
set ID_Pedidos = p.id_pedidos 
From sm_precoestimado pe, SM_Pedidos p
Where pe.Ano = p.Ano
And pe.Numped = p.numped
And pe.Gcompra_numero = p.Gcompra_numero;

Update Sm_PrecoEstimado
set ID_ItensPedido = ip.ID_ItensPedido 
From sm_precoestimado pe, SM_ItensPedido ip
where pe.Ano = ip.Ano
and pe.Numped = ip.Numped
and pe.Itemped = ip.Itemped;

Update SM_Pedidos
set Flex_campo_01 = '0'
where Flex_campo_01 = 'NULL';

Update SM_PEDIDOS 
set ID_AtividadeJanus = A.ID_Atividade 
FROM SM_PEDIDOS P, c_Agora_AtividadeJanus a
where CONVERT(BIGINT,FLEX_CAMPO_01) = a.ID_Atividade;

Update SM_Pedidos
set ID_ContratoJanus = a.ID_Contrato 
from sm_pedidos p, c_Agora_ContratoJanus a
where p.Flex_campo_02 <> 'NULL'
and CONVERT(BIGINT,p.FLEX_CAMPO_02)= a.ID_Contrato;

Update sm_pedidos
SET id_centrocustojanus = CONVERT(BIGINT,FLEX_CAMPO_03)
where Flex_campo_03 <> 'NULL';

COMMIT;