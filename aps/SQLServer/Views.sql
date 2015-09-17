create view AgoAdm00001_SM_Pedidos as
select Id_Pedidos,
	Ano,
	Gcompra_Numero,
	NumPed,
	Convenio,
    Natdesp_Exec,
    Usuario,
    Empresa,
    Setor,
    Natdesp,
    Usu_Cot,
    Usu_Aut,
    Dot_Seq_Dot,
    Projeto,
    Reserva,
    Data,
    Descricao,
    Preco_Est,
    Tipo,
    Flg_Servico,
    Situacao,
    Data_Sit,
    Tipo_Entrega,
    Entrega_Setor_Empresa,
    Entrega,
    Evres_Ay,
    Gpf_Ay,
    Valor01_Gpf,
    Valor02_Gpf,
    Valor03_Gpf,
    Valor04_Gpf,
    Valor05_Gpf,
    Valor06_Gpf,
    Valor07_Gpf,
    Valor08_Gpf,
    Valor09_Gpf,
    Valor10_Gpf,
    Valor11_Gpf,
    Valor12_Gpf,
    Valor13_Gpf,
    Flex_Campo_01,
    Flex_Campo_02,
    Flex_Campo_03,
    Flex_Campo_04,
    Flex_Campo_05,
    Flex_Campo_06,
    Flex_Campo_07,
    Flex_Campo_08,
    Flex_Campo_09,
    Flex_Campo_10,
    Prazo_Entr,
    Garantia,
    Exam_Quali,
    Observacao,
	Motivo_Indeferimento,
	ID_Projetos,
	id_centrocustojanus,
	id_atividadejanus, 
	id_contratojanus,
	Id_Pedidos  As Rowid_Reg
from SM_Pedidos a	
GO

create view AgoAdm00002_SM_ItensPedido as
select a.Numped,
       a.Ano,
       a.Gcompra_Numero,
       a.Itemped,
       a.Usu_Sel,
       a.Flg_Servico,
       a.Numcompr,
       a.Unidade,
     (Select b.Unidade From
         SM_Unidmed B
         Where b.Unidade = a.Unidade) As Descrunidade,
        a.Fam_Classe,
      ( Select F.Nome
          From SM_Fclasses  F
         Where F.ID_Fclasses                     = a.ID_Fclasses )  As Descfam,
       a.Grupo_Classe,
       (Select G.Nome
          From SM_Gclasses  G
            Where G.Grupo_Classe = a.ID_Gclasses           
          ) As Descgrupo,
       a.Item_Classe,
       (Select I.Nome
           From Sm_Iclasses  I
          Where I.Item_Classe   = a.Item_Classe) As Descitem,
       a.Itemid,
       a.Compr_Ano,
       a.Itemcompra,
       a.Descr,
       a.Item_Mat,
       a.Quant_Sol,
       a.Quant_Atend,
       a.Preco_Est,
       a.Flg_Autorizado,
       a.Data_Autorizacao,
       a.Flg_Indeferido,
       a.Quant_Contr,
       a.Quant_Entr,
       a.Precounit,
       a.Nat_Desp,
       a.Sm_Pais,
       a.Flex_Campo_01,
       a.Flex_Campo_02,
       a.Flex_Campo_03,
       a.Flex_Campo_04,
       a.Flex_Campo_05,
       a.Flex_Campo_06,
       a.Flex_Campo_07,
       a.Flex_Campo_08,
       a.Flex_Campo_09,
       a.Flex_Campo_10,
       a.Criterio_Cot,
       a.id_Itenspedido,
	   a.id_pedidos
from SM_itenspedido a
GO

create view AgoAdm00004_SM_PrecoEstimado as
SELECT b.Numfornec,
    c.Nome As Descforn,
    c.Cgc,
	c.Sigla_Forn,
    b.MarcaMod,
    b.Data,
    b.Preco,
    a.ItemPed,
    a.ano,
    A.Gcompra_Numero,
    a.Numped,
    a.Descr,
    b.Seq,
    a.ItemId,
	a.id_itenspedido,
	a.id_pedidos,
	b.especificacao,
    b.Flex_Campo_01,
    b.Flex_Campo_02,
    b.Flex_Campo_03,
    b.Flex_Campo_04,
    b.Flex_Campo_05,
    b.Flex_Campo_06,
    b.Flex_Campo_07,
    b.Flex_Campo_08,
    b.Flex_Campo_09,
    b.Flex_Campo_10,
    b.Flg_Calculo,
    b.Dt_Prev_Ent,
	b.TipoPrazo,
    b.Classif_Forn,
    b.Origem,
    b.Usuario,
	b.Desejado,
	b.Comprado,
    b.Id_PrecoEstimado
  From SM_Itenspedido a,
    SM_PrecoEstimado b,
    SM_Fornecedor c
  Where b.ID_ItensPedido           = a.ID_ItensPedido
   And c.Numfornec      =  b.Numfornec 
GO

CREATE VIEW AgoAdm00010_SM_Itens
AS
  SELECT a.Itemid ,
    a.Item_Classe ,
    a.Grupo_Classe ,
    a.Fam_Classe ,
    a.Item ,
    a.Nome ,
    a.Unidade ,
    a.Flg_Lote ,
    a.Especif ,
    a.Tipo_Patr ,
    a.Vidaufis ,
    a.Num_Antigo ,
    a.Flg_Fracao ,
    a.Flg_Decimal ,
    a.Flg_Desuso ,
    a.Sm_Pais ,
    a.Flex_Campo_01 ,
    a.Flex_Campo_02 ,
    a.Flex_Campo_03 ,
    a.Flex_Campo_04 ,
    a.Flex_Campo_05 ,
    a.Flex_Campo_06 ,
    a.Flex_Campo_07 ,
    a.Flex_Campo_08 ,
    a.Flex_Campo_09 ,
    a.Flex_Campo_10 ,
    a.Cod_Inc,
    a.Id_Itens As Rowid_Reg,
    g.Nome               As Nomegrupo,
    f.Nome               As Nomefamilia 
  FROM SM_itens a
  INNER JOIN SM_gclasses g
  ON a.ID_Gclasses  = g.ID_Gclasses
  INNER JOIN SM_fclasses f
  ON  a.ID_Fclasses  = f.ID_Fclasses
GO

CREATE VIEW AgoAdm00011_SM_Gclasses
AS
  SELECT a.Item_Classe,
    a.Grupo_Classe,
    a.Nome,
    a.Flex_Campo_01,
    a.Flex_Campo_02,
    a.Flex_Campo_03,
    a.Flex_Campo_04,
    a.Flex_Campo_05,
    a.Flex_Campo_06,
    a.Flex_Campo_07,
    a.Flex_Campo_08,
    a.Flex_Campo_09,
    a.Flex_Campo_10,
    a.Id_Gclasses As Rowid_Reg 
  FROM SM_Gclasses a
GO  

CREATE VIEW AgoAdm00012_SM_Fclasses
AS
  SELECT a.Grupo_Classe,
    a.Item_Classe,
    a.Fam_Classe,
    a.Nome,
    a.Flg_Imovel,
    a.Flg_Patrim,
    a.Flg_Serv,
    a.Flg_Almox,
    a.Flg_Obras,
    a.Descricao,
    a.Vidaucont,
    a.Deprec,
    a.Natdesp,
    a.Flex_Campo_01,
    a.Flex_Campo_02,
    a.Flex_Campo_03,
    a.Flex_Campo_04,
    a.Flex_Campo_05,
    a.Flex_Campo_06,
    a.Flex_Campo_07,
    a.Flex_Campo_08,
    a.Flex_Campo_09,
    a.Flex_Campo_10,
    a.Indice_Residual,
    a.Id_Fclasses As Rowid_Reg 
  FROM SM_Fclasses a
GO

CREATE VIEW AgoAdm00040_SM_ItensPedido
AS
  SELECT b.NumFornec,
    c.Nome As Descforn,
    c.Cgc,
	c.Sigla_Forn,
    b.MarcaMod,
    b.Data,
    b.Preco,
    a.ItemPed,
    a.Ano,
    a.Gcompra_Numero,
    a.Numped,
    a.Descr,
    a.Unidade As Unidmed,
    a.Quant_Atend,
    b.Seq,
    a.ItemId                 As ItemId,
    b.Flex_Campo_01,
    b.Flex_Campo_02,
    b.Flex_Campo_03,
    b.Flex_Campo_04,
    b.Flex_Campo_05,
    b.Flex_Campo_06,
    b.Flex_Campo_07,
    b.Flex_Campo_08,
    b.Flex_Campo_09,
    b.Flex_Campo_10,
    b.Flg_Calculo,
    b.Dt_Prev_Ent,
    b.Classif_Forn,
    b.Origem,
    b.Usuario,
    b.Comprado,
	b.Desejado,
    b.Id_PrecoEstimado As Rowid_Reg 
  FROM SM_ItensPedido a
  INNER JOIN SM_PrecoEstimado b
  ON b.ID_ItensPedido             = a.ID_ItensPedido
  INNER JOIN SM_Fornecedor c
  ON c.numfornec = b.numfornec
GO


CREATE VIEW AgoAdm00050_SM_Ped_Ofor_Parc AS
	SELECT   Ipedparc.Quant					As Quant_Entregue_Item_Na_Parcela , 
			 Ipedparc.ID_ItpedParcela,
			 Iparc.Itemofor					As Item_Ordem_Fornec , 
			 Iparc.Quant						As Quant_Esperada_Item_Na_Parcela , 
			 Iparc.Quant						As Quant_Sugerida_Recebimento , 
			 Iparc.Valor						As Valor_Item_Na_Parcela ,
			 Iparc.ID_ItensParcela,
			 Parc.Numofor						As Numero_Ordem ,
			 Parc.Numpar						As Numero_Parcela ,
			 Parc.Ano							As Ano ,
			 Parc.Gcompra_Numero				As Gestor_Compra ,
			 Parc.Data_Prev					As Data_Prevista ,
			 Parc.Data_Entr					As Data_Entrega ,
			 Parc.Num_Ent                    As Num_Entrada,
			 Parc.Local_Entrega				As Local_Entrega ,
			 Parc.Notafiscal					As Nota_Fiscal ,
			 Parc.Valor							As Valor_Parcela ,
			 Parc.Usuario						As Usuario ,
			 Parc.Id_Parcelas,  
			 Parc.Id_entradas,  
			 Iped.Numped						As Numero_Pedido,
			 Iped.Itemped						As Item_Pedido ,
			 Iped.Descr							As Descricao_Item ,
			 Iped.Quant_Sol					As Quant_Solicitada_No_Pedido ,
			 Iped.Quant_Atend					As Quant_Atendida_No_Pedido ,
			 Iped.Quant_Contr					As Quant_Contratada_No_Pedido ,
			 Iped.Quant_Entr					As Quant_Entregue_No_Pedido,
			 Iped.Id_ItensPedido,
			 Ofor.Parcelas 					As Qtde_Parcelas_Ordem_Fornec ,
			 Ofor.Valor 						As Valor_Ordem_Fornec ,
			 Ofor.Data_Ini 					As Data_Inicio_Ordem_Fornec ,
			 Ofor.Data_Fim 					As Data_Fim_Ordem_Fornec ,
			 Ofor.Usuario 						As Usuario_Ordem_Fornec ,
			 Ofor.Data_Ofor 					As Data_Ordem_Fornec ,
			 Ofor.Id_OrdemFornec,
			 Fornec.Numfornec					As Num_Fornecedor ,
			 Fornec.Cgc							As Cgc_Fornecedor ,
			 Fornec.Nome						As Nome_Fornecedor ,
			 Fornec.Datacontr					As Data_Contrato_Fornecedor ,
			 Fornec.Sigla_Forn                  As Sigla_Fornecedor,
			 Ped.Situacao                       As Situacao,
			 Ped.Ano                            As Ano_Ped,
			 Fornec.Numfornec,
			 Ipedof.Id_ItPedOfor
	  FROM   SM_Itped_Parcela Ipedparc, 
			 SM_Itensparcela Iparc, 
			 SM_Parcelas Parc, 
			 SM_Itped_Ofor Ipedof,
			 SM_Itenspedido Iped,
			 SM_Itensofor Iof,
			 SM_Ordemfornec Ofor,
			 SM_Fornecedor Fornec,
			 SM_Pedidos Ped
--
	 WHERE  Ipedparc.ID_ItensParcela	= Iparc.ID_ItensParcela
		And Ipedparc.ID_ItensPedido 	= Iped.ID_ItensPedido
		And Iparc.ID_Parcelas			= Parc.ID_Parcelas
		And Ipedof.ID_ItensOfor			= Iof.ID_ItensOfor
		And Ipedof.ID_ItensPedido		= Iped.ID_ItensPedido
		And Iped.ID_Pedidos             = Ped.ID_Pedidos
		And Ofor.Numfornec				= Fornec.Numfornec
		And Ofor.ID_OrdemFornec			= Parc.ID_OrdemFornec
GO

CREATE VIEW agoadm00061_SM_Comentario
AS
SELECT
	c.Id_Comentario, 
	c.Data_Coment,
	c.Usuario,
	c.Comentario,
	c.Tabela,
	c.Chave_01,
	c.Chave_02,
	c.Chave_03,
	c.Chave_04,
	c.Chave_05,
	c.Chave_06,
	c.Chave_07,
	c.Chave_08,
	c.Valor_01,
	c.Valor_02,
	c.Valor_03,
	c.Valor_04,
	c.Valor_05,
	c.Valor_06,
	c.Valor_07,
	c.Valor_08,
	c.Flex_Campo_01,
	c.Flex_Campo_02,
	c.Flex_Campo_03,
	c.Flex_Campo_04,
	c.Flex_Campo_05,
	c.Flex_Campo_06,
	c.Id_Comentario As Rowid_Reg
FROM
    SM_Comentario C
GO

create view AgoAdm00100_OrdemFornec
as
  SELECT p.Ano,
    p.Numped,
    p.Gcompra_Numero,
    p.Descricao,
    ip.Itemped,
    ip.ItemId,
    i.Nome As Nomeitem,
    ip.Quant_Sol,
    ip.Preco_Est,
    ip.PrecoUnit,
    Ipo.Numofor,
    Io.Itemofor,
    Io.Quant,
    Io.Preco_Unit,
    Io.Preco_Tot,
    O.Numfornec,
    O.Valor,
    O.Numcompr,
    O.Compr_Ano,
    F.Cgc,
    F.Nome                  As Nomefornec,
    O.Id_OrdemFornec        As Rowid_Reg,
    Ipo.Id_ItpedOfor As Rowid_Itped_Ofor
  FROM SM_Pedidos p
  INNER JOIN SM_ItensPedido ip
  ON  p.ID_Pedidos          = ip.ID_Pedidos
  INNER JOIN SM_Itped_Ofor ipo
  ON  ipo.ID_ItensPedido         = ip.ID_ItensPedido
  INNER JOIN SM_OrdemFornec o
  ON  o.ID_OrdemFornec             = ipo.ID_OrdemFornec
  INNER JOIN SM_ItensOfor io
  ON  o.ID_OrdemFornec            = io.ID_OrdemFornec
  INNER JOIN SM_Fornecedor f
  ON o.numfornec = f.numfornec
  INNER JOIN SM_Itens i
  ON ip.ID_Itens = i.ID_Itens
  WHERE ipo.ID_ItensOfor    = io.ID_ItensOfor
GO

create view AgoAdm00100_Parcelas as
  SELECT p.Numofor,
    p.Numpar,
    p.Ano,
    p.Data_Prev,
    p.Data_Entr,
    p.Notafiscal,
    p.Local_Entrega,
    p.Usuario,
    p.Valor As Valorparcela,
    ip.Itemofor,
    ip.Valor  As Valoritem,
    o.Valor   As Valorordem,
    ip.Quant  As Quant_Esperada,
    ipp.Quant As Quant_Recebida,
    ipp.Numped,
    iped.Itemid,
    iped.Itemped,
    iped.Unidade,
    o.Id_OrdemFornec   As Rowid_Ordem,
    p.Id_Parcelas   As Rowid_Parcela,
    ipp.Id_ItpedParcela As Rowid_Itped_Parcela,
    ipo.Id_ItpedOfor As Rowid_Itped_Ofor
  FROM SM_parcelas p
  INNER JOIN SM_ItensParcela ip
  ON  p.ID_Parcelas    = ip.ID_Parcelas
  INNER JOIN SM_OrdemFornec o
  ON  o.ID_OrdemFornec = p.ID_OrdemFornec
  INNER JOIN SM_ItensOfor io
  ON  o.ID_OrdemFornec  = io.ID_OrdemFornec
  INNER JOIN SM_Itped_Ofor ipo
  ON  ipo.ID_ItensOfor   = io.ID_ItensOfor
  INNER JOIN SM_Itped_Parcela ipp
  ON  ipp.ID_Parcelas     = p.ID_Parcelas
  INNER JOIN SM_ItensPedido iped
  ON iped.ID_ItensPedido  = ipp.ID_ItensPedido
  WHERE ipo.ID_ItensPedido = ipp.ID_ItensPedido
 GO
 
CREATE VIEW AgoAdm00200_SM_Fornecedor
AS
  SELECT a.Numfornec,
    a.Cgc,
    a.Nome,
    a.Atuareg,
    a.Ativo,
    a.Sigla_Forn,
    a.Inscrest,
    a.Inscrmunic,
    a.Inscrecon,
    a.Regprofis,
    a.Situacao,
    a.Crc,
    a.Validcrc,
    a.Capital,
    a.Obs,
    a.Patrimliq,
    a.Contrsocial,
    a.Datacontr,
    a.Num_Origem,
    a.Tipo_End,
    a.Rua,
    a.Num_End,
    a.Compl_End,
    a.Cep,
    a.Num_Ddd,
    a.Num_Tel,
    a.Num_Fax,
    a.Imp_Crc,
    a.Emissaocrc,
    a.Mbairro_Codigo,
    a.Mbairro_Municipio_Codigo,
    a.Flg_Qualidade,
    a.End_Mail,
    a.Senha,
    a.End_Web,
    a.End_Ip,
    a.Usuario_Aut,
    a.Data_Aut,
    a.Flg_Email,
    a.Caixa_Postal,
    a.Flex_Campo_01,
    a.Flex_Campo_02,
    a.Flex_Campo_03,
    a.Flex_Campo_04,
    a.Flex_Campo_05,
    a.Flex_Campo_06,
    a.Flex_Campo_07,
    a.Flex_Campo_08,
    a.Flex_Campo_09,
    a.Flex_Campo_10,
    a.Cel_Num,
    a.Tipo_Cadastro,
    a.Flg_Proprietario,
    NULL As Nomemunic, 
    --m.Nome               As Nomemunic,
    a.Numfornec As Rowid_Reg
  FROM SM_fornecedor a
GO

CREATE VIEW AgoAdm00300_SM_Dotacao_Projeto
AS
  Select a.Projeto,
    a.Dot_Seq_Dot,
    a.Sld_Inicial,
    a.Sld_Atual,
    a.Ano,
    a.Flex_Campo_01,
    a.Flex_Campo_02,
    a.Flex_Campo_03,
    a.Flex_Campo_04,
    a.Flex_Campo_05,
    a.Flex_Campo_06,
    a.Flex_Campo_07,
    a.Flex_Campo_08,
    a.Flex_Campo_09,
    a.Flex_Campo_10,
    p.Nome               As Nomeproj,
    a.Id_DotacaoProjeto  As Rowid_Reg
  FROM SM_Dotacao_Projeto a
  INNER JOIN SM_Projetos p
  ON a.ID_Projetos      = p.ID_Projetos
GO
  
CREATE VIEW AgoAdm00300_SM_Dotacoes
AS
  SELECT a.Seq_Dot,
   a.Num_Natdesp,
   a.Num_Unor,
   a.Num_Funcao,
   a.Num_Programa,
   a.Num_Subprog,
   a.Num_Projativ,
   a.Num_Fonte,
   a.Flg_Inativo,
   a.Vlr_Inicial,
   a.Vlr_Atual,
   a.Ano,
   a.Descricao,
   a.Flex_Campo_01,
   a.Flex_Campo_02,
   a.Flex_Campo_03,
   a.Flex_Campo_04,
   a.Flex_Campo_05,
   a.Flex_Campo_06,
   a.Flex_Campo_07,
   a.Flex_Campo_08,
   a.Flex_Campo_09,
   a.Flex_Campo_10,
   n.Nome               As Nomenatdesp
  FROM SM_Dotacoes a
  INNER JOIN SM_Natdesp n
  ON a.ID_Natdesp          = n.ID_Natdesp
GO
 
CREATE VIEW AgoAdm00400_SM_Natdesp_Item
AS
  SELECT a.Natdesp,
    a.Ano,
    a.Itemid,
    n.Nome               AS nomenatdesp,
    i.Nome               AS nomeitem,
    a.Id_NatdespItem     AS rowid_reg
  FROM SM_Natdesp_Item a
  INNER JOIN SM_Natdesp n
  ON a.ID_Natdesp      = n.ID_Natdesp
  INNER JOIN SM_Itens i
  ON a.ID_Itens = i.ID_Itens
GO

CREATE VIEW agoadm00401_SM_natdesp
AS
  SELECT a.Numero,
    a.Nome,
    a.Desativ,
    a.Orc,
    a.Execucao,
    a.Natbem,
    a.Vidaucont,
    a.Indice_Residual,
    a.Ano,
    a.Flex_Campo_01,
    a.Flex_Campo_02,
    a.Flex_Campo_03,
    a.Flex_Campo_04,
    a.Flex_Campo_05,
    a.Flex_Campo_06,
    a.Flex_Campo_07,
    a.Flex_Campo_08,
    a.Flex_Campo_09,
    a.Flex_Campo_10,
    a.Id_NatDesp As Rowid_Reg
  FROM SM_Natdesp a
GO

CREATE VIEW AgoAdm01005_Cancela_Empenhos  AS
 SELECT 
    p.Ano            AS Ano_Pedido,
    p.Gcompra_Numero AS Gestor_Pedido,
    p.Numped         AS Num_Pedido,
	o.Numofor        AS Num_Ordem,
    'Pedido no.'
    + p.Numped
    + '/'
    + p.Ano        AS Id_Empenho,
    '0000-PREV'     AS Status_Empenho,
    p.Projeto       AS CentroCusto_Empenho,
    p.Flex_Campo_02 AS Contrato_Empenho,
    f.Cgc                            AS Fornec_CNPJ,
	f.Nome                           As Fornec_Nome,
    f.Flex_Campo_01                  AS Id_FornecJanus,
    p.Flex_Campo_01                  AS Atividade_Empenho,
    cast(n.Flex_Campo_01 as numeric)                 As GrupoOrc_Empenho,
    cast(n.Flex_Campo_02 as numeric)                 As Catorc_Empenho,
    'Referente ao pedido de compra no.'
    + p.Numped
    +'/'
    + p.Ano
    + ':'
    + p.Descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.Flex_Campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.Flex_Campo_02 as numeric) as varchar) AS Descr_Empenho,
    getdate()                                      AS Data_Empenho,
    'SM_ITENSPEDIDO'                              AS Origem_Empenho,
	(p.Numped * 10000 + p.Ano) * 10000 + cast((n.Flex_Campo_01+n.Flex_Campo_02) As numeric) AS Chave_Empenho,
     sum(iofor.Preco_Tot)                          AS Valor_Empenho
  From Sm_Pedidos P
  Inner Join Sm_Itped_Ofor Io
  On p.ID_Pedidos      = io.ID_Pedidos
  Inner Join SM_ItensOfor Iofor
  On io.ID_ItensOfor        = Iofor.ID_ItensOfor
  Inner Join SM_ItensEnt Ie
  On ie.ID_ItensOfor    = Iofor.ID_ItensOfor
  Inner Join SM_ItensPedido I
  On io.ID_ItensPedido        = i.ID_ItensPedido
  Inner Join SM_OrdemFornec o
  On io.ID_OrdemFornec        = o.ID_OrdemFornec
  Inner Join SM_Entradas e
  On ie.ID_Entradas          = e.ID_Entradas
  Inner Join SM_Fornecedor f
  On o.NumFornec = f.NumFornec
  Inner Join Sm_Natdesp_Item Ni
  On i.Itemid = ni.Itemid
  And ni.Ano  = p.Ano
  Inner Join Sm_Natdesp n
  On ni.id_natdesp = n.id_natdesp
  And p.Situacao = 'CANCELADO'
  And o.NumFornec <> 0
  Group by 
    p.Ano,
    p.Gcompra_Numero,
    p.Numped,
	o.Numofor,
    'Pedido no.'
    + p.Numped
    + '/'
    + p.Ano,
    p.Projeto,
    p.Flex_Campo_02,
    f.Cgc,
	f.Nome,
    f.Flex_Campo_01,
    p.Flex_Campo_01,
    cast(n.Flex_Campo_01 as numeric),
    cast(n.Flex_Campo_02 as numeric),
    'Referente ao pedido de compra no.'
    + p.Numped
    +'/'
    + p.Ano
    + ':'
    + p.Descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.Flex_Campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.Flex_Campo_02 as numeric) as varchar),
	(p.Numped * 10000 + p.Ano) * 10000 + cast((n.Flex_Campo_01+n.Flex_Campo_02) As numeric) 
GO

CREATE VIEW AgoAdm01030_Empenhos_Pedido AS
 SELECT p.Ano        AS Ano_Pedido,
    p.Gcompra_Numero AS Gestor_Pedido,
    p.Numped         AS Num_Pedido,
    'Pedido No.'
    + p.Numped
    + '/'
    + p.Ano        AS Id_Empenho,
    '6C72F11C-3E5C-4C26-BD08-09D36E5B4CD2'     AS Status_Empenho,
    p.Projeto       AS Centrocusto_Empenho,
    p.Flex_Campo_02 AS Contrato_Empenho,
    f.Cgc                            AS Fornec_CNPJ,
	f.Nome                           As Fornec_Nome,
    f.Flex_Campo_01                  AS Id_Fornecjanus,
    p.Flex_Campo_01                  AS Atividade_Empenho,
    Cast(n.Flex_Campo_01 As Numeric)                 As Grupoorc_Empenho,
    Cast(n.Flex_Campo_02 As Numeric)                 As Catorc_Empenho,
    p.Descricao,
    'Referente Ao Pedido De Compra No.'
    + p.Numped
    +'/'
    + p.Ano
    + ':'
    + p.Descricao
    + ' - Grupo E Cat :  '
    + Cast(Cast(n.Flex_Campo_01 As Numeric) As Varchar)
    + '.'
    + Cast(Cast(n.Flex_Campo_02 As Numeric) As Varchar) AS Descr_Empenho,
    Getdate()                                       AS Data_Empenho,
    'SM_ITENSPEDIDO'                                AS Origem_Empenho,
    (p.Numped * 10000 + p.Ano)* 10000 + Cast((n.Flex_Campo_01 + n.Flex_Campo_02) As Numeric)         AS Chave_Empenho,
    Sum(Iofor.Preco_Tot)                                                                             AS Valor_Empenho
  FROM SM_Pedidos p
  INNER JOIN SM_Itped_Ofor io
  ON p.ID_Pedidos             = io.ID_Pedidos
  INNER JOIN SM_ItensOfor Iofor
  ON io.ID_ItensOfor        = Iofor.ID_ItensOfor
  INNER JOIN SM_ItensPedido i
  ON io.ID_ItensPedido        = i.ID_ItensPedido
  INNER JOIN SM_Ordemfornec o
  ON io.ID_OrdemFornec  = o.ID_OrdemFornec
  INNER JOIN SM_Fornecedor f
  ON o.Numfornec = f.Numfornec
  INNER JOIN SM_Natdesp_Item ni
  On i.ID_Itens = ni.ID_Itens
  And ni.Ano  = p.Ano
  INNER JOIN SM_Natdesp n
  On ni.ID_Natdesp = n.ID_Natdesp
  And f.Numfornec <> 0
  Group by
       p.ano,
       p.gcompra_numero,
       p.numped,
       'Pedido no.'
       + p.numped
       + '/'
       + p.ano,
       p.projeto,
       p.Flex_Campo_02,
       f.Cgc,
	   f.Nome,
       f.Flex_Campo_01,
       p.Flex_Campo_01,
       cast(n.Flex_Campo_01 as numeric),
       cast(n.Flex_Campo_02 as numeric),
       p.Descricao,
       'Referente ao pedido de compra no.'
       + p.NumPed
       +'/'
       + p.Ano
       + ':'
       + p.Descricao
       + ' - Grupo e Cat :  '
       + cast(cast(n.Flex_Campo_01 as numeric) as varchar)
       + '.'
       + cast(cast(n.Flex_Campo_02 as numeric) as varchar),
       (p.NumPed * 10000 + p.Ano)* 10000 + cast((n.Flex_Campo_01 + n.Flex_Campo_02) as numeric)
GO

CREATE VIEW AgoAdm01050_Empenhos_Pedido AS
 SELECT 
    p.Ano        AS Ano_Pedido,
    p.Gcompra_Numero AS Gestor_Pedido,
    p.Numped         AS Num_Pedido,
	o.Numofor        AS Num_Ordem,
    'Pedido No.'
    + p.Numped
    + '/'
    + p.Ano        AS Id_Empenho,
    '6C72F11C-3E5C-4C26-BD08-09D36E5B4CD2'     AS Status_Empenho,
    p.Projeto       AS Centrocusto_Empenho,
    p.Flex_Campo_02 AS Contrato_Empenho,
    f.Cgc                            AS Fornec_CNPJ,
	f.Nome                           As Fornec_Nome,
    f.Flex_Campo_01                  AS Id_Fornecjanus,
    p.Flex_Campo_01                  AS Atividade_Empenho,
    Cast(n.Flex_Campo_01 As Numeric)                 As Grupoorc_Empenho,
    Cast(n.Flex_Campo_02 As Numeric)                 As Catorc_Empenho,
    p.Descricao,
    'Referente Ao Pedido De Compra No.'
    + p.NumPed
    +'/'
    + p.Ano
    + ':'
    + p.Descricao
    + ' - Grupo E Cat :  '
    + Cast(Cast(n.Flex_Campo_01 As Numeric) As Varchar)
    + '.'
    + Cast(Cast(n.Flex_Campo_02 As Numeric) As Varchar) AS Descr_Empenho,
    Getdate()                                           AS Data_Empenho,
    (p.Numped * 10000 + p.Ano)* 10000 + Cast((n.Flex_Campo_01+n.Flex_Campo_02) As Numeric)         AS Chave_Empenho,
    Sum(Iofor.Preco_Tot)                          AS Valor_Empenho
  FROM SM_Pedidos p
  INNER JOIN SM_Itped_Ofor io
  ON p.ID_Pedidos             = io.ID_Pedidos
  INNER JOIN SM_ItensOfor Iofor
  ON io.ID_ItensOfor        = Iofor.ID_ItensOfor
  INNER JOIN SM_ItensEnt Ie
  ON Ie.ID_ItensOfor    = Iofor.ID_ItensOfor
  INNER JOIN SM_ItensPedido I
  ON  I.ID_ItensPedido = Io.ID_ItensPedido
  INNER JOIN SM_OrdemFornec O
  ON Io.ID_OrdemFornec  = O.ID_OrdemFornec
  INNER JOIN SM_Entradas E
  ON Ie.ID_Entradas     = E.ID_Entradas
  INNER JOIN SM_Fornecedor F
  ON E.Numfornec = F.Numfornec
  INNER JOIN SM_Natdesp_Item Ni
  On I.Itemid = Ni.Itemid
  And Ni.Ano  = p.Ano
  INNER JOIN SM_Natdesp n
  On Ni.ID_Natdesp = n.ID_Natdesp
  And O.Numfornec = 0
Group by p.Ano,
    p.Gcompra_Numero,
    p.NumPed,
	o.NumOfor,
    'Pedido no.'
    + p.NumPed
    + '/'
    + p.Ano,
    p.Projeto,
    p.Flex_Campo_02,
    f.Cgc,
	f.Nome,
    f.Flex_Campo_01,
    p.Flex_Campo_01,
    cast(n.Flex_Campo_01 as numeric),
    cast(n.Flex_Campo_02 as numeric),
    p.Descricao,
    'Referente ao pedido de compra no.'
    + p.Numped
    +'/'
    + p.Ano
    + ':'
    + p.Descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.Flex_Campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.Flex_Campo_02 as numeric) as varchar),
    (p.Numped * 10000 + p.Ano)* 10000 + cast((n.Flex_Campo_01+n.Flex_Campo_02) as numeric)
GO

create view AgoAdm01051_SM_Entradas as
select e.Almox,
     e.Num_Ent,
     e.Tipo,
     e.Usuario,
     e.Numfornec,
	 f.Cgc,
     f.Nome,
	 F.Sigla_Forn,
     e.Numofor,
	 e.Anoofor,
     e.Ano,
     e.Gcompra_Numero,
     e.Numpar,
     e.Data_Entrega,
     e.Notafiscal,
	 e.Flg_Patrim,
	 e.Empenho,
	 e.Numproc,
	 e.Flg_Consol,
	 e.Gest_Patr,
	 e.Tipo_Patr,
	 e.Situacao_Ent,
	 e.Usu_Sit_Ent,
	 e.Flg_Finaliz,
	 e.Usu_Finaliz,
     e.Flex_Campo_01,
     e.Flex_Campo_02,
     e.Flex_Campo_03,
     e.Flex_Campo_04,
     e.Flex_Campo_05,
     e.Flex_Campo_06,
     e.Flex_Campo_07,
     e.Flex_Campo_08,
     e.Flex_Campo_09,
     e.Flex_Campo_10,
     e.Id_Entradas 
 from SM_entradas e,
      SM_fornecedor f
 Where e.numfornec = f.numfornec
GO

CREATE View AgoAdm01051_SM_ItensEnt 
As
Select 
ie.Almox,
ie.Num_Ent,
ie.ItemId,
i.Nome,
ie.Quant,
ie.Valor,
ie.Id_ItensEnt,
i.Id_Itens,
ie.id_entradas
From SM_itensent ie,
     SM_itens i
Where ie.id_itens = i.id_itens
GO
 
create view SM_Coment_Ped
AS
  SELECT id_comentario,
    data_coment,
    usuario,
    comentario,
    valor_01 AS ano,
    valor_02 AS gestor,
    valor_03 AS numped
  FROM SM_Comentario
  WHERE tabela = 'SM_PEDIDOS'
GO

CREATE VIEW Sm_Last_Coment_Ped as
    SELECT MAX(id_Comentario) AS maxid,
    valor_01     AS ano,
    valor_02     AS gestor,
    valor_03     AS numped
  FROM SM_Comentario
  WHERE tabela = 'SM_PEDIDOS'
  group by valor_01, valor_02, valor_03
GO  

CREATE VIEW AgoAdm03330_SM_Pedidos
AS
  SELECT a.Gcompra_Numero,
    a.Ano,
    a.Numped,
    a.Convenio,
    a.Natdesp_Exec,
    a.Usuario,
    a.Empresa,
    a.Setor,
    a.Natdesp,
    a.Usu_Cot,
    a.Usu_Aut,
    a.Dot_Seq_Dot,
    a.Projeto,
    a.Reserva,
    a.Data,
    a.Descricao,
    a.Preco_Est,
    a.Tipo,
    a.Flg_Servico,
    a.Situacao,
    a.Data_Sit,
    a.Tipo_Entrega,
    a.Entrega_Setor_Empresa,
    a.Entrega,
    a.Evres_Ay,
    a.Gpf_Ay,
    a.Valor01_Gpf,
    a.Valor02_Gpf,
    a.Valor03_Gpf,
    a.Valor04_Gpf,
    a.Valor05_Gpf,
    a.Valor06_Gpf,
    a.Valor07_Gpf,
    a.Valor08_Gpf,
    a.Valor09_Gpf,
    a.Valor10_Gpf,
    a.Valor11_Gpf,
    a.Valor12_Gpf,
    a.Valor13_Gpf,
    a.Flex_Campo_01,
    a.Flex_Campo_02,
    a.Flex_Campo_03,
    a.Flex_Campo_04,
    a.Flex_Campo_05,
    a.Flex_Campo_06,
    a.Flex_Campo_07,
    a.Flex_Campo_08,
    a.Flex_Campo_09,
    a.Flex_Campo_10,
    a.Prazo_Entr,
    a.Garantia,
    a.Exam_Quali,
    a.Observacao,
    cj.identificador     AS ped_nomecc,
	a.Motivo_Indeferimento,
    a.ID_Pedidos,
	a.id_centrocustojanus AS ped_cc,
    a.id_atividadejanus  AS ped_ativ,
	a.id_contratojanus AS ped_contrato,
    aj.Atividade     As Nomeatividade,
    cj.Identificador As Nomecontrato
  FROM AgoAdm00001_SM_Pedidos a
  LEFT OUTER JOIN c_Agora_AtividadeJanus aj ON  aj.id_atividade = a.id_atividadejanus
  LEFT OUTER JOIN c_Agora_ContratoJanus cj ON  cj.id_contrato = a.id_contratojanus
GO



CREATE VIEW AgoAdm03004_SM_ItensPedido
AS
 SELECT a.numped,
    a.ano,
    a.gcompra_numero,
    a.itemped,
    a.usu_sel,
    a.flg_servico,
    a.numcompr,
    a.unidade,
	a.id_pedidos,
    (SELECT b.unidade FROM sm_unidmed b WHERE b.unidade = a.unidade
    ) AS descrunidade,
    a.fam_classe,
    (SELECT f.nome
    FROM sm_fclasses f
    WHERE f.id_fclasses   = a.id_fclasses
    ) AS descfam,
    a.grupo_classe,
    (SELECT g.nome
    FROM sm_gclasses g
    WHERE g.id_gclasses    = a.id_gclasses
    ) AS descgrupo,
    a.Item_Classe,
    (SELECT i.nome
    FROM sm_iclasses i
    WHERE i.item_classe = a.Item_Classe
    ) AS descitem,
    a.itemid,
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
    a.id_itenspedido,
	p.ID_ContratoJanus,
    p.data               AS ped_data,
    p.tipo               AS ped_tipo,
    p.situacao           AS ped_situacao,
    p.descricao          AS ped_descricao,
    p.id_centrocustojanus AS ped_cc,
    p.id_atividadejanus  AS ped_ativ,
    p.garantia           AS ped_garantia,
    p.prazo_entr         AS ped_prazo,
    cj.identificador     AS ped_nomecc,
    aj.atividade         AS ped_nomeativ,
	cj.identificador AS nomecontrato
  FROM sm_itenspedido a
  INNER JOIN sm_pedidos p ON a.id_pedidos= p.id_pedidos
  LEFT OUTER JOIN c_Agora_AtividadeJanus aj ON  aj.id_atividade = p.id_atividadejanus
  LEFT OUTER JOIN c_Agora_ContratoJanus cj ON  cj.id_contrato = p.id_contratojanus
 GO  