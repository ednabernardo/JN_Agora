-- Tarefa 79033 - Edna - 07/05/2013 - v1.00

CREATE TABLE SM_AnoCompra(
    Ano                            numeric (4,0) NOT NULL,
    DataIni                        datetime ,
    DataFim                        datetime ,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_Anocompra_pk PRIMARY KEY  CLUSTERED  ( Ano )  ON [PRIMARY])
GO

CREATE TABLE SM_Projetos(
    ID_Projetos                    bigint identity (1,1) NOT NULL,
    Cod                            varchar(15) NOT NULL,
    Nome                           varchar(60) NOT NULL,
    Flg_inativo                    varchar(1) NOT NULL,
    Flg_transfere                  varchar(1) DEFAULT 'N',
    Ano                            numeric(4,0) NOT NULL,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_Projetos_pk PRIMARY KEY  CLUSTERED  (ID_Projetos)  ON [PRIMARY])
GO


CREATE TABLE SM_NatDesp(
    ID_NatDesp                     bigint identity (1,1) NOT NULL,
    Numero                         numeric(12,0) NOT NULL,
    Nome                           varchar(50) NOT NULL,
    Desativ                        varchar(1)  NOT NULL,
    Orc                            varchar(1)   NOT NULL,
    Execucao                       varchar(1)   NOT NULL,
    NatBem                         varchar(1)   NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    vidaucont                      numeric(6,0),
    indice_residual                numeric(5,2),
	CONSTRAINT SM_Natdesp_pk PRIMARY KEY  CLUSTERED  (ID_NatDesp) ON [PRIMARY])
GO

CREATE TABLE SM_Dotacoes (
    ID_Dotacoes                    bigint identity (1,1) NOT NULL,
	Seq_dot                        int,
    Num_natdesp                    numeric(12,0) NOT NULL,
    Num_unor                       varchar(8) NOT NULL,
    Num_funcao                     numeric(2,0) NOT NULL,
    Num_programa                   numeric(3,0) NOT NULL,
    Num_subprog                    numeric(4,0) NOT NULL,
    Num_projativ                   numeric(5,0) NOT NULL,
    Num_fonte                      numeric(4,0) NOT NULL,
    Flg_inativo                    varchar(1) DEFAULT 'N' NOT NULL,
    Vlr_inicial                    numeric(16,2),
    Vlr_atual                      numeric(16,2),
    Ano                            numeric(4,0) NOT NULL,
    Descricao                      varchar(50),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	ID_Natdesp                     bigint,
	CONSTRAINT SM_Dotacoes_pk PRIMARY KEY  CLUSTERED  (ID_Dotacoes)  ON [PRIMARY])
GO

CREATE TABLE SM_Dotacao_Projeto(
    ID_DotacaoProjeto              bigint identity (1,1) NOT NULL,
	Projeto                        varchar(15) ,
    Dot_seq_dot                    bigint NOT NULL,
    Sld_inicial                    numeric(16,2),
    Sld_atual                      numeric(16,2),
    Ano                            numeric(4,0) NOT NULL,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	ID_Projetos                    bigint,
	ID_Dotacoes                    bigint,
	CONSTRAINT SM_Dotacao_Projeto_pk PRIMARY KEY  CLUSTERED  (ID_DotacaoProjeto)  ON [PRIMARY])
GO

CREATE TABLE SM_UnidMed (
    Unidade                        varchar (15) NOT NULL,
    Nome                           varchar (50) ,
    Flex_campo_01                  varchar (2000),
    Flex_campo_02                  varchar (2000),
    Flex_campo_03                  varchar (2000),
    Flex_campo_04                  varchar (2000),
    Flex_campo_05                  varchar (2000) ,
    Flex_campo_06                  varchar (2000),
    Flex_campo_07                  varchar (2000),
    Flex_campo_08                  varchar (2000),
    Flex_campo_09                  varchar (2000),
    Flex_campo_10                  varchar (2000),
	 CONSTRAINT SM_Unidmed_pk PRIMARY KEY  CLUSTERED  (Unidade)  ON [PRIMARY] )
GO

CREATE TABLE SM_TipoLicitacao(
    Modalidade                     varchar(15) NOT NULL,
    Flg_periodo                    varchar(1) NOT NULL,
    Descr                          varchar(150),
    Limite                         numeric(16,2),
    Periodo                        numeric(6,0),
    Val_padrao                     numeric(4,0),
    Flg_processo                   varchar(1),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_TipoLicitacao_pk PRIMARY KEY  CLUSTERED  (Modalidade)  ON [PRIMARY])
GO

CREATE TABLE SM_Fornecedor(
    Numfornec                      bigint identity (1,1) NOT NULL, 
    Cgc                            varchar(14) NOT NULL,
    Nome                           varchar(100) NOT NULL,
    Atuareg                        varchar(1) NOT NULL,
    Ativo                          varchar(1) NOT NULL,
    Sigla_forn                     varchar(50),
    Inscrest                       varchar(15),
    Inscrmunic                     varchar(15),
    Inscrecon                      varchar(15),
    Regprofis                      varchar(15),
    Situacao                       varchar(10),
    Crc                            numeric(10,0),
    Validcrc                       datetime,
    Capital                        numeric(16,2),
    Obs                            varchar(600),
    Patrimliq                      numeric(16,2),
    Contrsocial                    varchar(15),
    Datacontr                      datetime,
    Num_origem                     numeric(10,0),
    Tipo_end                       varchar(10),
    Rua                            varchar(60),
    Num_end                        varchar(6),
    Compl_end                      varchar(30),
    Cep                            numeric(8,0),
    Num_ddd                        varchar(4),
    Num_tel                        varchar(15),
    Num_fax                        varchar(15),
    Imp_crc                        numeric(8,0),
    Emissaocrc                     datetime,
    Mbairro_codigo                 varchar(50),
    Mbairro_municipio_codigo       varchar(12),
    Flg_qualidade                  varchar(1),
    End_mail                       varchar(100),
    Senha                          varchar(50),
    End_web                        varchar(100),
    End_ip                         varchar(30),
    Usuario_aut                    varchar(15),
    Data_aut                       datetime,
    Flg_email                      varchar(1) DEFAULT 'N',
    Caixa_postal                   varchar(20),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Cel_num                        varchar(15),
    Tipo_cadastro                  varchar(1),
    Flg_proprietario               varchar(1),
	CONSTRAINT SM_Fornecedor_pk PRIMARY KEY  CLUSTERED  (NumFornec)  ON [PRIMARY])
GO

CREATE TABLE SM_Almoxarifados(
    Numero                         bigint identity (1,1) NOT NULL,
    Nome                           varchar(50) NOT NULL,
    Fechado                        varchar(1) DEFAULT 'N' NOT NULL,
    Perm_consol                    varchar(1) DEFAULT 'N' NOT NULL,
    Flg_veestoque                  varchar(1) DEFAULT 'N' NOT NULL,
    Flg_gerarm                     varchar(1) NOT NULL,
    Flg_msgrestr_almox             varchar(1) DEFAULT 'N' NOT NULL,
    Flg_msgrestr_proj              varchar(1) DEFAULT 'N' NOT NULL,
    Flg_msgrestr_cota              varchar(1) DEFAULT 'N' NOT NULL,
    Flg_msgrestr_lote              varchar(1) DEFAULT 'N' NOT NULL,
    Flg_msgrestr_apre              varchar(1) DEFAULT 'N' NOT NULL,
    Flg_msgrestr_aplo              varchar(1) DEFAULT 'N' NOT NULL,
    Flg_ccprefer                   varchar(1) DEFAULT 'N',
    Dotacao_pref                   numeric(12,0),
    Projeto                        varchar(15),
    Almox_numero                   bigint,
    Responsavel                    varchar(50),
    Nome_end                       varchar(50),
    Tipo_end                       varchar(10),
    Num_end                        numeric(6,0),
    Compl_end                      varchar(20),
    Cep_end                        numeric(8,0),
    Lastnum_e                      numeric(10,0),
    Lastnum_s                      numeric(10,0),
    Lastnum_es                     numeric(10,0),
    Lastnum_ee                     numeric(10,0),
    Flg_inibeqtd                   varchar(1),
    Mbairro_municipio_codigo       varchar(12),
    Mbairro_codigo                 varchar(12),
    Ano                            numeric(4,0),
    Flg_ccpcota                    varchar(1) DEFAULT 'N',
    Flg_impguiadist                varchar(1) DEFAULT 'S' NOT NULL,
    Diaini_req                     numeric(2,0),
    Diafim_req                     numeric(2,0),
    Diaini_con                     numeric(2,0),
    Diafim_con                     numeric(2,0),
    Flg_guiapadrao                 varchar(1),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Flg_apresfechada               varchar(1) DEFAULT 'S',
    Flg_req_sem_est                CHAR(1),
    Flg_mat_cota                   CHAR(1),
    Chk_empenho_ay                 varchar(1) DEFAULT 'N' NOT NULL,
	ID_Projetos                    bigint,
	CONSTRAINT SM_almoxarifados_pk PRIMARY KEY  CLUSTERED  (numero)  ON [PRIMARY])
GO

CREATE TABLE SM_Inc(
    Cod_inc                        varchar (6) ,
    Nome_inc                       varchar(100),
    Defin_inc                      varchar(2000),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_Inc_pk PRIMARY KEY  CLUSTERED  (Cod_inc) ON [PRIMARY] )
GO

CREATE TABLE SM_Iclasses(
    Item_Classe                    bigint identity (1,1) NOT NULL,
    Nome                           varchar (50) NOT NULL,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_Iclasse_pk PRIMARY KEY  CLUSTERED  (Item_Classe)  ON [PRIMARY])
GO

CREATE TABLE SM_Gclasses (
    ID_Gclasses                     bigint identity (1,1) NOT NULL,
	Item_classe			           bigint NOT NULL,
    Grupo_classe                   numeric (2,0) NOT NULL,
    Nome                           varchar (100) NOT NULL,
    Flex_campo_01                  varchar (2000),
    Flex_campo_02                  varchar (2000),
    Flex_campo_03                  varchar (2000),
    Flex_campo_04                  varchar (2000),
    Flex_campo_05                  varchar (2000),
    Flex_campo_06                  varchar (2000),
    Flex_campo_07                  varchar (2000),
    Flex_campo_08                  varchar (2000),
    Flex_campo_09                  varchar (2000),
    Flex_campo_10                  varchar (2000),
	CONSTRAINT SM_Gclasses_pk PRIMARY KEY  CLUSTERED  (ID_Gclasses)  ON [PRIMARY])
GO

CREATE TABLE SM_Fclasses(
    ID_Fclasses                     bigint identity (1,1) NOT NULL,               
	Grupo_classe				   numeric    (2,0) NOT NULL,
    Item_classe					   bigint NOT NULL,
    Fam_classe                     numeric    (3,0) NOT NULL,
    Nome                           varchar    (50) NOT NULL,
    Flg_imovel                     varchar    (1) DEFAULT 'N' NOT NULL,
    Flg_patrim                     varchar    (1) DEFAULT 'N' NOT NULL,
    Flg_serv                       varchar    (1) DEFAULT 'N' NOT NULL,
    Flg_almox                      varchar    (1) DEFAULT 'N' NOT NULL,
    Flg_obras                      varchar    (1) NOT NULL,
    Descricao                      varchar    (2000),
    Vidaucont                      numeric    (6,0) ,
    Deprec                         numeric    (5,2),
    Natdesp                        numeric    (12,0),
    Flex_campo_01                  varchar    (2000),
    Flex_campo_02                  varchar    (2000),
    Flex_campo_03                  varchar    (2000),
    Flex_campo_04                  varchar    (2000),
    Flex_campo_05                  varchar    (2000),
    Flex_campo_06                  varchar    (2000),
    Flex_campo_07                  varchar    (2000),
    Flex_campo_08                  varchar    (2000),
    Flex_campo_09                  varchar    (2000),
    Flex_campo_10                  varchar    (2000),
    Indice_residual                numeric    (5,2),
	ID_Gclasses                    bigint,
	CONSTRAINT SM_Fclasses_pk PRIMARY KEY  CLUSTERED  (ID_Fclasses)  ON [PRIMARY])
GO

CREATE TABLE SM_Locais_Entregas(
    Local                          varchar(15) NOT NULL,
    Nome                           varchar(50) NOT NULL,
    Tipo_log                       varchar(10) NOT NULL,
    Nome_log                       varchar(50) NOT NULL,
    Num_log                        numeric(6,0) NOT NULL,
    Uf                             varchar(2) NOT NULL,
    Cep                            varchar(9) NOT NULL,
    Fone                           varchar(15),
    Fax                            varchar(15),
    Complemento                    varchar(20),
    Mbairro_codigo                 varchar(12) NOT NULL,
    Mbairro_municipio_codigo       varchar(12) NOT NULL,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_locais_entregas_pk PRIMARY KEY  CLUSTERED  (local)  ON [PRIMARY])
GO

CREATE TABLE SM_Itens(
    ID_Itens                       bigint identity (1,1) NOT NULL, 
    itemid                         numeric(13,0) NOT NULL,
    Item_classe					   bigint NOT NULL,
    Grupo_Classe				   numeric(2,0) NOT NULL,
    Fam_Classe			           numeric(3,0) NOT NULL,
    Item                           numeric(7,0),
    Nome                           varchar(50) NOT NULL,
    Unidade                        varchar(15) NOT NULL,
    Flg_lote                       varchar(1) DEFAULT 'N' NOT NULL,
    Especif                        text,
    Tipo_patr                      varchar(15),
    Vidaufis                       numeric(6,0),
    Num_antigo                     varchar(15),
    Flg_fracao                     varchar(1) DEFAULT 'N' NOT NULL,
    Flg_decimal                    varchar(1) DEFAULT 'N' NOT NULL,
    Flg_desuso                     varchar(1) DEFAULT 'N' NOT NULL,
    SM_pais                        numeric(2,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Cod_inc                        varchar(6),
	ID_Fclasses                    bigint,
	ID_Gclasses                    bigint,
	CONSTRAINT SM_Itens_pk PRIMARY KEY  CLUSTERED  (ID_Itens)  ON [PRIMARY])
GO

CREATE TABLE SM_Natdesp_Item(
	ID_NatDespItem                 bigint identity (1,1) NOT NULL,
	Itemid                         numeric(13,0) NOT NULL,
    Natdesp                        numeric(12,0) NOT NULL ,
    Ano                            numeric(4,0) NOT NULL,
	ID_Natdesp                     bigint,
	ID_Itens                       bigint,
	CONSTRAINT SM_Natdesp_Item_pk PRIMARY KEY  CLUSTERED  (ID_NatDespItem)  ON [PRIMARY])
GO

CREATE TABLE SM_Gpf_Ay(
    ID_GpfAy                       bigint identity (1,1) NOT NULL,
	Ano                            numeric (4,0) NOT NULL,
    Gpf                            numeric (2,0) ,
    Nome                           varchar (50),
	CONSTRAINT SM_gpf_ay_pk PRIMARY KEY  CLUSTERED  (ID_GpfAy)  ON [PRIMARY])
GO

CREATE TABLE SM_Eventos_Ay(
    ID_EventosAy                    bigint identity (1,1) NOT NULL,
	Ano                            numeric (4,0) NOT NULL,
    Numevento                      numeric (6,0) NOT NULL,
    Tipodoc                        varchar (2),
    Abrev                          varchar (50),	
	CONSTRAINT SM_Eventos_ay_pk PRIMARY KEY  CLUSTERED  (ID_EventosAy) ON [PRIMARY])
GO

CREATE TABLE SM_GestorCompras (
	Numero                         bigint identity (1,1) NOT NULL,
    Pres_cpl                       varchar(50),
    Membro1_cpl                    varchar(50),
    Membro2_cpl                    varchar(50),
    Membro3_cpl                    varchar(50),
    Nome                           varchar(50),
    Nome_end                       varchar(50),
    Tipo_end                       varchar(10),
    Num_end                        numeric(6,0),
    Compl_end                      varchar(20),
    Cep_end                        numeric(8,0),
    Mbairro_codigo                 varchar(12),
    Mbairro_municipio_codigo       varchar(12),
    Autoriza                       varchar(1) DEFAULT 'N' NOT NULL,
    Calc_auto                      varchar(1) DEFAULT 'N' NOT NULL,
    Criterio                       varchar(15),
    Nprecos                        numeric(6,0),
    Tipo_calc                      varchar(15),
    Imp_sem_empenho                varchar(1) DEFAULT 'N' NOT NULL,
    Com_reserva                    varchar(1) DEFAULT 'N' NOT NULL,
    Com_local                      varchar(1) DEFAULT 'N' NOT NULL,
    Flg_usr_fazres                 varchar(1) DEFAULT 'N',
    Flg_usr_autped                 varchar(1) DEFAULT 'N',
    Emp_dotacao                    varchar(1) DEFAULT 'N' NOT NULL,
    Emp_convenio                   varchar(1) DEFAULT 'N' NOT NULL,
    Emp_local                      varchar(1) DEFAULT 'N' NOT NULL,
    Chk_reserva_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    Chk_empenho_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    Ins_reserva_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    Ins_empenho_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    Ins_corpoemp_ay                varchar(1) DEFAULT 'N' NOT NULL,
    Emp_reserva                    varchar(1) DEFAULT 'N' NOT NULL,
    Verifica_marcamod              varchar(1) DEFAULT 'N' NOT NULL,
    Nmeses                         numeric(6,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Bcopreco_auto                  varchar(1) DEFAULT 'N',
	CONSTRAINT SM_Gestorcompras_pk_1 PRIMARY KEY  CLUSTERED  (Numero)  ON [PRIMARY])
GO

CREATE TABLE SM_AvailNumCompra(
    ID_AvailNumCompra              bigint identity (1,1) NOT NULL,
	gcompra_numero                 bigint NOT NULL,
    ano_ano                        numeric(4,0) NOT NULL,
    lastnum_ped                    numeric(10,0),
    lastnum_compra                 numeric(10,0),
    lastnum_ofor                   numeric(10,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_availnumcompra_pk PRIMARY KEY  CLUSTERED  (ID_AvailNumCompra)  ON [PRIMARY])
GO	

CREATE TABLE SM_Compras(
    ID_Compras                      bigint identity (1,1) NOT NULL,
	Ano_ano                        numeric(4,0) NOT NULL,
    Gcompra_numero                 bigint NOT NULL,
    Numcompr                       numeric(10,0) NOT NULL,
    Flg_fechado                    varchar(1) NOT NULL,
    Modalidade                     varchar(15),
    Objeto                         varchar(150),
    Preco_est                      numeric(16,2),
    Nat_desp                       numeric(12,0),
    Numproc                        varchar(25),
    Abertura                       datetime,
    Homologacao                    datetime,
    Publicacao                     datetime,
    Preco_edital                   numeric(16,2),
    Flg_internet                   varchar(1) DEFAULT 'N',
    Encerramento                   datetime,
    Cadastro                       datetime,
    Tipo_prop                      varchar(6) DEFAULT 'PADRÃO' NOT NULL,
    Flg_preco                      varchar(1) DEFAULT 'N',
    Flg_enviar_email               varchar(1) DEFAULT 'N',
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	CONSTRAINT SM_Compras_pk PRIMARY KEY  CLUSTERED  (ID_Compras)  ON [PRIMARY])
GO

CREATE TABLE SM_ItensCompra(
    ID_ItensCompra                 bigint identity (1,1) NOT NULL,
	Gcompra_numero                 bigint NOT NULL,
    Numcompr                       numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Itemcompra                     numeric(4,0) NOT NULL,
    Flg_servico                    varchar(1) NOT NULL,
    Unidade                        varchar(15),
    Fam_classe				       numeric(3,0),
    Grupo_classe				   numeric(2,0),
    Item_classe					   bigint ,
    Itemid                         numeric(13,0),
    Quant                          numeric,
    Descr                          varchar(2000),
    Preco_est                      numeric,
    Item_mat                       numeric(7,0),
    Preco_max                      numeric(16,2),
    SM_pais                        numeric(2,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	ID_Compras                     bigint,
	ID_Itens                       bigint,
	ID_Fclasses                    bigint,
	CONSTRAINT SM_ItensCompra_pk PRIMARY KEY  CLUSTERED  (ID_ItensCompra)  ON [PRIMARY])
GO

CREATE TABLE SM_EventosCompra(
    ID_EventosCompra               bigint identity (1,1) NOT NULL,
	Gcompra_numero                 bigint NOT NULL,
    Numcompr                       numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Data                           datetime NOT NULL,
    Situacao                       varchar(15),
    Observacao                     varchar(150),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	ID_Compras                     bigint,
	CONSTRAINT SM_EventosCompra_pk PRIMARY KEY  CLUSTERED  (ID_EventosCompra)  ON [PRIMARY])
GO

CREATE TABLE SM_Pedidos(
    ID_Pedidos                     bigint identity (1,1) NOT NULL,
	Gcompra_numero                 bigint NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Numped                         numeric(10,0) NOT NULL,
    Convenio                       varchar(6),
    Natdesp_exec                   numeric(12,0),
    Usuario                        varchar(15) NOT NULL,
    Empresa                        numeric(2,0) NOT NULL,
    Setor                          varchar(15) NOT NULL,
    Natdesp                        numeric(12,0),
    Usu_cot                        varchar(15),
    Usu_aut                        varchar(15),
    Dot_seq_dot                    bigint ,
    Projeto                        varchar(15),
    Reserva                        varchar(20),
    Data                           datetime,
    Descricao                      varchar(2000),
    Preco_est                      numeric(16,2),
    Tipo                           varchar(15),
    Flg_servico                    varchar(1),
    Situacao                       varchar(15),
    Data_sit                       datetime,
    Tipo_entrega                   varchar(1),
    Entrega_setor_empresa          numeric(2,0),
    Entrega                        varchar(15),
    Evres_ay                       numeric(6,0),
    Gpf_ay                         numeric(2,0),
    Valor01_gpf                    numeric(16,2),
    Valor02_gpf                    numeric(16,2),
    Valor03_gpf                    numeric(16,2),
    Valor04_gpf                    numeric(16,2),
    Valor05_gpf                    numeric(16,2),
    Valor06_gpf                    numeric(16,2),
    Valor07_gpf                    numeric(16,2),
    Valor08_gpf                    numeric(16,2),
    Valor09_gpf                    numeric(16,2),
    Valor10_gpf                    numeric(16,2),
    Valor11_gpf                    numeric(16,2),
    Valor12_gpf                    numeric(16,2),
    Valor13_gpf                    numeric(16,2),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Prazo_entr                     numeric(3,0),
    Garantia                       varchar(50),
    Exam_quali                     varchar(1) DEFAULT 'N',
    Observacao                     varchar(2000),
    Motivo_indeferimento           varchar(2000),
	ID_Projetos                    bigint,
	ID_Natdesp                     bigint,
	ID_GpfAy                       bigint,
	ID_Dotacoes                    bigint,
	ID_EventosAy                   bigint,
	ID_CentroCustoJanus            bigint,
	ID_AtividadeJanus			   bigint,
	ID_ContratoJanus			   bigint
	CONSTRAINT SM_pedidos_pk PRIMARY KEY  CLUSTERED  (ID_Pedidos)  ON [PRIMARY])
GO

CREATE TABLE SM_ItensPedido(
    ID_ItensPedido                  bigint identity (1,1) NOT NULL,
	Numped                         numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Gcompra_numero                 bigint NOT NULL,
    Itemped                        numeric(4,0) NOT NULL,
    Usu_sel                        varchar(15),
    Flg_servico                    varchar(1) NOT NULL,
    Numcompr                       numeric(10,0),
    Unidade                        varchar(15),
    Fam_Classe			           numeric(3,0),
    Grupo_Classe				   numeric(2,0),
    Item_Classe					   bigint ,
    ItemId			               numeric(13,0),
    Compr_ano                      numeric(4,0),
    Itemcompra                     numeric(4,0),
    Descr                          varchar(2000),
    Item_mat                       numeric(7,0),
    Quant_sol                      numeric,
    Quant_atend                    numeric,
    Preco_est                      numeric,
    Flg_autorizado                 varchar(1),
    Data_autorizacao               datetime,
    Flg_indeferido                 varchar(1),
    Quant_contr                    numeric,
    Quant_entr                     numeric,
    Precounit                      numeric,
    Nat_desp                       numeric(12,0),
    SM_pais                        numeric(2,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Criterio_cot                   varchar(15),
	ID_Pedidos                     bigint,
	ID_Natdesp                     bigint,
	ID_Itens                       bigint,
	ID_ItensCompra                 bigint,
	ID_Fclasses                    bigint,
	ID_Gclasses                    bigint,
	ID_Compras                     bigint,
	CONSTRAINT SM_ItensPedido_pk PRIMARY KEY  CLUSTERED  (ID_ItensPedido)  ON [PRIMARY])
GO

CREATE TABLE SM_Cotacoes(
    Seq                            bigint identity (1,1) NOT NULL,
	ItemId			               numeric(13,0) NOT NULL,
    Data                           datetime NOT NULL,
    Preco                          numeric NOT NULL,
    Origem                         varchar(200),
    Usuario                        varchar(15),
    Numfornec                      bigint,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	ID_Itens                       bigint,
	CONSTRAINT SM_Cotacoes_pk PRIMARY KEY  CLUSTERED  (Seq)  ON [PRIMARY])
GO

CREATE TABLE SM_PrecoEstimado (
    ID_PrecoEstimado               bigint identity (1,1) NOT NULL,
	Gcompra_numero                 bigint NOT NULL,
    Numped                         numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Itemped                        numeric(4,0) NOT NULL,    
    Seq                            numeric(10,0) NOT NULL,
	Usuario                        varchar(15) NOT NULL,
    Numfornec                      bigint,
    Data                           datetime,
    Preco                          numeric(16,2),
    Origem                         varchar(150),
    Marcamod                       varchar(50),
    Especificacao                  varchar(2000),
	Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Flg_calculo                    varchar(1),
    Classif_forn                   numeric(2,0),
    Dt_prev_ent                    datetime,
	TipoPrazo                      varchar(100),
    Comprado                       varchar(1) DEFAULT 'N',
    Desejado                       varchar(1) DEFAULT 'N',
	ID_ItensPedido                 bigint,
	ID_Pedidos                     bigint,
	CONSTRAINT SM_PrecoEstimado_pk PRIMARY KEY  CLUSTERED  (ID_PrecoEstimado)  ON [PRIMARY])
GO

CREATE TABLE SM_Propostas(
    ID_Propostas                    bigint identity (1,1) NOT NULL,
	Numfornec                      bigint NOT NULL,
    Gcompra_numero                 bigint NOT NULL,
    Numcompr                       numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Flg_desclas                    varchar(1) NOT NULL,
    Validade                       numeric(4,0),
    Desclassificacao               varchar(30),
    Observacao                     varchar(150),
    Prazo_entr                     numeric(3,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	ID_Compras                     bigint,
	CONSTRAINT SM_Propostas_pk PRIMARY KEY  CLUSTERED  (ID_Propostas)  ON [PRIMARY])
GO

CREATE TABLE SM_ModEmpenho_Ay(
      Modemp                         VARCHAR(10) NOT NULL,
	  CONSTRAINT SM_ModEmpenho_Ay_Pk PRIMARY KEY  CLUSTERED  (Modemp) ON [PRIMARY])
GO		

CREATE TABLE SM_OrdemFornec(
    ID_OrdemFornec                 bigint identity (1,1) NOT NULL, 
	Ano                            numeric(4,0) NOT NULL,
    Numofor                        numeric(10,0) NOT NULL,
    Gcompra_numero                 bigint NOT NULL,
    Numfornec                      bigint NOT NULL,
    Compr_ano                      numeric(4,0) NOT NULL,
    Numcompr                       numeric(10,0) NOT NULL,
    Usuario                        varchar(15) NOT NULL,
    Parcelas                       numeric(4,0) NOT NULL,
    Flg_contr                      varchar(1) NOT NULL,
    Dot_seq_dot                    bigint,
    Data_emp                       datetime,
    Data_ini                       datetime,
    Data_fim                       datetime,
    Empenho                        varchar(20),
    Valor                          numeric(16,2),
    Data_contr                     datetime,
    Corpoemp                       numeric(8,0),
    Tipo_entrega                   varchar(1),
    Entrega                        varchar(15),
    Convenio                       varchar(6),
    Natdesp_exec                   numeric(12,0),
    Data_ofor                      datetime,
    Evemp_ay                       numeric(6,0),
    Gpf_ay                         numeric(2,0),
    Valor01_gpf                    numeric(16,2),
    Valor02_gpf                    numeric(16,2),
    Valor03_gpf                    numeric(16,2),
    Valor04_gpf                    numeric(16,2),
    Valor05_gpf                    numeric(16,2),
    Valor06_gpf                    numeric(16,2),
    Valor07_gpf                    numeric(16,2),
    Valor08_gpf                    numeric(16,2),
    Valor09_gpf                    numeric(16,2),
    Valor10_gpf                    numeric(16,2),
    Valor11_gpf                    numeric(16,2),
    Valor12_gpf                    numeric(16,2),
    Valor13_gpf                    numeric(16,2),
    Reserva                        varchar(20),
    Modemp_ay                      varchar(10),
    Evcanemp_ay                    numeric(6,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Prazo_entr                     numeric(3,0),
    Garantia                       varchar(50),
	ID_Compras                     bigint,
	ID_GpfAy                       bigint,
	ID_EventosAy                   bigint,
	ID_Dotacoes                    bigint,
	ID_Natdesp                     bigint,
	CONSTRAINT SM_ordemfornec_pk PRIMARY KEY  CLUSTERED  (ID_OrdemFornec)  ON [PRIMARY])
GO

CREATE TABLE SM_ItensOfor(
    ID_ItensOfor                    bigint identity (1,1) NOT NULL, 
	Numofor                        numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Gcompra_numero                 bigint NOT NULL,
    Itemofor                       numeric(4,0) NOT NULL,
    Numcompr                       numeric(10,0),
    Compr_ano                      numeric(4,0),
    Itemcompra                     numeric(4,0),
    Quant                          numeric,
    Preco_unit                     numeric,
    Preco_tot                      numeric(16,2),
    Descricao                      varchar(2000),
    Codigo_barra                   varchar(15),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Empenho                        varchar(20),
    Corpoemp                       numeric(8,0),
	ID_OrdemFornec                 bigint,
	ID_ItensCompra                 bigint,
	ID_Compras                     bigint,
	CONSTRAINT SM_itensofor_pk PRIMARY KEY  CLUSTERED  (ID_ItensOfor)  ON [PRIMARY])
GO

CREATE TABLE SM_Itped_Ofor(
    ID_ItpedOfor                   bigint identity (1,1) NOT NULL, 
	Numofor                        numeric(10,0) NOT NULL,
    Numped                         numeric(10,0) NOT NULL,
    Ano_ofor                       numeric(4,0) NOT NULL,
    Itemofor                       numeric(4,0) NOT NULL,
    Ano_ped                        numeric(4,0) NOT NULL,
    Itemped                        numeric(4,0) NOT NULL,
    Gcompra_numero                 bigint NOT NULL,
    Quant_contr                    numeric NOT NULL,
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
	ID_ItensPedido                 bigint,
	ID_ItensOfor                   bigint,
	ID_OrdemFornec                 bigint,
	ID_Pedidos                     bigint,
	CONSTRAINT SM_Itped_Ofor_pk PRIMARY KEY  CLUSTERED  (ID_ItpedOfor)  ON [PRIMARY])
GO

CREATE TABLE SM_Parcelas(
    ID_Parcelas                     bigint identity (1,1) NOT NULL, 
	NumOfor                        numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Gcompra_numero                 bigint NOT NULL,
    Numpar                         numeric(4,0) NOT NULL,
    Data_prev                      datetime,
    Data_entr                      datetime,
    Local_entrega                  varchar(150),
    Notafiscal                     varchar(15),
    Flg_cancel                     varchar(1) DEFAULT 'N',
    Flg_entrega_ok                 varchar(1),
    Valor                          numeric(16,2),
    Empenho                        varchar(20),
    Tipo_entrega                   varchar(240),
    Almox                          bigint,
    Setor                          varchar(15),
    Empresa                        numeric(2,0),
    Local                          varchar(15),
    Usuario                        varchar(15),
    Entrega                        varchar(15),
    Num_ent                        numeric(10,0),
    Flex_campo_01                  varchar(2000),
    Flex_campo_02                  varchar(2000),
    Flex_campo_03                  varchar(2000),
    Flex_campo_04                  varchar(2000),
    Flex_campo_05                  varchar(2000),
    Flex_campo_06                  varchar(2000),
    Flex_campo_07                  varchar(2000),
    Flex_campo_08                  varchar(2000),
    Flex_campo_09                  varchar(2000),
    Flex_campo_10                  varchar(2000),
    Flg_desdobrada                 varchar(1),
    Parcela_orig                   numeric,
	ID_OrdemFornec                 bigint,
	ID_Entradas                    bigint,
	ID_parcelasOrig                bigint
	CONSTRAINT SM_Parcelas_pk PRIMARY KEY  CLUSTERED  (ID_Parcelas)  ON [PRIMARY])
GO

CREATE TABLE SM_Entradas(
    ID_Entradas                     bigint identity (1,1) NOT NULL,
	Almox                          bigint NOT NULL,
    Num_Ent                        numeric(10,0) NOT NULL,
    Flg_consol                     varchar(1) NOT NULL,
    Tipo                           varchar(15) NOT NULL,
    Usu_Consol                     varchar(15),
    Usuario                        varchar(15),
    NumFornec                      bigint,
    NumOfor                        numeric(10,0),
    Ano                            numeric(4,0),
    Gcompra_Numero                 bigint,
    NumPar                         numeric(4,0),
    Gest_Patr                      numeric(10,0),
    Gespatr_Numero                 numeric(10,0),
    Data_Consol                    datetime,
    Data_Entrega                   datetime,
    Empenho                        varchar(20),
    NotaFiscal                     varchar(15),
    Almox_Orig                     int,
    Num_Sai_Orig                   numeric(10,0),
    Ent_Empenho                    varchar(20),
    NumProc                        varchar(25),
    Num_Sai_Ger                    numeric(10,0),
    Setor_Sai_Ger                  varchar(15),
    Emp_SetorSai_Ger               numeric(2,0),
    Flex_Campo_01                  varchar(2000),
    Flex_Campo_02                  varchar(2000),
    Flex_Campo_03                  varchar(2000),
    Flex_Campo_04                  varchar(2000),
    Flex_Campo_05                  varchar(2000),
    Flg_patrim                     varchar(1),
    Flex_Campo_06                  varchar(2000),
    Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
    Class_Orc                      varchar(20),
    Class_Ent                      varchar(15),
    Tipo_Patr                      varchar(15),
    AnoOfor                        numeric(4,0),
    Almox_Ent_Orig                 bigint,
    Ent_Orig                       numeric(10,0),
    Flg_Finaliz                    varchar(1),
    Data_Finaliz                   datetime,
    Usu_Finaliz                    varchar(15),
    Situacao_Ent                   varchar(30),
    Usu_Sit_Ent                    varchar(30),
	ID_Parcelas                    bigint,
	CONSTRAINT SM_entradas_pk PRIMARY KEY  CLUSTERED  (ID_Entradas)  ON [PRIMARY])
GO

CREATE TABLE SM_Local_Mat(
    ID_LocalMat                    bigint identity (1,1) NOT NULL,
	Num_Almox                      bigint NOT NULL,
    Num_Local                      numeric(14,0) NOT NULL,
    Desc_Local                     varchar(100),
    Cod_Barras                     numeric(15,0),
    Flex_Campo_01                  varchar(2000),
    Flex_Campo_02                  varchar(2000),
    Flex_Campo_03                  varchar(2000),
    Flex_Campo_04                  varchar(2000),
    Flex_Campo_05                  varchar(2000),
    Flex_Campo_06                  varchar(2000),
    Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
	CONSTRAINT SM_Local_Mat_pk PRIMARY KEY  CLUSTERED  (ID_LocalMat)  ON [PRIMARY])
GO

CREATE TABLE SM_MaterialAlmox(
    ID_MaterialAlmox               bigint identity (1,1) NOT NULL,
    Almox                          bigint not null ,
    Itemid                         numeric(13,0) NOT NULL,
    Contabilizacao                 varchar(15) NOT NULL,
    Contr_cota                     varchar(1) NOT NULL,
    Local                          numeric(14,0),
    Consumo                        numeric,
    Flex_Campo_01                  varchar(2000),
    Flex_Campo_02                  varchar(2000),
    Flex_Campo_03                  varchar(2000),
    Flex_Campo_04                  varchar(2000),
    Flex_Campo_05                  varchar(2000),
    Flex_Campo_06                  varchar(2000),
    Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
    ID_Localmat                    bigint,
	ID_Itens                       bigint,
	CONSTRAINT SM_MaterialAlmox_pk PRIMARY KEY  CLUSTERED  (ID_MaterialAlmox)  ON [PRIMARY])
GO

CREATE TABLE SM_ItensParcela(
    ID_ItensParcela                bigint identity (1,1) NOT NULL,
	NumPar                         numeric(4,0) NOT NULL,
    ItemOfor                       numeric(4,0) NOT NULL,
    NumOfor                        numeric(10,0) NOT NULL,
    Gcompra_Numero                 bigint NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Quant                          numeric NOT NULL,
    Valor                          numeric,
    Flex_Campo_01                  varchar(2000),
    Flex_Campo_02                  varchar(2000),
    Flex_Campo_03                  varchar(2000),
    Flex_Campo_04                  varchar(2000),
    Flex_Campo_05                  varchar(2000),
    Flex_Campo_06                  varchar(2000),
    Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
    Flg_Desdobrada                 varchar(1),
	ID_Parcelas                    bigint,
	ID_ItensOfor                   bigint,
	ID_Ordemfornec                 bigint,
	CONSTRAINT SM_ItensParcela_pk PRIMARY KEY  CLUSTERED  (ID_ItensParcela)  ON [PRIMARY])
GO

CREATE TABLE SM_Itped_Parcela(
    ID_ItpedParcela                bigint identity (1,1) NOT NULL,
	NumOfor                        numeric(10,0) NOT NULL,
    NumPed                         numeric(10,0) NOT NULL,
    NumPar                         numeric(4,0) NOT NULL,
    Ano_Ofor                       numeric(4,0) NOT NULL,
    ItemOfor                       numeric(4,0) NOT NULL,
    Ano_Ped                        numeric(4,0) NOT NULL,
    ItemPed                        numeric(4,0) NOT NULL,
    Gcompra_Numero                 bigint NOT NULL,
    Quant                          numeric NOT NULL,
    Flex_Campo_01                  varchar(2000),
    Flex_Campo_02                  varchar(2000),
    Flex_Campo_03                  varchar(2000),
    Flex_Campo_04                  varchar(2000),
    Flex_Campo_05                  varchar(2000),
    Flex_Campo_06                  varchar(2000),
    Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
	ID_ItensPedido                 bigint,
	ID_ItensParcela                bigint,
	ID_Parcelas                    bigint,
	ID_OrdemFornec                 bigint,
	ID_ItensOfor                   bigint,
	CONSTRAINT SM_Itped_Parcela_pk PRIMARY KEY  CLUSTERED  (ID_ItpedParcela)  ON [PRIMARY])
GO

CREATE TABLE SM_ItensProposta(
    ID_ItensProposta               bigint identity (1,1) NOT NULL, 
	NumFornec                      bigint NOT NULL,
    ItemCompra                     numeric(4,0) NOT NULL,
    Gcompra_Numero                 bigint NOT NULL,
    NumCompr                       numeric(10,0) NOT NULL,
    Ano                            numeric(4,0) NOT NULL,
    Flg_Desclas                    varchar(1) NOT NULL,
    Preco                          numeric,
    Garantia                       varchar(50),
    Classificacao                  numeric(4,0),
    Descricao                      varchar(2000),
    Quant                          numeric,
    PrecoUnit                      numeric,
    MarcaMod                       varchar(50),
    Flex_Campo_01                  varchar(2000),
    Flex_Campo_02                  varchar(2000),
    Flex_Campo_03                  varchar(2000),
    Flex_Campo_04                  varchar(2000),
    Flex_Campo_05                  varchar(2000),
    Flex_Campo_06                  varchar(2000),
    Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
	ID_ItensCompra                 bigint,
	ID_Propostas                   bigint,
	CONSTRAINT SM_ItensProposta_pk PRIMARY KEY  CLUSTERED  (ID_ItensProposta)  ON [PRIMARY])
GO

CREATE TABLE SM_ItensEnt(
    ID_ItensEnt                    bigint identity (1,1) NOT NULL,
	Almox                          bigint NOT NULL,
    Num_Ent                        numeric(10,0) NOT NULL,
    ItemId                         numeric(13,0) NOT NULL,
    Quant                          numeric NOT NULL,
    Valor                          numeric NOT NULL,
    Flex_Campo_01                  varchar(2000),
    Flex_Campo_02                  varchar(2000),
    Flex_Campo_03                  varchar(2000),
    Flex_Campo_04                  varchar(2000),
    Flex_Campo_05                  varchar(2000),
    Flex_Campo_06                  varchar(2000),
    Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
    Gcompra_Numero                 int,
    NumOfor                        numeric(10,0),
    AnoOfor                        numeric(4,0),
    ItemOfor                       numeric(4,0),
    NumPar                         numeric(4,0),
	ID_MaterialAlmox               bigint,
	ID_Entradas                    bigint,
	ID_Parcelas                    bigint,
	ID_ItensOfor                   bigint,
	ID_ItensParcela                bigint,
	ID_Itens                       bigint,
	CONSTRAINT SM_ItensEnt_pk PRIMARY KEY  CLUSTERED  (ID_ItensEnt)  ON [PRIMARY])
GO

CREATE TABLE SM_Comentario (	
    ID_Comentario 			int identity (1,1) NOT NULL, 
	Data_Coment 			datetime NOT NULL,
	Usuario					varchar(15) NOT NULL,
	Comentario 				varchar(2000),
	Tabela       			varchar(100),
	Chave_01    			varchar(100),
	Valor_01    			varchar(100),
	Chave_02          	varchar(100),
	Valor_02          	varchar(100),
	Chave_03          	varchar(100),
	Valor_03          	varchar(100),
	Chave_04          	varchar(100),
	Valor_04          	varchar(100),
	Chave_05          	varchar(100),
	Valor_05          	varchar(100),
	Chave_06          	varchar(100),
	Valor_06          	varchar(100),
	Chave_07          	varchar(100),
	Valor_07          	varchar(100),
	Chave_08          	varchar(100),	
	Valor_08          	varchar(100),
	Flex_Campo_01 			varchar(2000),
	Flex_Campo_02 			varchar(2000),
	Flex_Campo_03 			varchar(2000),
	Flex_Campo_04 			varchar(2000),
	Flex_Campo_05 			varchar(2000),
	Flex_Campo_06 			varchar(2000),
	Flex_Campo_07                  varchar(2000),
    Flex_Campo_08                  varchar(2000),
    Flex_Campo_09                  varchar(2000),
    Flex_Campo_10                  varchar(2000),
	CONSTRAINT SM_Comentario_pk PRIMARY KEY  CLUSTERED  (ID_Comentario)  ON [PRIMARY])
GO



CREATE TABLE c_Agora_AtividadeJanus(
    ID_Atividade                   bigint identity (1,1) NOT NULL,
    Atividade                      varchar(40) ,
    Flg_Inativo                    varchar(1) DEFAULT 'N' NOT NULL,
	CONSTRAINT c_Agora_AtividadeJanus_pk PRIMARY KEY  CLUSTERED  (ID_Atividade)  ON [PRIMARY])
GO

CREATE TABLE c_Agora_ContratoJanus
  (
    ID_Contrato        bigint identity (1,1) NOT NULL,
    Identificador      varchar(50) NOT NULL,
    Descricao          varchar(100),
    ID_CentroCustoNovo numeric(10,0),
	CONSTRAINT c_Agora_ContratoJanus_pk PRIMARY KEY (ID_Contrato)  ON [PRIMARY])
GO

ALTER TABLE SM_Projetos ADD CONSTRAINT IX_SM_Projetos_U UNIQUE(Cod, Ano)
GO

ALTER TABLE SM_Projetos WITH CHECK ADD CONSTRAINT SM_Projetos_fk FOREIGN KEY(ano)
REFERENCES SM_AnoCompra (ano)
GO

ALTER TABLE SM_Projetos  WITH CHECK ADD  CONSTRAINT Ck_Flg_Transfere CHECK  ((Flg_Transfere='N' OR Flg_Transfere='S'))
GO

ALTER TABLE SM_Projetos  WITH CHECK ADD  CONSTRAINT Ck_Flg_Inativo CHECK  ((Flg_Inativo='N' OR Flg_Inativo='S'))
GO


ALTER TABLE SM_Natdesp ADD CONSTRAINT Ix_SM_Natdesp UNIQUE(Numero,Ano)
GO

ALTER TABLE SM_Natdesp WITH CHECK ADD CONSTRAINT SM_Natdesp_fk FOREIGN KEY(Ano)
REFERENCES SM_AnoCompra (Ano)
GO

CREATE INDEX Ix_ano ON SM_Natdesp (Ano); 
GO

ALTER TABLE SM_Natdesp  WITH CHECK ADD  CONSTRAINT ck_NatBem CHECK  (Natbem='N' OR Natbem='S')
GO

ALTER TABLE SM_Natdesp  WITH CHECK ADD  CONSTRAINT ck_Execucao CHECK  (Execucao='N' OR Execucao='S')
GO

ALTER TABLE SM_Natdesp  WITH CHECK ADD  CONSTRAINT ck_Orc CHECK  (Orc='N' OR Orc='S')
GO

ALTER TABLE SM_Natdesp  WITH CHECK ADD  CONSTRAINT ck_Desativ CHECK  (Desativ='N' OR Desativ='S')
GO

ALTER TABLE SM_Dotacoes ADD CONSTRAINT IX_SM_Dotacoes_u UNIQUE(Seq_dot, Ano)
GO

ALTER TABLE SM_Dotacoes WITH CHECK ADD CONSTRAINT SM_Dotacoes_fk FOREIGN KEY(ID_Natdesp)
REFERENCES SM_Natdesp (ID_Natdesp)
GO

ALTER TABLE SM_Dotacoes WITH CHECK ADD CONSTRAINT SM_Dotacoes_fk_1 FOREIGN KEY(Ano)
REFERENCES SM_AnoCompra (Ano)
GO

ALTER TABLE SM_Dotacoes  WITH CHECK ADD  CONSTRAINT ck_Dotacoes_Inativo CHECK  (Flg_Inativo='N' OR Flg_Inativo='S')
GO


ALTER TABLE SM_Dotacao_Projeto ADD CONSTRAINT IX_SM_Dotacao_Projeto_u UNIQUE(Projeto, Ano, Dot_Seq_Dot)
GO

ALTER TABLE SM_Dotacao_Projeto WITH CHECK ADD CONSTRAINT SM_Dotacao_Projeto_fk FOREIGN KEY(ID_Projetos)
REFERENCES SM_Projetos (ID_Projetos)
GO

ALTER TABLE SM_Dotacao_Projeto WITH CHECK ADD CONSTRAINT SM_Dotacao_Projeto_fk_1 FOREIGN KEY(Ano)
REFERENCES SM_AnoCompra (Ano)
GO

ALTER TABLE SM_Dotacao_Projeto WITH CHECK ADD CONSTRAINT SM_Dotacao_Projeto_fk_2 FOREIGN KEY(ID_Dotacoes)
REFERENCES SM_Dotacoes (ID_Dotacoes)
GO


ALTER TABLE SM_TipoLicitacao WITH CHECK ADD  CONSTRAINT ck_Flg_processo CHECK  ((Flg_Processo=' N' OR Flg_Processo='S'))
GO

ALTER TABLE SM_TipoLicitacao WITH CHECK ADD  CONSTRAINT ck_Flg_periodo CHECK  ((Flg_periodo='N' OR Flg_periodo='S'))
GO


ALTER TABLE SM_Fornecedor ADD CONSTRAINT Ix_SM_Fornecedor_u UNIQUE(cgc)
GO

ALTER TABLE SM_Fornecedor WITH CHECK ADD  CONSTRAINT ck_Flg_Qualidade CHECK  ((Flg_Qualidade='N' OR [Flg_Qualidade]='S'))
GO

ALTER TABLE SM_Fornecedor WITH CHECK ADD  CONSTRAINT ck_Situacao CHECK  ((Situacao='SUSPENSO' OR Situacao='CANCELADO' OR 
Situacao='ADVERTIDO' OR Situacao='REGULAR' OR Situacao='IRREGULAR'))
GO

ALTER TABLE SM_Fornecedor WITH CHECK ADD  CONSTRAINT ck_Ativo CHECK  ((Ativo='N' OR Ativo='S'))
GO

ALTER TABLE SM_Fornecedor WITH CHECK ADD  CONSTRAINT ck_AtuaReg CHECK  ((AtuaReg='N' OR AtuaReg='S'))
GO

ALTER TABLE SM_Fornecedor WITH CHECK ADD  CONSTRAINT ck_Flg_Email CHECK  ((Flg_Email='N' OR Flg_Email='S'))
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD CONSTRAINT SM_Almoxarifados_fk FOREIGN KEY(Almox_Numero)
REFERENCES SM_Almoxarifados (Numero)
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD CONSTRAINT SM_almoxarifados_fk_1 FOREIGN KEY(ID_Projetos)
REFERENCES SM_Projetos (ID_Projetos)
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_GuiaPadrao CHECK  (Flg_GuiaPadrao='N' OR Flg_GuiaPadrao='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_ImpGuiaDist CHECK  (Flg_ImpGuiaDist='N' OR Flg_ImpGuiaDist='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_CcpCota CHECK  (Flg_CcpCota='N' OR Flg_CcpCota='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_VeEstoque CHECK  (Flg_VeEstoque='N' OR Flg_VeEstoque='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_Gerarm CHECK  (Flg_gerarm='N' OR Flg_Gerarm='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_MsgrEstr_Almox CHECK  (Flg_MsgrEstr_Almox='N' OR Flg_MsgrEstr_Almox='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_MsgrEstr_Proj CHECK  (Flg_Msgrestr_Proj='N' OR Flg_MsgrEstr_Proj='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_MsgrEstr_Cota CHECK  (Flg_MsgrEstr_Cota='N' OR Flg_MsgrEstr_Cota='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_MsgrEstr_Lote CHECK  (Flg_MsgrEstr_Lote='N' OR Flg_MsgrEstr_Lote='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_MsgrEstr_Apre CHECK  (Flg_MsgrEstr_Apre='N' OR Flg_MsgrEstr_Apre='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_MsgrEstr_Aplo CHECK  (Flg_MsgrEstr_Aplo='N' OR Flg_MsgrEstr_Aplo='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Flg_CcPrefer CHECK  (Flg_CcPrefer='N' OR Flg_CcPrefer='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Fechado CHECK  (Fechado='N' OR Fechado='S')
GO

ALTER TABLE SM_Almoxarifados WITH CHECK ADD  CONSTRAINT ck_Perm_Consol CHECK  (Perm_Consol='N' OR Perm_Consol='S')
GO

ALTER TABLE SM_Gclasses ADD CONSTRAINT Ix_SM_Gclasses UNIQUE(Grupo_Classe,Item_classe)
GO

ALTER TABLE SM_Gclasses WITH CHECK ADD CONSTRAINT SM_gclasses_fk FOREIGN KEY(Item_Classe)
REFERENCES SM_Iclasses (Item_Classe)
GO

ALTER TABLE SM_Fclasses ADD CONSTRAINT Ix_SM_Fclasses UNIQUE(Fam_classe,Item_Classe,Grupo_Classe)
GO

ALTER TABLE SM_Fclasses WITH CHECK ADD CONSTRAINT SM_Fclasses_fk FOREIGN KEY(ID_Gclasses)
REFERENCES SM_Gclasses (ID_Gclasses)
GO

ALTER TABLE SM_Fclasses  WITH CHECK ADD  CONSTRAINT ck_Flg_Obras CHECK  (Flg_Obras='N' OR Flg_Obras='S')
GO
	
ALTER TABLE SM_Fclasses  WITH CHECK ADD  CONSTRAINT ck_Flg_Almox CHECK  (Flg_Almox='N' OR Flg_Almox='S')
GO	

ALTER TABLE SM_Fclasses  WITH CHECK ADD  CONSTRAINT ck_Flg_Serv CHECK  (Flg_Serv='N' OR Flg_Serv='S')
GO

ALTER TABLE SM_Fclasses  WITH CHECK ADD  CONSTRAINT ck_Flg_Imovel CHECK  (Flg_Imovel='N' OR Flg_Imovel='S')
GO

ALTER TABLE SM_Fclasses  WITH CHECK ADD  CONSTRAINT ck_Flg_Patrim CHECK  (Flg_Patrim='N' OR Flg_Patrim='S')
GO

ALTER TABLE SM_Itens ADD CONSTRAINT Ix_SM_itens_u_1 UNIQUE(item, Item_Classe, 
  Grupo_Classe, Fam_Classe, SM_pais)
GO

ALTER TABLE SM_Itens ADD CONSTRAINT Ix_SM_Itens_u_2 UNIQUE(ItemId)
GO

ALTER TABLE SM_Itens WITH CHECK ADD CONSTRAINT SM_Itens_fk FOREIGN KEY(Unidade)
REFERENCES SM_UnidMed (Unidade)
GO

ALTER TABLE SM_Itens WITH CHECK ADD CONSTRAINT SM_itens_fk_1 FOREIGN KEY(Cod_Inc)
REFERENCES SM_Inc (Cod_Inc)
GO

ALTER TABLE SM_Itens WITH CHECK ADD CONSTRAINT SM_itens_fk_2 FOREIGN KEY(ID_Fclasses)
REFERENCES SM_Fclasses (ID_FClasses)
GO

ALTER TABLE SM_Itens  WITH CHECK ADD  CONSTRAINT ck_Itens_Flg_Desuso CHECK  (Flg_Desuso='N' OR Flg_Desuso='S')
GO

ALTER TABLE SM_Itens  WITH CHECK ADD  CONSTRAINT ck_Itens_Flg_Decimal CHECK  (Flg_Decimal='N' OR Flg_Decimal='S')
GO

ALTER TABLE SM_Itens  WITH CHECK ADD  CONSTRAINT ck_Itens_Flg_Fracao CHECK  (Flg_Fracao='N' OR Flg_Fracao='S')
GO

ALTER TABLE SM_Itens  WITH CHECK ADD  CONSTRAINT ck_Itens_Tipo_Patr CHECK  (Tipo_Patr='PLAQ' OR Tipo_Patr='NPLAQ' OR Tipo_Patr='IMOV')
GO

ALTER TABLE SM_Itens  WITH CHECK ADD  CONSTRAINT ck_Itens_Flg_Lote CHECK  (Flg_Lote='N' OR Flg_Lote='S')
GO

ALTER TABLE SM_Natdesp_Item ADD CONSTRAINT Ix_SM_Natdesp_Item_u UNIQUE(Natdesp,Ano,Itemid)
GO

ALTER TABLE SM_Natdesp_Item WITH CHECK ADD CONSTRAINT SM_Natdesp_Itens_fk FOREIGN KEY(ID_Itens)
REFERENCES SM_Itens (ID_Itens)
GO

ALTER TABLE SM_Natdesp_Item WITH CHECK ADD CONSTRAINT SM_Natdesp_Natdesp_fk FOREIGN KEY(ID_Natdesp)
REFERENCES SM_Natdesp (ID_Natdesp)
GO

ALTER TABLE SM_Gpf_Ay ADD CONSTRAINT Ix_SM_Gpf_Ay_u UNIQUE(Ano, Gpf)
GO

ALTER TABLE SM_Gpf_Ay WITH CHECK ADD CONSTRAINT SM_Gpf_Ay_fk FOREIGN KEY(Ano)
REFERENCES SM_AnoCompra (Ano)
GO

ALTER TABLE SM_Eventos_Ay ADD CONSTRAINT Ix_SM_Eventos_Ay_u UNIQUE(NumEvento, Ano)
GO

ALTER TABLE SM_Eventos_Ay WITH CHECK ADD CONSTRAINT SM_Eventos_Ay_fk FOREIGN KEY(Ano)
REFERENCES SM_AnoCompra (Ano)
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Autoriza CHECK  (Autoriza='N' OR Autoriza='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Calc_Auto CHECK  (calc_Auto='N' OR calc_Auto='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Chk_Empenho_Ay CHECK  (chk_Empenho_Ay='N' OR chk_Empenho_Ay='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Chk_Reserva_Ay CHECK  (chk_Reserva_Ay='N' OR chk_Reserva_Ay='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Com_Local CHECK  (Com_Local='N' OR Com_Local='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Com_Reserva CHECK  (Com_Reserva='N' OR Com_Reserva='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Criterio CHECK  (Criterio='MAIOR' OR Criterio='MENOR' OR Criterio='MEDIA')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Emp_Local CHECK  (Emp_Local='N' OR Emp_Local='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Emp_Convenio CHECK  (Emp_Convenio='N' OR Emp_Convenio='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Emp_Dotacao CHECK  (Emp_Dotacao='N' OR Emp_Dotacao='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Emp_Reserva CHECK  (Emp_Reserva='N' OR Emp_Reserva='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Flg_Usr_AutPed CHECK  (Flg_Usr_AutPed='N' OR Flg_Usr_AutPed='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Flg_Usr_FazRes CHECK  (Flg_Usr_FazRes='N' OR Flg_Usr_FazRes='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Imp_Sem_Empenho CHECK  (Imp_Sem_Empenho='N' OR Imp_Sem_Empenho='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Ins_CorpoEmp_Ay CHECK  (Ins_CorpoEmp_Ay='N' OR Ins_CorpoEmp_Ay='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Ins_Empenho_Ay CHECK  (Ins_Empenho_Ay='N' OR Ins_Empenho_Ay='S')
GO

ALTER TABLE SM_GestorCompras WITH CHECK ADD  CONSTRAINT ck_Ins_Reserva_Ay CHECK  (Ins_Reserva_Ay='N' OR Ins_Reserva_Ay='S')
GO

ALTER TABLE SM_AvailNumCompra ADD CONSTRAINT Ix_SM_AvailNumCompra_u UNIQUE(Gcompra_Numero,Ano_Ano)
GO

ALTER TABLE SM_AvailNumCompra WITH CHECK ADD CONSTRAINT SM_AvailNumCompra_fk FOREIGN KEY(Ano_Ano)
REFERENCES SM_Anocompra (Ano)
GO

ALTER TABLE SM_AvailNumCompra WITH CHECK ADD CONSTRAINT SM_AvailNumCompra_fk_1 FOREIGN KEY(Gcompra_Numero)
REFERENCES SM_GestorCompras (Numero)
GO

ALTER TABLE SM_Compras ADD CONSTRAINT IX_SM_Compras_u UNIQUE(Ano_ano, Gcompra_numero, NumCompr)
GO

ALTER TABLE SM_Compras WITH CHECK ADD CONSTRAINT SM_Compras_Fk FOREIGN KEY(Ano_Ano)
REFERENCES SM_AnoCompra (Ano)
GO

ALTER TABLE SM_Compras WITH CHECK ADD CONSTRAINT SM_Compras_fk_2 FOREIGN KEY(Gcompra_Numero)
REFERENCES SM_GestorCompras (Numero)
GO


ALTER TABLE SM_Compras WITH CHECK ADD  CONSTRAINT ck_Compras_Flg_Internet CHECK  (Flg_Internet='N' OR Flg_Internet='S')
GO

ALTER TABLE SM_Compras WITH CHECK ADD  CONSTRAINT ck_Flg_Fechado CHECK  (Flg_Fechado='N' OR Flg_Fechado='S')
GO

ALTER TABLE SM_Compras WITH CHECK ADD  CONSTRAINT ck_Tipo_Prop CHECK  (Tipo_Prop='PADRÃO' OR Tipo_Prop='LEILÃO')
GO

ALTER TABLE SM_Compras WITH CHECK ADD  CONSTRAINT ck_Flg_Preco CHECK  (Flg_Preco='S' OR Flg_Preco='N')
GO

ALTER TABLE SM_Compras WITH CHECK ADD  CONSTRAINT ck_Flg_Enviar_Email CHECK  (Flg_Enviar_Email='S' OR Flg_Enviar_Email='N')
GO

ALTER TABLE SM_Compras WITH CHECK ADD  CONSTRAINT ck_Flg_Internet CHECK  (Flg_Internet='S' OR Flg_Internet='N')
GO


ALTER TABLE SM_ItensCompra ADD CONSTRAINT Ix_SM_ItensCompr_u UNIQUE(Ano, Gcompra_Numero, NumCompr, ItemCompra)
GO

ALTER TABLE SM_ItensCompra WITH CHECK ADD CONSTRAINT SM_ItensCompra_fk FOREIGN KEY(ID_Compras)
REFERENCES SM_Compras (ID_Compras)
GO

ALTER TABLE SM_ItensCompra WITH CHECK ADD CONSTRAINT SM_ItensCompra_fk_1 FOREIGN KEY(Unidade)
REFERENCES SM_Unidmed (Unidade)
GO

ALTER TABLE SM_ItensCompra WITH CHECK ADD CONSTRAINT SM_itenscompra_fk_2 FOREIGN KEY(ID_Itens)
REFERENCES SM_Itens (ID_Itens)
GO

ALTER TABLE SM_ItensCompra WITH CHECK ADD CONSTRAINT SM_ItensCompra_fk_3 FOREIGN KEY(ID_Fclasses)
REFERENCES SM_fclasses  (ID_Fclasses)
GO

ALTER TABLE SM_ItensCompra WITH CHECK ADD  CONSTRAINT ck_Icompras_Flg_Servico CHECK  (Flg_Servico='N' OR Flg_Servico='S')
GO

ALTER TABLE SM_EventosCompra ADD CONSTRAINT Ix_SM_EventosCompra_u UNIQUE(Ano, Gcompra_Numero, NumCompr, data)
GO

ALTER TABLE SM_EventosCompra WITH CHECK ADD CONSTRAINT SM_EventosCompras_fk FOREIGN KEY(ID_Compras)
REFERENCES SM_Compras (ID_Compras)
GO

ALTER TABLE SM_Pedidos ADD CONSTRAINT Ix_SM_Pedidos_u UNIQUE(Gcompra_Numero,Ano,NumPed)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk FOREIGN KEY(Ano)
REFERENCES SM_AnoCompra (Ano)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk_1 FOREIGN KEY(ID_Projetos)
REFERENCES SM_Projetos (ID_Projetos)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk_2 FOREIGN KEY(ID_Natdesp)
REFERENCES SM_Natdesp (ID_Natdesp)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk_3 FOREIGN KEY(Natdesp_Exec, Ano)
REFERENCES SM_Natdesp (Numero,Ano)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk_4 FOREIGN KEY(ID_GpfAy)
REFERENCES SM_Gpf_Ay (ID_GpfAy)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk_5 FOREIGN KEY(ID_EventosAy)
REFERENCES SM_Eventos_Ay (ID_EventosAy)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk_6 FOREIGN KEY(ID_Dotacoes)
REFERENCES SM_Dotacoes (ID_Dotacoes)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD CONSTRAINT SM_Pedidos_fk_7 FOREIGN KEY(Gcompra_Numero)
REFERENCES SM_GestorCompras (Numero)
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD  CONSTRAINT ck_Tipo_Entrega CHECK  (Tipo_Entrega='A' OR Tipo_Entrega='S' OR Tipo_Entrega='L')
GO

ALTER TABLE SM_Pedidos WITH CHECK ADD  CONSTRAINT ck_Flg_Servico CHECK  (Flg_Servico='N' OR Flg_Servico='S')
GO

ALTER TABLE SM_ItensPedido ADD CONSTRAINT Ix_SM_ItensPedido_u UNIQUE(Gcompra_Numero, Numped, Ano, ItemPed)
GO

ALTER TABLE SM_ItensPedido WITH CHECK ADD CONSTRAINT SM_ItensPedido_fk FOREIGN KEY(ID_Itens)
REFERENCES SM_itens (ID_Itens)
GO

ALTER TABLE SM_ItensPedido WITH CHECK ADD CONSTRAINT SM_ItensPedido_fk_1 FOREIGN KEY(Unidade)
REFERENCES SM_UnidMed (Unidade)
GO

ALTER TABLE SM_ItensPedido WITH CHECK ADD CONSTRAINT SM_ItensPedido_fk_2 FOREIGN KEY(ID_Pedidos)
REFERENCES SM_Pedidos (ID_Pedidos)
GO

ALTER TABLE SM_ItensPedido WITH CHECK ADD CONSTRAINT SM_ItensPedido_fk_3 FOREIGN KEY(ID_Natdesp)
REFERENCES SM_Natdesp (ID_Natdesp)
GO

ALTER TABLE SM_ItensPedido WITH CHECK ADD CONSTRAINT SM_ItensPedido_fk_4 FOREIGN KEY(ID_ItensCompra)
REFERENCES SM_ItensCompra(ID_ItensCompra)
GO

ALTER TABLE SM_ItensPedido WITH CHECK ADD CONSTRAINT SM_ItensPedido_fk_5 FOREIGN KEY(ID_Fclasses)
REFERENCES SM_Fclasses(ID_Fclasses)
GO

ALTER TABLE SM_ItensPedido  WITH CHECK ADD  CONSTRAINT ck_Flg_Indeferido CHECK  (Flg_Indeferido='N' OR Flg_Indeferido='S')
GO

ALTER TABLE SM_ItensPedido  WITH CHECK ADD  CONSTRAINT ck_Flg_Autorizado CHECK  (Flg_Autorizado='N' OR Flg_Autorizado='S')
GO

ALTER TABLE SM_ItensPedido  WITH CHECK ADD  CONSTRAINT ck_Ipedido_Flg_Servico CHECK  (Flg_Servico='N' OR Flg_Servico='S')
GO

ALTER TABLE SM_Cotacoes ADD CONSTRAINT Ix_SM_Cotacoes_u UNIQUE(Seq, ItemId)
GO

ALTER TABLE SM_Cotacoes WITH CHECK ADD CONSTRAINT SM_Cotacoes_fk FOREIGN KEY(ID_Itens)
REFERENCES SM_Itens (ID_Itens)
GO

ALTER TABLE SM_Cotacoes WITH CHECK ADD CONSTRAINT SM_cotacoes_fk_1 FOREIGN KEY(NumFornec)
REFERENCES SM_Fornecedor (NumFornec)
GO

ALTER TABLE SM_PrecoEstimado ADD CONSTRAINT Ix_SM_PrecoEstimado_u UNIQUE(Gcompra_Numero, Ano, Numped, ItemPed, Seq)
GO

ALTER TABLE SM_PrecoEstimado WITH CHECK ADD CONSTRAINT SM_PrecoEstimado_fk FOREIGN KEY(ID_ItensPedido)
REFERENCES SM_ItensPedido (ID_ItensPedido)
GO

ALTER TABLE SM_PrecoEstimado WITH CHECK ADD CONSTRAINT SM_PrecoEstimado_fk_1 FOREIGN KEY(NumFornec)
REFERENCES SM_Fornecedor (NumFornec)
GO

ALTER TABLE SM_Propostas ADD CONSTRAINT Ix_SM_Propostas_u UNIQUE(NumFornec, Ano, Gcompra_Numero, NumCompr)
GO

ALTER TABLE SM_Propostas WITH CHECK ADD CONSTRAINT SM_Propostas_fk FOREIGN KEY(ID_Compras)
REFERENCES SM_Compras (ID_Compras)
GO

ALTER TABLE SM_Propostas WITH CHECK ADD CONSTRAINT SM_Propostas_fk_1 FOREIGN KEY(NumFornec)
REFERENCES SM_Fornecedor (NumFornec)
GO

ALTER TABLE SM_Propostas WITH CHECK ADD  CONSTRAINT ck_Flg_Desclas CHECK  (Flg_Desclas='N' OR Flg_Desclas='S')
GO

ALTER TABLE SM_OrdemFornec ADD CONSTRAINT Ix_SM_OrdemFornec_u UNIQUE(NumOfor, Ano, Gcompra_Numero)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk FOREIGN KEY(ID_Compras)
REFERENCES SM_Compras (ID_Compras)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_1 FOREIGN KEY(Ano)
REFERENCES SM_AnoCompra (Ano)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_2 FOREIGN KEY(ID_GpfAy)
REFERENCES SM_Gpf_Ay (ID_GpfAy)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_3 FOREIGN KEY(Gcompra_Numero)
REFERENCES SM_GestorCompras (Numero)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_4 FOREIGN KEY(NumFornec)
REFERENCES SM_Fornecedor (NumFornec)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_Ordemfornec_fk_5 FOREIGN KEY(ID_EventosAy)
REFERENCES SM_Eventos_Ay (ID_EventosAy)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_6 FOREIGN KEY(ID_Dotacoes)
REFERENCES SM_Dotacoes (ID_Dotacoes)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_7 FOREIGN KEY(Natdesp_Exec, Ano)
REFERENCES SM_NatDesp (Numero,Ano)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_8 FOREIGN KEY(ID_Natdesp)
REFERENCES SM_NatDesp (ID_Natdesp)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD CONSTRAINT SM_OrdemFornec_fk_9 FOREIGN KEY(Modemp_Ay)
REFERENCES SM_ModEmpenho_Ay (ModEmp)
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD  CONSTRAINT ck_Ordem_Tipo_Entrega CHECK  (Tipo_Entrega='A' OR Tipo_Entrega='S' OR Tipo_Entrega='L')
GO

ALTER TABLE SM_OrdemFornec WITH CHECK ADD  CONSTRAINT ck_Flg_Contr CHECK  (Flg_Contr='N' OR Flg_Contr='S')
GO

ALTER TABLE SM_ItensOfor ADD CONSTRAINT Ix_SM_ItensOfor_u UNIQUE(NumOfor, Ano, Gcompra_Numero, ItemOfor)
GO

ALTER TABLE SM_ItensOfor WITH CHECK ADD CONSTRAINT SM_ItensOfor_fk FOREIGN KEY(ID_OrdemFornec)
REFERENCES SM_OrdemFornec (ID_OrdemFornec)
GO

ALTER TABLE SM_ItensOfor WITH CHECK ADD CONSTRAINT SM_ItensOfor_fk_1 FOREIGN KEY(ID_ItensCompra)
REFERENCES SM_ItensCompra (ID_ItensCompra)
GO

ALTER TABLE SM_Itped_Ofor ADD CONSTRAINT Ix_SM_Itped_Ofor_u UNIQUE(NumOfor, Ano_Ofor, Gcompra_Numero,ItemPed, NumPed, Ano_Ped, ItemOfor)
GO

ALTER TABLE SM_Itped_Ofor WITH CHECK ADD CONSTRAINT SM_Itped_Ofor_fk FOREIGN KEY(ID_ItensPedido)
REFERENCES SM_itenspedido (ID_ItensPedido)
GO

ALTER TABLE SM_Itped_Ofor WITH CHECK ADD CONSTRAINT SM_Itped_Ofor_fk_1 FOREIGN KEY(ID_ItensOfor)
REFERENCES SM_ItensOfor (ID_ItensOfor)
GO

ALTER TABLE SM_Parcelas ADD CONSTRAINT Ix_SM_Parcelas_u UNIQUE(NumOfor, Ano, Gcompra_Numero, NumPar)
GO

ALTER TABLE SM_Parcelas WITH CHECK ADD CONSTRAINT SM_Parcelas_fk FOREIGN KEY(Almox)
REFERENCES SM_Almoxarifados (Numero)
GO

ALTER TABLE SM_Parcelas WITH CHECK ADD CONSTRAINT SM_Parcelas_fk_2 FOREIGN KEY(ID_OrdemFornec)
REFERENCES SM_OrdemFornec (ID_OrdemFornec)
GO

ALTER TABLE SM_Parcelas WITH CHECK ADD CONSTRAINT SM_Parcelas_fk_3 FOREIGN KEY(local)
REFERENCES SM_Locais_Entregas (local)
GO

ALTER TABLE SM_Parcelas WITH CHECK ADD  CONSTRAINT ck_Parcela_Tipo_Entrega CHECK  (Tipo_Entrega='L' OR Tipo_Entrega='S')
GO

ALTER TABLE SM_Parcelas WITH CHECK ADD  CONSTRAINT ck_Parcela_Flg_Entrega_ok CHECK  (Flg_Entrega_ok='S' OR Flg_Entrega_ok='N')
GO


ALTER TABLE SM_Entradas ADD CONSTRAINT Ix_SM_Entradas_u UNIQUE(Num_Ent, Almox)
GO
	
ALTER TABLE SM_Entradas WITH CHECK ADD CONSTRAINT SM_Entradas_fk FOREIGN KEY(ID_Parcelas)
REFERENCES SM_Parcelas (ID_Parcelas)
GO

ALTER TABLE SM_Entradas WITH CHECK ADD CONSTRAINT SM_Entradas_fk_1 FOREIGN KEY(Almox)
REFERENCES SM_Almoxarifados (Numero)
GO

ALTER TABLE SM_Entradas WITH CHECK ADD CONSTRAINT SM_Entradas_fk_2 FOREIGN KEY(NumFornec)
REFERENCES SM_Fornecedor (NumFornec)
GO

ALTER TABLE SM_Entradas WITH CHECK ADD  CONSTRAINT ck_Ent_Flg_Consol CHECK  (Flg_Consol='N' OR Flg_Consol='S')
GO

ALTER TABLE SM_Entradas WITH CHECK ADD  CONSTRAINT ck_Ent_FlgPatrim CHECK  (Flg_Patrim='N' OR Flg_Patrim='S')
GO

ALTER TABLE SM_Entradas WITH CHECK ADD  CONSTRAINT ck_Flg_Consol CHECK  (Flg_Consol='N' OR Flg_Consol='S')
GO

CREATE NONCLUSTERED INDEX Ent_DataConsol_i ON SM_Entradas (Data_Consol ASC,Num_Ent ASC,Almox ASC)

ALTER TABLE SM_Parcelas WITH CHECK ADD CONSTRAINT SM_Parcelas_fk_1 FOREIGN KEY(ID_Entradas)
REFERENCES SM_Entradas (ID_Entradas)
GO

ALTER TABLE SM_Local_Mat ADD CONSTRAINT Ix_SM_Local_Mat_u UNIQUE(Num_Almox, Num_Local)
GO

ALTER TABLE SM_local_Mat ADD CONSTRAINT Ix_SM_Local_Mat_u_1 UNIQUE(Cod_Barras)
GO

ALTER TABLE SM_Local_Mat WITH CHECK ADD CONSTRAINT SM_Local_Mat_fk FOREIGN KEY(Num_Almox)
REFERENCES SM_Almoxarifados (Numero)
GO

ALTER TABLE SM_MaterialAlmox ADD CONSTRAINT Ix_SM_MaterialAlmox_u UNIQUE(Almox, Itemid)
GO
	
ALTER TABLE SM_MaterialAlmox WITH CHECK ADD CONSTRAINT SM_MaterialAlmox_fk FOREIGN KEY(Almox)
REFERENCES SM_Almoxarifados (Numero)
GO

ALTER TABLE SM_MaterialAlmox WITH CHECK ADD CONSTRAINT SM_MaterialAlmox_fk_1 FOREIGN KEY(ID_LocalMat)
REFERENCES SM_Local_Mat (ID_LocalMat)
GO

ALTER TABLE SM_MaterialAlmox WITH CHECK ADD CONSTRAINT SM_MaterialAlmox_fk_2 FOREIGN KEY(ID_Itens)
REFERENCES SM_Itens (ID_Itens)
GO

ALTER TABLE SM_ItensParcela ADD CONSTRAINT Ix_SM_ItensParcela_u UNIQUE(NumOfor, ItemOfor, Numpar, Ano, Gcompra_Numero)
GO

ALTER TABLE SM_ItensParcela WITH CHECK ADD CONSTRAINT SM_ItensParcela_fk FOREIGN KEY(ID_Parcelas)
REFERENCES SM_Parcelas (ID_Parcelas)
GO

ALTER TABLE SM_ItensParcela WITH CHECK ADD CONSTRAINT SM_ItensParcela_fk_1 FOREIGN KEY(ID_ItensOfor)
REFERENCES SM_ItensOfor (ID_ItensOfor)
GO

ALTER TABLE SM_Itped_Parcela ADD CONSTRAINT Ix_SM_Itped_Parcela_u UNIQUE(NumPar, NumOfor, Ano_Ofor, Gcompra_Numero,ItemPed, NumPed, Ano_Ped, ItemOfor)
GO

ALTER TABLE SM_ItPed_Parcela WITH CHECK ADD CONSTRAINT SM_ItPed_Parcela_fk FOREIGN KEY(ID_ItensPedido)
REFERENCES SM_ItensPedido (ID_ItensPedido)
GO

ALTER TABLE SM_Itped_Parcela WITH CHECK ADD CONSTRAINT SM_ItPed_Parcela_fk_1 FOREIGN KEY(ID_ItensParcela)
REFERENCES SM_ItensParcela (ID_ItensParcela)
GO


ALTER TABLE SM_ItensProposta ADD CONSTRAINT IX_SM_ItensProposta_u UNIQUE(NumFornec, Ano, ItemCompra, Gcompra_Numero,NumCompr)
GO
	
ALTER TABLE SM_ItensProposta WITH CHECK ADD CONSTRAINT SM_ItensProposta_fk FOREIGN KEY(ID_ItensCompra)
REFERENCES SM_ItensCompra (ID_ItensCompra)
GO

ALTER TABLE SM_ItensProposta WITH CHECK ADD CONSTRAINT SM_ItensProposta_fk_1 FOREIGN KEY(ID_Propostas)
REFERENCES SM_propostas (ID_Propostas)
GO

ALTER TABLE SM_ItensProposta WITH CHECK ADD  CONSTRAINT ck_ItensProposta_Flg_Desclas CHECK  (Flg_desclas='N' OR Flg_desclas='S')
GO

ALTER TABLE SM_ItensEnt ADD CONSTRAINT IX_SM_ItensEnt_u UNIQUE(Almox, Num_Ent, ItemId, id_entradas)
GO
	
ALTER TABLE SM_ItensEnt WITH CHECK ADD CONSTRAINT SM_ItensEnt_fk FOREIGN KEY(ID_MaterialAlmox)
REFERENCES SM_MaterialAlmox (ID_MaterialAlmox)
GO

ALTER TABLE SM_ItensEnt WITH CHECK ADD CONSTRAINT SM_ItensEnt_fk_1 FOREIGN KEY(ID_Entradas)
REFERENCES SM_Entradas (ID_Entradas)
GO

--
--  Alterações para multi empresa e cloud Janus
--
alter table SM_Almoxarifados add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_AnoCompra add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_AvailNumCompra add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Comentario add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Compras add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Cotacoes add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Dotacao_Projeto add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Dotacoes add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Entradas add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Eventos_Ay add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_EventosCompra add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Fclasses add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Fornecedor add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Gclasses add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_GestorCompras add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Gpf_Ay add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Iclasses add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Inc add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Itens add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_ItensCompra add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_ItensEnt add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_ItensOfor add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_ItensParcela add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_ItensPedido add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_ItensProposta add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Itped_Ofor add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Itped_Parcela add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Locais_Entregas add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Local_Mat add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_MaterialAlmox add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_ModEmpenho_Ay add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_NatDesp add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Natdesp_Item add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_OrdemFornec add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Parcelas add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Pedidos add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_PrecoEstimado add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Projetos add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_Propostas add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_TipoLicitacao add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  
alter table SM_UnidMed add TimeStamp timestamp NOT NULL, ID_ClienteCloud bigint NULL, ID_Empresa bigint NULL  

CREATE INDEX IX_SM_Almoxarifados_TimeStamp ON SM_Almoxarifados(TimeStamp)
CREATE INDEX IX_SM_AnoCompra_TimeStamp ON SM_AnoCompra(TimeStamp)
CREATE INDEX IX_SM_AvailNumCompra_TimeStamp ON SM_AvailNumCompra(TimeStamp)
CREATE INDEX IX_SM_Comentario_TimeStamp ON SM_Comentario(TimeStamp)
CREATE INDEX IX_SM_Compras_TimeStamp ON SM_Compras(TimeStamp)
CREATE INDEX IX_SM_Cotacoes_TimeStamp ON SM_Cotacoes(TimeStamp)
CREATE INDEX IX_SM_Dotacao_Projeto_TimeStamp ON SM_Dotacao_Projeto(TimeStamp)
CREATE INDEX IX_SM_Dotacoes_TimeStamp ON SM_Dotacoes(TimeStamp)
CREATE INDEX IX_SM_Entradas_TimeStamp ON SM_Entradas(TimeStamp)
CREATE INDEX IX_SM_Eventos_Ay_TimeStamp ON SM_Eventos_Ay(TimeStamp)
CREATE INDEX IX_SM_EventosCompra_TimeStamp ON SM_EventosCompra(TimeStamp)
CREATE INDEX IX_SM_Fclasses_TimeStamp ON SM_Fclasses(TimeStamp)
CREATE INDEX IX_SM_Fornecedor_TimeStamp ON SM_Fornecedor(TimeStamp)
CREATE INDEX IX_SM_Gclasses_TimeStamp ON SM_Gclasses(TimeStamp)
CREATE INDEX IX_SM_GestorCompras_TimeStamp ON SM_GestorCompras(TimeStamp)
CREATE INDEX IX_SM_Gpf_Ay_TimeStamp ON SM_Gpf_Ay(TimeStamp)
CREATE INDEX IX_SM_Iclasses_TimeStamp ON SM_Iclasses(TimeStamp)
CREATE INDEX IX_SM_Inc_TimeStamp ON SM_Inc(TimeStamp)
CREATE INDEX IX_SM_Itens_TimeStamp ON SM_Itens(TimeStamp)
CREATE INDEX IX_SM_ItensCompra_TimeStamp ON SM_ItensCompra(TimeStamp)
CREATE INDEX IX_SM_ItensEnt_TimeStamp ON SM_ItensEnt(TimeStamp)
CREATE INDEX IX_SM_ItensOfor_TimeStamp ON SM_ItensOfor(TimeStamp)
CREATE INDEX IX_SM_ItensParcela_TimeStamp ON SM_ItensParcela(TimeStamp)
CREATE INDEX IX_SM_ItensPedido_TimeStamp ON SM_ItensPedido(TimeStamp)
CREATE INDEX IX_SM_ItensProposta_TimeStamp ON SM_ItensProposta(TimeStamp)
CREATE INDEX IX_SM_Itped_Ofor_TimeStamp ON SM_Itped_Ofor(TimeStamp)
CREATE INDEX IX_SM_Itped_Parcela_TimeStamp ON SM_Itped_Parcela(TimeStamp)
CREATE INDEX IX_SM_Locais_Entregas_TimeStamp ON SM_Locais_Entregas(TimeStamp)
CREATE INDEX IX_SM_Local_Mat_TimeStamp ON SM_Local_Mat(TimeStamp)
CREATE INDEX IX_SM_MaterialAlmox_TimeStamp ON SM_MaterialAlmox(TimeStamp)
CREATE INDEX IX_SM_ModEmpenho_Ay_TimeStamp ON SM_ModEmpenho_Ay(TimeStamp)
CREATE INDEX IX_SM_NatDesp_TimeStamp ON SM_NatDesp(TimeStamp)
CREATE INDEX IX_SM_Natdesp_Item_TimeStamp ON SM_Natdesp_Item(TimeStamp)
CREATE INDEX IX_SM_OrdemFornec_TimeStamp ON SM_OrdemFornec(TimeStamp)
CREATE INDEX IX_SM_Parcelas_TimeStamp ON SM_Parcelas(TimeStamp)
CREATE INDEX IX_SM_Pedidos_TimeStamp ON SM_Pedidos(TimeStamp)
CREATE INDEX IX_SM_PrecoEstimado_TimeStamp ON SM_PrecoEstimado(TimeStamp)
CREATE INDEX IX_SM_Projetos_TimeStamp ON SM_Projetos(TimeStamp)
CREATE INDEX IX_SM_Propostas_TimeStamp ON SM_Propostas(TimeStamp)
CREATE INDEX IX_SM_TipoLicitacao_TimeStamp ON SM_TipoLicitacao(TimeStamp)
CREATE INDEX IX_SM_UnidMed_TimeStamp ON SM_UnidMed(TimeStamp)

CREATE INDEX IX_SM_Almoxarifados_ClienteCloud ON SM_Almoxarifados(ID_ClienteCloud)
CREATE INDEX IX_SM_AnoCompra_ClienteCloud ON SM_AnoCompra(ID_ClienteCloud)
CREATE INDEX IX_SM_AvailNumCompra_ClienteCloud ON SM_AvailNumCompra(ID_ClienteCloud)
CREATE INDEX IX_SM_Comentario_ClienteCloud ON SM_Comentario(ID_ClienteCloud)
CREATE INDEX IX_SM_Compras_ClienteCloud ON SM_Compras(ID_ClienteCloud)
CREATE INDEX IX_SM_Cotacoes_ClienteCloud ON SM_Cotacoes(ID_ClienteCloud)
CREATE INDEX IX_SM_Dotacao_Projeto_ClienteCloud ON SM_Dotacao_Projeto(ID_ClienteCloud)
CREATE INDEX IX_SM_Dotacoes_ClienteCloud ON SM_Dotacoes(ID_ClienteCloud)
CREATE INDEX IX_SM_Entradas_ClienteCloud ON SM_Entradas(ID_ClienteCloud)
CREATE INDEX IX_SM_Eventos_Ay_ClienteCloud ON SM_Eventos_Ay(ID_ClienteCloud)
CREATE INDEX IX_SM_EventosCompra_ClienteCloud ON SM_EventosCompra(ID_ClienteCloud)
CREATE INDEX IX_SM_Fclasses_ClienteCloud ON SM_Fclasses(ID_ClienteCloud)
CREATE INDEX IX_SM_Fornecedor_ClienteCloud ON SM_Fornecedor(ID_ClienteCloud)
CREATE INDEX IX_SM_Gclasses_ClienteCloud ON SM_Gclasses(ID_ClienteCloud)
CREATE INDEX IX_SM_GestorCompras_ClienteCloud ON SM_GestorCompras(ID_ClienteCloud)
CREATE INDEX IX_SM_Gpf_Ay_ClienteCloud ON SM_Gpf_Ay(ID_ClienteCloud)
CREATE INDEX IX_SM_Iclasses_ClienteCloud ON SM_Iclasses(ID_ClienteCloud)
CREATE INDEX IX_SM_Inc_ClienteCloud ON SM_Inc(ID_ClienteCloud)
CREATE INDEX IX_SM_Itens_ClienteCloud ON SM_Itens(ID_ClienteCloud)
CREATE INDEX IX_SM_ItensCompra_ClienteCloud ON SM_ItensCompra(ID_ClienteCloud)
CREATE INDEX IX_SM_ItensEnt_ClienteCloud ON SM_ItensEnt(ID_ClienteCloud)
CREATE INDEX IX_SM_ItensOfor_ClienteCloud ON SM_ItensOfor(ID_ClienteCloud)
CREATE INDEX IX_SM_ItensParcela_ClienteCloud ON SM_ItensParcela(ID_ClienteCloud)
CREATE INDEX IX_SM_ItensPedido_ClienteCloud ON SM_ItensPedido(ID_ClienteCloud)
CREATE INDEX IX_SM_ItensProposta_ClienteCloud ON SM_ItensProposta(ID_ClienteCloud)
CREATE INDEX IX_SM_Itped_Ofor_ClienteCloud ON SM_Itped_Ofor(ID_ClienteCloud)
CREATE INDEX IX_SM_Itped_Parcela_ClienteCloud ON SM_Itped_Parcela(ID_ClienteCloud)
CREATE INDEX IX_SM_Locais_Entregas_ClienteCloud ON SM_Locais_Entregas(ID_ClienteCloud)
CREATE INDEX IX_SM_Local_Mat_ClienteCloud ON SM_Local_Mat(ID_ClienteCloud)
CREATE INDEX IX_SM_MaterialAlmox_ClienteCloud ON SM_MaterialAlmox(ID_ClienteCloud)
CREATE INDEX IX_SM_ModEmpenho_Ay_ClienteCloud ON SM_ModEmpenho_Ay(ID_ClienteCloud)
CREATE INDEX IX_SM_NatDesp_ClienteCloud ON SM_NatDesp(ID_ClienteCloud)
CREATE INDEX IX_SM_Natdesp_Item_ClienteCloud ON SM_Natdesp_Item(ID_ClienteCloud)
CREATE INDEX IX_SM_OrdemFornec_ClienteCloud ON SM_OrdemFornec(ID_ClienteCloud)
CREATE INDEX IX_SM_Parcelas_ClienteCloud ON SM_Parcelas(ID_ClienteCloud)
CREATE INDEX IX_SM_Pedidos_ClienteCloud ON SM_Pedidos(ID_ClienteCloud)
CREATE INDEX IX_SM_PrecoEstimado_ClienteCloud ON SM_PrecoEstimado(ID_ClienteCloud)
CREATE INDEX IX_SM_Projetos_ClienteCloud ON SM_Projetos(ID_ClienteCloud)
CREATE INDEX IX_SM_Propostas_ClienteCloud ON SM_Propostas(ID_ClienteCloud)
CREATE INDEX IX_SM_TipoLicitacao_ClienteCloud ON SM_TipoLicitacao(ID_ClienteCloud)
CREATE INDEX IX_SM_UnidMed_ClienteCloud ON SM_UnidMed(ID_ClienteCloud)

CREATE INDEX IX_SM_Almoxarifados_Empresa ON SM_Almoxarifados (ID_Empresa)
CREATE INDEX IX_SM_AnoCompra_Empresa ON SM_AnoCompra (ID_Empresa)
CREATE INDEX IX_SM_AvailNumCompra_Empresa ON SM_AvailNumCompra (ID_Empresa)
CREATE INDEX IX_SM_Comentario_Empresa ON SM_Comentario (ID_Empresa)
CREATE INDEX IX_SM_Compras_Empresa ON SM_Compras (ID_Empresa)
CREATE INDEX IX_SM_Cotacoes_Empresa ON SM_Cotacoes (ID_Empresa)
CREATE INDEX IX_SM_Dotacao_Projeto_Empresa ON SM_Dotacao_Projeto (ID_Empresa)
CREATE INDEX IX_SM_Dotacoes_Empresa ON SM_Dotacoes (ID_Empresa)
CREATE INDEX IX_SM_Entradas_Empresa ON SM_Entradas (ID_Empresa)
CREATE INDEX IX_SM_Eventos_Ay_Empresa ON SM_Eventos_Ay (ID_Empresa)
CREATE INDEX IX_SM_EventosCompra_Empresa ON SM_EventosCompra (ID_Empresa)
CREATE INDEX IX_SM_Fclasses_Empresa ON SM_Fclasses (ID_Empresa)
CREATE INDEX IX_SM_Fornecedor_Empresa ON SM_Fornecedor (ID_Empresa)
CREATE INDEX IX_SM_Gclasses_Empresa ON SM_Gclasses (ID_Empresa)
CREATE INDEX IX_SM_GestorCompras_Empresa ON SM_GestorCompras (ID_Empresa)
CREATE INDEX IX_SM_Gpf_Ay_Empresa ON SM_Gpf_Ay (ID_Empresa)
CREATE INDEX IX_SM_Iclasses_Empresa ON SM_Iclasses (ID_Empresa)
CREATE INDEX IX_SM_Inc_Empresa ON SM_Inc (ID_Empresa)
CREATE INDEX IX_SM_Itens_Empresa ON SM_Itens (ID_Empresa)
CREATE INDEX IX_SM_ItensCompra_Empresa ON SM_ItensCompra (ID_Empresa)
CREATE INDEX IX_SM_ItensEnt_Empresa ON SM_ItensEnt (ID_Empresa)
CREATE INDEX IX_SM_ItensOfor_Empresa ON SM_ItensOfor (ID_Empresa)
CREATE INDEX IX_SM_ItensParcela_Empresa ON SM_ItensParcela (ID_Empresa)
CREATE INDEX IX_SM_ItensPedido_Empresa ON SM_ItensPedido (ID_Empresa)
CREATE INDEX IX_SM_ItensProposta_Empresa ON SM_ItensProposta (ID_Empresa)
CREATE INDEX IX_SM_Itped_Ofor_Empresa ON SM_Itped_Ofor (ID_Empresa)
CREATE INDEX IX_SM_Itped_Parcela_Empresa ON SM_Itped_Parcela (ID_Empresa)
CREATE INDEX IX_SM_Locais_Entregas_Empresa ON SM_Locais_Entregas (ID_Empresa)
CREATE INDEX IX_SM_Local_Mat_Empresa ON SM_Local_Mat (ID_Empresa)
CREATE INDEX IX_SM_MaterialAlmox_Empresa ON SM_MaterialAlmox (ID_Empresa)
CREATE INDEX IX_SM_ModEmpenho_Ay_Empresa ON SM_ModEmpenho_Ay (ID_Empresa)
CREATE INDEX IX_SM_NatDesp_Empresa ON SM_NatDesp (ID_Empresa)
CREATE INDEX IX_SM_Natdesp_Item_Empresa ON SM_Natdesp_Item (ID_Empresa)
CREATE INDEX IX_SM_OrdemFornec_Empresa ON SM_OrdemFornec (ID_Empresa)
CREATE INDEX IX_SM_Parcelas_Empresa ON SM_Parcelas (ID_Empresa)
CREATE INDEX IX_SM_Pedidos_Empresa ON SM_Pedidos (ID_Empresa)
CREATE INDEX IX_SM_PrecoEstimado_Empresa ON SM_PrecoEstimado (ID_Empresa)
CREATE INDEX IX_SM_Projetos_Empresa ON SM_Projetos (ID_Empresa)
CREATE INDEX IX_SM_Propostas_Empresa ON SM_Propostas (ID_Empresa)
CREATE INDEX IX_SM_TipoLicitacao_Empresa ON SM_TipoLicitacao (ID_Empresa)
CREATE INDEX IX_SM_UnidMed_Empresa ON SM_UnidMed (ID_Empresa)
GO	

/* criar chaves para as chaves estrangeiras */

CREATE INDEX IX_SM_ItensPedido_Pedido ON SM_ItensPedido (ID_Pedidos)
CREATE INDEX IX_SM_ItensPedido_ItensCompra ON SM_ItensPedido (ID_ItensCompra)
GO


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
    cc.identificador     AS ped_nomecc,
	a.Motivo_Indeferimento,
    a.ID_Pedidos,
	a.id_centrocustojanus AS ped_cc,
    a.id_atividadejanus  AS ped_ativ,
	a.id_contratojanus AS ped_contrato,
    aj.Atividade     As Nomeatividade,
    cj.Identificador As Nomecontrato
  FROM AgoAdm00001_SM_Pedidos a
  LEFT OUTER JOIN jn_centrocusto cc ON cc.id_centrocusto = a.id_centrocustojanus
  LEFT OUTER JOIN jn_atividade aj ON  aj.id_atividade = a.id_atividadejanus
  LEFT OUTER JOIN jn_contrato cj ON  cj.id_contrato = a.id_contratojanus
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
    cc.identificador     AS ped_nomecc,
    aj.atividade         AS ped_nomeativ,
	cj.identificador AS nomecontrato
  FROM sm_itenspedido a
  INNER JOIN sm_pedidos p ON a.id_pedidos= p.id_pedidos
  LEFT OUTER JOIN jn_centrocusto cc ON cc.id_centrocusto = p.id_centrocustojanus
  LEFT OUTER JOIN jn_atividade aj ON  aj.id_atividade = p.id_atividadejanus
  LEFT OUTER JOIN jn_contrato cj ON  cj.id_contrato = p.id_contratojanus
 GO


	
	
 
	
	

  
  
  












