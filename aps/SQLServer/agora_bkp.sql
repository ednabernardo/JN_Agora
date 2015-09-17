-- Tarefa 79033 - Edna - 07/05/2013 - v1.00

CREATE TABLE sm_anocompra(
    ano                            numeric (4,0) NOT NULL,
    dataini                        datetime ,
    datafim                        datetime ,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_anocompra_pk PRIMARY KEY  CLUSTERED  ( ano )  ON [PRIMARY])
GO

CREATE TABLE sm_projetos(
    id                             int identity (1,1) NOT NULL,
	cod                            varchar(15) NOT NULL,
    nome                           varchar(60) NOT NULL,
    flg_inativo                    varchar(1) NOT NULL,
    flg_transfere                  varchar(1) DEFAULT 'N',
    ano                            numeric(4,0) NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_projetos_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO


CREATE TABLE sm_natdesp(
    id                             int identity (1,1) NOT NULL,
    numero                         numeric(12,0) NOT NULL,
    nome                           varchar(50) NOT NULL,
    desativ                        varchar(1)  NOT NULL,
    orc                            varchar(1)   NOT NULL,
    execucao                       varchar(1)   NOT NULL,
    natbem                         varchar(1)   NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    vidaucont                      numeric(6,0),
    indice_residual                numeric(5,2),
	CONSTRAINT sm_natdesp_pk PRIMARY KEY  CLUSTERED  (id) ON [PRIMARY])
GO

CREATE TABLE sm_dotacoes (
    seq_dot                        int identity (1,1) NOT NULL,
    num_natdesp                    numeric(12,0) NOT NULL,
    num_unor                       varchar(8) NOT NULL,
    num_funcao                     numeric(2,0) NOT NULL,
    num_programa                   numeric(3,0) NOT NULL,
    num_subprog                    numeric(4,0) NOT NULL,
    num_projativ                   numeric(5,0) NOT NULL,
    num_fonte                      numeric(4,0) NOT NULL,
    flg_inativo                    varchar(1) DEFAULT 'N' NOT NULL,
    vlr_inicial                    numeric(16,2),
    vlr_atual                      numeric(16,2),
    ano                            numeric(4,0) NOT NULL,
    descricao                      varchar(50),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_dotacoes_pk PRIMARY KEY  CLUSTERED  (seq_dot)  ON [PRIMARY])
GO

CREATE TABLE sm_dotacao_projeto(
    id                             int identity (1,1) NOT NULL,
	projeto                        varchar(15) ,
    dot_seq_dot                    int NOT NULL,
    sld_inicial                    numeric(16,2),
    sld_atual                      numeric(16,2),
    ano                            numeric(4,0) NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_dotacao_projeto_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_unidmed (
    unidade                        varchar (15) NOT NULL,
    nome                           varchar (50) ,
    flex_campo_01                  varchar (2000),
    flex_campo_02                  varchar (2000),
    flex_campo_03                  varchar (2000),
    flex_campo_04                  varchar (2000),
    flex_campo_05                  varchar (2000) ,
    flex_campo_06                  varchar (2000),
    flex_campo_07                  varchar (2000),
    flex_campo_08                  varchar (2000),
    flex_campo_09                  varchar (2000),
    flex_campo_10                  varchar (2000),
	 CONSTRAINT sm_unidmed_pk PRIMARY KEY  CLUSTERED  (unidade)  ON [PRIMARY] )
GO

CREATE TABLE sm_tipolicitacao(
    modalidade                     varchar(15) NOT NULL,
    flg_periodo                    varchar(1) NOT NULL,
    descr                          varchar(150),
    limite                         numeric(16,2),
    periodo                        numeric(6,0),
    val_padrao                     numeric(4,0),
    flg_processo                   varchar(1),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_tipolicitacao_pk PRIMARY KEY  CLUSTERED  (modalidade)  ON [PRIMARY])
GO

CREATE TABLE sm_fornecedor(
    numfornec                      int identity (1,1) NOT NULL, 
    cgc                            varchar(14) NOT NULL,
    nome                           varchar(100) NOT NULL,
    atuareg                        varchar(1) NOT NULL,
    ativo                          varchar(1) NOT NULL,
    sigla_forn                     varchar(50),
    inscrest                       varchar(15),
    inscrmunic                     varchar(15),
    inscrecon                      varchar(15),
    regprofis                      varchar(15),
    situacao                       varchar(10),
    crc                            numeric(10,0),
    validcrc                       datetime,
    capital                        numeric(16,2),
    obs                            varchar(600),
    patrimliq                      numeric(16,2),
    contrsocial                    varchar(15),
    datacontr                      datetime,
    num_origem                     numeric(10,0),
    tipo_end                       varchar(10),
    rua                            varchar(60),
    num_end                        varchar(6),
    compl_end                      varchar(30),
    cep                            numeric(8,0),
    num_ddd                        varchar(4),
    num_tel                        varchar(15),
    num_fax                        varchar(15),
    imp_crc                        numeric(8,0),
    emissaocrc                     datetime,
    mbairro_codigo                 varchar(50),
    mbairro_municipio_codigo       varchar(12),
    flg_qualidade                  varchar(1),
    end_mail                       varchar(100),
    senha                          varchar(50),
    end_web                        varchar(100),
    end_ip                         varchar(30),
    usuario_aut                    varchar(15),
    data_aut                       datetime,
    flg_email                      varchar(1) DEFAULT 'N',
    caixa_postal                   varchar(20),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    cel_num                        varchar(15),
    tipo_cadastro                  varchar(1),
    flg_proprietario               varchar(1),
	CONSTRAINT sm_fornecedor_pk PRIMARY KEY  CLUSTERED  (numfornec)  ON [PRIMARY])
GO

CREATE TABLE sm_almoxarifados(
    numero                         int identity (1,1) NOT NULL,
    nome                           varchar(50) NOT NULL,
    fechado                        varchar(1) DEFAULT 'N' NOT NULL,
    perm_consol                    varchar(1) DEFAULT 'N' NOT NULL,
    flg_veestoque                  varchar(1) DEFAULT 'N' NOT NULL,
    flg_gerarm                     varchar(1) NOT NULL,
    flg_msgrestr_almox             varchar(1) DEFAULT 'N' NOT NULL,
    flg_msgrestr_proj              varchar(1) DEFAULT 'N' NOT NULL,
    flg_msgrestr_cota              varchar(1) DEFAULT 'N' NOT NULL,
    flg_msgrestr_lote              varchar(1) DEFAULT 'N' NOT NULL,
    flg_msgrestr_apre              varchar(1) DEFAULT 'N' NOT NULL,
    flg_msgrestr_aplo              varchar(1) DEFAULT 'N' NOT NULL,
    flg_ccprefer                   varchar(1) DEFAULT 'N',
    dotacao_pref                   numeric(12,0),
    projeto                        varchar(15),
    almox_numero                   int,
    responsavel                    varchar(50),
    nome_end                       varchar(50),
    tipo_end                       varchar(10),
    num_end                        numeric(6,0),
    compl_end                      varchar(20),
    cep_end                        numeric(8,0),
    lastnum_e                      numeric(10,0),
    lastnum_s                      numeric(10,0),
    lastnum_es                     numeric(10,0),
    lastnum_ee                     numeric(10,0),
    flg_inibeqtd                   varchar(1),
    mbairro_municipio_codigo       varchar(12),
    mbairro_codigo                 varchar(12),
    ano                            numeric(4,0),
    flg_ccpcota                    varchar(1) DEFAULT 'N',
    flg_impguiadist                varchar(1) DEFAULT 'S' NOT NULL,
    diaini_req                     numeric(2,0),
    diafim_req                     numeric(2,0),
    diaini_con                     numeric(2,0),
    diafim_con                     numeric(2,0),
    flg_guiapadrao                 varchar(1),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    flg_apresfechada               varchar(1) DEFAULT 'S',
    flg_req_sem_est                CHAR(1),
    flg_mat_cota                   CHAR(1),
    chk_empenho_ay                 varchar(1) DEFAULT 'N' NOT NULL,
	CONSTRAINT sm_almoxarifados_pk PRIMARY KEY  CLUSTERED  (numero)  ON [PRIMARY])
GO

CREATE TABLE sm_inc(
    cod_inc                        varchar (6) ,
    nome_inc                       varchar(100),
    defin_inc                      varchar(2000),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_inc_pk PRIMARY KEY  CLUSTERED  (cod_inc) ON [PRIMARY] )
GO

CREATE TABLE sm_iclasses(
    item_classe                    int identity (1,1) NOT NULL,
    nome                           varchar (50) NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_iclasse_pk PRIMARY KEY  CLUSTERED  (item_classe)  ON [PRIMARY])
GO

CREATE TABLE sm_gclasses (
    id                             int identity (1,1) NOT NULL,
	sm_iclasse_item_classe         int NOT NULL,
    grupo_classe                   numeric (2,0) NOT NULL,
    nome                           varchar (100) NOT NULL,
    flex_campo_01                  varchar (2000),
    flex_campo_02                  varchar (2000),
    flex_campo_03                  varchar (2000),
    flex_campo_04                  varchar (2000),
    flex_campo_05                  varchar (2000),
    flex_campo_06                  varchar (2000),
    flex_campo_07                  varchar (2000),
    flex_campo_08                  varchar (2000),
    flex_campo_09                  varchar (2000),
    flex_campo_10                  varchar (2000),
	CONSTRAINT sm_gclasses_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_fclasses(
    id                             int identity (1,1) NOT NULL,               
	sm_gclasse_grupo_classe        numeric    (2,0) NOT NULL,
    sm_gclasse_sm_iclasse_item_cla int NOT NULL,
    fam_classe                     numeric    (3,0) NOT NULL,
    nome                           varchar    (50) NOT NULL,
    flg_imovel                     varchar    (1) DEFAULT 'N' NOT NULL,
    flg_patrim                     varchar    (1) DEFAULT 'N' NOT NULL,
    flg_serv                       varchar    (1) DEFAULT 'N' NOT NULL,
    flg_almox                      varchar    (1) DEFAULT 'N' NOT NULL,
    flg_obras                      varchar    (1) NOT NULL,
    descricao                      varchar    (2000),
    vidaucont                      numeric    (6,0) ,
    deprec                         numeric    (5,2),
    natdesp                        numeric    (12,0),
    flex_campo_01                  varchar    (2000),
    flex_campo_02                  varchar    (2000),
    flex_campo_03                  varchar    (2000),
    flex_campo_04                  varchar    (2000),
    flex_campo_05                  varchar    (2000),
    flex_campo_06                  varchar    (2000),
    flex_campo_07                  varchar    (2000),
    flex_campo_08                  varchar    (2000),
    flex_campo_09                  varchar    (2000),
    flex_campo_10                  varchar    (2000),
    indice_residual                numeric    (5,2),
	CONSTRAINT sm_fclasses_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_locais_entregas(
    local                          varchar(15) NOT NULL,
    nome                           varchar(50) NOT NULL,
    tipo_log                       varchar(10) NOT NULL,
    nome_log                       varchar(50) NOT NULL,
    num_log                        numeric(6,0) NOT NULL,
    uf                             varchar(2) NOT NULL,
    cep                            varchar(9) NOT NULL,
    fone                           varchar(15),
    fax                            varchar(15),
    complemento                    varchar(20),
    mbairro_codigo                 varchar(12) NOT NULL,
    mbairro_municipio_codigo       varchar(12) NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_locais_entregas_pk PRIMARY KEY  CLUSTERED  (local)  ON [PRIMARY])
GO

CREATE TABLE sm_itens(
    id                             int identity (1,1) NOT NULL, 
    itemid                         numeric(13,0) NOT NULL,
    sm_fclasse_sm_gclasse_sm_iclas int NOT NULL,
    sm_fclasse_sm_gclasse_grupo_cl numeric(2,0) NOT NULL,
    sm_fclasse_fam_classe          numeric(3,0) NOT NULL,
    item                           numeric(7,0),
    nome                           varchar(50) NOT NULL,
    sm_unidmed_unidade             varchar(15) NOT NULL,
    flg_lote                       varchar(1) DEFAULT 'N' NOT NULL,
    especif                        text,
    tipo_patr                      varchar(15),
    vidaufis                       numeric(6,0),
    num_antigo                     varchar(15),
    flg_fracao                     varchar(1) DEFAULT 'N' NOT NULL,
    flg_decimal                    varchar(1) DEFAULT 'N' NOT NULL,
    flg_desuso                     varchar(1) DEFAULT 'N' NOT NULL,
    sm_pais                        numeric(2,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    cod_inc                        varchar(6),
	CONSTRAINT sm_itens_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_natdesp_item(
	id                             int identity (1,1) NOT NULL,
	sm_item_itemid                 numeric(13,0) NOT NULL,
    natdesp                        numeric(12,0) NOT NULL ,
    ano                            numeric(4,0) NOT NULL,
	CONSTRAINT sm_natdesp_item_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_gpf_ay(
    id                             int identity (1,1) NOT NULL,
	ano                            numeric (4,0) NOT NULL,
    gpf                            numeric (2,0) ,
    nome                           varchar (50),
	CONSTRAINT sm_gpf_ay_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_eventos_ay(
    id                             int identity (1,1) NOT NULL,
	ano                            numeric (4,0) NOT NULL,
    numevento                      numeric (6,0) NOT NULL,
    tipodoc                        varchar (2),
    abrev                          varchar (50),	
	CONSTRAINT sm_eventos_ay_pk PRIMARY KEY  CLUSTERED  (id) ON [PRIMARY])
GO

CREATE TABLE sm_gestorcompras (
	numero                         int identity (1,1) NOT NULL,
    pres_cpl                       varchar(50),
    membro1_cpl                    varchar(50),
    membro2_cpl                    varchar(50),
    membro3_cpl                    varchar(50),
    nome                           varchar(50),
    nome_end                       varchar(50),
    tipo_end                       varchar(10),
    num_end                        numeric(6,0),
    compl_end                      varchar(20),
    cep_end                        numeric(8,0),
    mbairro_codigo                 varchar(12),
    mbairro_municipio_codigo       varchar(12),
    autoriza                       varchar(1) DEFAULT 'N' NOT NULL,
    calc_auto                      varchar(1) DEFAULT 'N' NOT NULL,
    criterio                       varchar(15),
    nprecos                        numeric(6,0),
    tipo_calc                      varchar(15),
    imp_sem_empenho                varchar(1) DEFAULT 'N' NOT NULL,
    com_reserva                    varchar(1) DEFAULT 'N' NOT NULL,
    com_local                      varchar(1) DEFAULT 'N' NOT NULL,
    flg_usr_fazres                 varchar(1) DEFAULT 'N',
    flg_usr_autped                 varchar(1) DEFAULT 'N',
    emp_dotacao                    varchar(1) DEFAULT 'N' NOT NULL,
    emp_convenio                   varchar(1) DEFAULT 'N' NOT NULL,
    emp_local                      varchar(1) DEFAULT 'N' NOT NULL,
    chk_reserva_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    chk_empenho_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    ins_reserva_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    ins_empenho_ay                 varchar(1) DEFAULT 'N' NOT NULL,
    ins_corpoemp_ay                varchar(1) DEFAULT 'N' NOT NULL,
    emp_reserva                    varchar(1) DEFAULT 'N' NOT NULL,
    verifica_marcamod              varchar(1) DEFAULT 'N' NOT NULL,
    nmeses                         numeric(6,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    bcopreco_auto                  varchar(1) DEFAULT 'N',
	CONSTRAINT sm_gestorcompras_pk_1 PRIMARY KEY  CLUSTERED  (numero)  ON [PRIMARY])
GO

CREATE TABLE sm_availnumcompra(
    id                             int identity (1,1) NOT NULL,
	gcompra_numero                 int NOT NULL,
    ano_ano                        numeric(4,0) NOT NULL,
    lastnum_ped                    numeric(10,0),
    lastnum_compra                 numeric(10,0),
    lastnum_ofor                   numeric(10,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_availnumcompra_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO	

CREATE TABLE sm_compras(
    id                             int identity (1,1) NOT NULL,
	ano_ano                        numeric(4,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    numcompr                       numeric(10,0) NOT NULL,
    flg_fechado                    varchar(1) NOT NULL,
    tipolic_modalidade             varchar(15),
    objeto                         varchar(150),
    preco_est                      numeric(16,2),
    nat_desp                       numeric(12,0),
    numproc                        varchar(25),
    abertura                       datetime,
    homologacao                    datetime,
    publicacao                     datetime,
    preco_edital                   numeric(16,2),
    flg_internet                   varchar(1) DEFAULT 'N',
    encerramento                   datetime,
    cadastro                       datetime,
    tipo_prop                      varchar(6) DEFAULT 'PADRÃO' NOT NULL,
    flg_preco                      varchar(1) DEFAULT 'N',
    flg_enviar_email               varchar(1) DEFAULT 'N',
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_compras_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itenscompra(
    id                             int identity (1,1) NOT NULL,
	gcompra_numero                 int NOT NULL,
    numcompr                       numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    itemcompra                     numeric(4,0) NOT NULL,
    flg_servico                    varchar(1) NOT NULL,
    sm_unidmed_unidade             varchar(15),
    sm_fclasse_fam_classe          numeric(3,0),
    sm_fclasse_sm_gclasse_grupo_cl numeric(2,0),
    sm_fclasse_sm_gclasse_sm_iclas int ,
    sm_item_itemid                 numeric(13,0),
    quant                          numeric,
    descr                          varchar(2000),
    preco_est                      numeric,
    item_mat                       numeric(7,0),
    preco_max                      numeric(16,2),
    sm_pais                        numeric(2,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_itenscompra_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_eventoscompra(
    id                             int identity (1,1) NOT NULL,
	gcompra_numero                 int NOT NULL,
    numcompr                       numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    data                           datetime NOT NULL,
    situacao                       varchar(15),
    observacao                     varchar(150),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_eventoscompra_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_pedidos(
    id                             int identity (1,1) NOT NULL,
	gcompra_numero                 int NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    numped                         numeric(10,0) NOT NULL,
    convenio                       varchar(6),
    natdesp_exec                   numeric(12,0),
    usuario                        varchar(15) NOT NULL,
    empresa                        numeric(2,0) NOT NULL,
    setor                          varchar(15) NOT NULL,
    natdesp                        numeric(12,0),
    usu_cot                        varchar(15),
    usu_aut                        varchar(15),
    dot_seq_dot                    int ,
    projeto                        varchar(15),
    reserva                        varchar(20),
    data                           datetime,
    descricao                      varchar(2000),
    preco_est                      numeric(16,2),
    tipo                           varchar(15),
    flg_servico                    varchar(1),
    situacao                       varchar(15),
    data_sit                       datetime,
    tipo_entrega                   varchar(1),
    entrega_setor_empresa          numeric(2,0),
    entrega                        varchar(15),
    evres_ay                       numeric(6,0),
    gpf_ay                         numeric(2,0),
    valor01_gpf                    numeric(16,2),
    valor02_gpf                    numeric(16,2),
    valor03_gpf                    numeric(16,2),
    valor04_gpf                    numeric(16,2),
    valor05_gpf                    numeric(16,2),
    valor06_gpf                    numeric(16,2),
    valor07_gpf                    numeric(16,2),
    valor08_gpf                    numeric(16,2),
    valor09_gpf                    numeric(16,2),
    valor10_gpf                    numeric(16,2),
    valor11_gpf                    numeric(16,2),
    valor12_gpf                    numeric(16,2),
    valor13_gpf                    numeric(16,2),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    prazo_entr                     numeric(3,0),
    garantia                       varchar(50),
    exam_quali                     varchar(1) DEFAULT 'N',
    observacao                     varchar(2000),
    motivo_indeferimento           varchar(2000),
	CONSTRAINT sm_pedidos_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itenspedido(
    id                            int identity (1,1) NOT NULL,
	numped                         numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    itemped                        numeric(4,0) NOT NULL,
    usu_sel                        varchar(15),
    flg_servico                    varchar(1) NOT NULL,
    numcompr                       numeric(10,0),
    sm_unidmed_unidade             varchar(15),
    sm_fclasse_fam_classe          numeric(3,0),
    sm_fclasse_sm_gclasse_grupo_cl numeric(2,0),
    sm_fclasse_sm_gclasse_sm_iclas int ,
    sm_item_itemid                 numeric(13,0),
    compr_ano                      numeric(4,0),
    itemcompra                     numeric(4,0),
    descr                          varchar(2000),
    item_mat                       numeric(7,0),
    quant_sol                      numeric,
    quant_atend                    numeric,
    preco_est                      numeric,
    flg_autorizado                 varchar(1),
    data_autorizacao               datetime,
    flg_indeferido                 varchar(1),
    quant_contr                    numeric,
    quant_entr                     numeric,
    precounit                      numeric,
    nat_desp                       numeric(12,0),
    sm_pais                        numeric(2,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    criterio_cot                   varchar(15),
	CONSTRAINT sm_itenspedido_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_cotacoes(
    seq                            int identity (1,1) NOT NULL,
	sm_item_itemid                 numeric(13,0) NOT NULL,
    data                           datetime NOT NULL,
    preco                          numeric NOT NULL,
    origem                         varchar(50),
    usuario                        varchar(15),
    numfornec                      int,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_cotacoes_pk PRIMARY KEY  CLUSTERED  (seq)  ON [PRIMARY])
GO

CREATE TABLE sm_precoestimado (
    id                             int identity (1,1) NOT NULL,
	gcompra_numero                 int NOT NULL,
    numped                         numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    itemped                        numeric(4,0) NOT NULL,    
    seq                            numeric(10,0) NOT NULL,
	usuario                        varchar(15) NOT NULL,
    numfornec                      int,
    data                           datetime,
    preco                          numeric,
    origem                         varchar(150),
    marcamod                       varchar(50),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    flg_calculo                    varchar(1),
    classif_forn                   numeric(2,0),
    dt_prev_ent                    datetime,
    comprado                       varchar(1) DEFAULT 'N',
    desejado                       varchar(1) DEFAULT 'N',
	CONSTRAINT sm_precoestimado_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_propostas(
    id                             int identity (1,1) NOT NULL,
	numfornec                      int NOT NULL,
    gcompra_numero                 int NOT NULL,
    numcompr                       numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    flg_desclas                    varchar(1) NOT NULL,
    validade                       numeric(4,0),
    desclassificacao               varchar(30),
    observacao                     varchar(150),
    prazo_entr                     numeric(3,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_propostas_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_modempenho_ay(
      modemp                         VARCHAR(10) NOT NULL,
	  CONSTRAINT sm_modempenho_ay_pk PRIMARY KEY  CLUSTERED  (modemp) ON [PRIMARY])
GO		

CREATE TABLE sm_ordemfornec(
    id                             int identity (1,1) NOT NULL, 
	ano                            numeric(4,0) NOT NULL,
    numofor                        numeric(10,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    numfornec                      int NOT NULL,
    compr_ano                      numeric(4,0) NOT NULL,
    numcompr                       numeric(10,0) NOT NULL,
    usuario                        varchar(15) NOT NULL,
    parcelas                       numeric(4,0) NOT NULL,
    flg_contr                      varchar(1) NOT NULL,
    dot_seq_dot                    int,
    data_emp                       datetime,
    data_ini                       datetime,
    data_fim                       datetime,
    empenho                        varchar(20),
    valor                          numeric(16,2),
    data_contr                     datetime,
    corpoemp                       numeric(8,0),
    tipo_entrega                   varchar(1),
    entrega                        varchar(15),
    convenio                       varchar(6),
    natdesp_exec                   numeric(12,0),
    data_ofor                      datetime,
    evemp_ay                       numeric(6,0),
    gpf_ay                         numeric(2,0),
    valor01_gpf                    numeric(16,2),
    valor02_gpf                    numeric(16,2),
    valor03_gpf                    numeric(16,2),
    valor04_gpf                    numeric(16,2),
    valor05_gpf                    numeric(16,2),
    valor06_gpf                    numeric(16,2),
    valor07_gpf                    numeric(16,2),
    valor08_gpf                    numeric(16,2),
    valor09_gpf                    numeric(16,2),
    valor10_gpf                    numeric(16,2),
    valor11_gpf                    numeric(16,2),
    valor12_gpf                    numeric(16,2),
    valor13_gpf                    numeric(16,2),
    reserva                        varchar(20),
    modemp_ay                      varchar(10),
    evcanemp_ay                    numeric(6,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    prazo_entr                     numeric(3,0),
    garantia                       varchar(50),
	CONSTRAINT sm_ordemfornec_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itensofor(
    id                             int identity (1,1) NOT NULL, 
	numofor                        numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    itemofor                       numeric(4,0) NOT NULL,
    numcompr                       numeric(10,0),
    compr_ano                      numeric(4,0),
    itemcompra                     numeric(4,0),
    quant                          numeric,
    preco_unit                     numeric,
    preco_tot                      numeric(16,2),
    descricao                      varchar(2000),
    codigo_barra                   varchar(15),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    empenho                        varchar(20),
    corpoemp                       numeric(8,0),
	CONSTRAINT sm_itensofor_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itped_ofor(
    id                             int identity (1,1) NOT NULL, 
	numofor                        numeric(10,0) NOT NULL,
    numped                         numeric(10,0) NOT NULL,
    ano_ofor                       numeric(4,0) NOT NULL,
    itemofor                       numeric(4,0) NOT NULL,
    ano_ped                        numeric(4,0) NOT NULL,
    itemped                        numeric(4,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    quant_contr                    numeric NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_itped_ofor_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_parcelas(
    id                             int identity (1,1) NOT NULL, 
	numofor                        numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    numpar                         numeric(4,0) NOT NULL,
    data_prev                      datetime,
    data_entr                      datetime,
    local_entrega                  varchar(150),
    notafiscal                     varchar(15),
    flg_cancel                     varchar(1) DEFAULT 'N',
    flg_entrega_ok                 varchar(1),
    valor                          numeric(16,2),
    empenho                        varchar(20),
    tipo_entrega                   varchar(240),
    almox                          int,
    setor                          varchar(15),
    empresa                        numeric(2,0),
    local                          varchar(15),
    usuario                        varchar(15),
    entrega                        varchar(15),
    num_ent                        numeric(10,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    flg_desdobrada                 varchar(1),
    parcela_orig                   numeric,
	CONSTRAINT sm_parcelas_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_entradas(
    id                             int identity (1,1) NOT NULL,
	almox                          int NOT NULL,
    num_ent                        numeric(10,0) NOT NULL,
    flg_consol                     varchar(1) NOT NULL,
    tipo                           varchar(15) NOT NULL,
    usu_consol                     varchar(15),
    usuario                        varchar(15),
    numfornec                      int,
    numofor                        numeric(10,0),
    ano                            numeric(4,0),
    gcompra_numero                 int,
    numpar                         numeric(4,0),
    gest_patr                      numeric(10,0),
    gespatr_numero                 numeric(10,0),
    data_consol                    datetime,
    data_entrega                   datetime,
    empenho                        varchar(20),
    notafiscal                     varchar(15),
    almox_orig                     int,
    num_sai_orig                   numeric(10,0),
    ent_empenho                    varchar(20),
    numproc                        varchar(25),
    num_sai_ger                    numeric(10,0),
    setor_sai_ger                  varchar(15),
    emp_setorsai_ger               numeric(2,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flg_patrim                     varchar(1),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    class_orc                      varchar(20),
    class_ent                      varchar(15),
    tipo_patr                      varchar(15),
    anoofor                        numeric(4,0),
    almox_ent_orig                 int,
    ent_orig                       numeric(10,0),
    flg_finaliz                    varchar(1),
    data_finaliz                   datetime,
    usu_finaliz                    varchar(15),
    situacao_ent                   varchar(30),
    usu_sit_ent                    varchar(30),
	CONSTRAINT sm_entradas_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_local_mat(
    id                             int identity (1,1) NOT NULL,
	num_almox                      int NOT NULL,
    num_local                      numeric(14,0) NOT NULL,
    desc_local                     varchar(100),
    cod_barras                     numeric(15,0),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_local_mat_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_materialalmox(
    id                             int identity (1,1) NOT NULL,
    almox                          int not null ,
    itemid                         numeric(13,0) NOT NULL,
    contabilizacao                 varchar(15) NOT NULL,
    contr_cota                     varchar(1) NOT NULL,
    local                          numeric(14,0),
    consumo                        numeric,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_materialalmox_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itensparcela(
    id                             int identity (1,1) NOT NULL,
	numpar                         numeric(4,0) NOT NULL,
    itemofor                       numeric(4,0) NOT NULL,
    numofor                        numeric(10,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    quant                          numeric NOT NULL,
    valor                          numeric,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    flg_desdobrada                 varchar(1),
	CONSTRAINT sm_itensparcela_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itped_parcela(
    id                             int identity (1,1) NOT NULL,
	numofor                        numeric(10,0) NOT NULL,
    numped                         numeric(10,0) NOT NULL,
    numpar                         numeric(4,0) NOT NULL,
    ano_ofor                       numeric(4,0) NOT NULL,
    itemofor                       numeric(4,0) NOT NULL,
    ano_ped                        numeric(4,0) NOT NULL,
    itemped                        numeric(4,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    quant                          numeric NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_itped_parcela_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itensproposta(
    id                             int identity (1,1) NOT NULL, 
	numfornec                      int NOT NULL,
    itemcompra                     numeric(4,0) NOT NULL,
    gcompra_numero                 int NOT NULL,
    numcompr                       numeric(10,0) NOT NULL,
    ano                            numeric(4,0) NOT NULL,
    flg_desclas                    varchar(1) NOT NULL,
    preco                          numeric,
    garantia                       varchar(50),
    classificacao                  numeric(4,0),
    descricao                      varchar(2000),
    quant                          numeric,
    precounit                      numeric,
    marcamod                       varchar(50),
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
	CONSTRAINT sm_itensproposta_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE sm_itensent(
    id                             int identity (1,1) NOT NULL,
	almox                          int NOT NULL,
    num_ent                        numeric(10,0) NOT NULL,
    itemid                         numeric(13,0) NOT NULL,
    quant                          numeric NOT NULL,
    valor                          numeric NOT NULL,
    flex_campo_01                  varchar(2000),
    flex_campo_02                  varchar(2000),
    flex_campo_03                  varchar(2000),
    flex_campo_04                  varchar(2000),
    flex_campo_05                  varchar(2000),
    flex_campo_06                  varchar(2000),
    flex_campo_07                  varchar(2000),
    flex_campo_08                  varchar(2000),
    flex_campo_09                  varchar(2000),
    flex_campo_10                  varchar(2000),
    gcompra_numero                 int,
    numofor                        numeric(10,0),
    anoofor                        numeric(4,0),
    itemofor                       numeric(4,0),
    numpar                         numeric(4,0),
	CONSTRAINT sm_itensent_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE hd_comentario (	
    ID 						int identity (1,1) NOT NULL, 
	DATA_COMENT 			datetime NOT NULL,
	USUARIO					varchar(15) NOT NULL,
	COMENTARIO 				varchar(2000),
	TABELA       			varchar(100),
	CHAVE_01    			varchar(100),
	VALOR_01    			varchar(100),
	CHAVE_02          	varchar(100),
	VALOR_02          	varchar(100),
	CHAVE_03          	varchar(100),
	VALOR_03          	varchar(100),
	CHAVE_04          	varchar(100),
	VALOR_04          	varchar(100),
	CHAVE_05          	varchar(100),
	VALOR_05          	varchar(100),
	CHAVE_06          	varchar(100),
	VALOR_06          	varchar(100),
	CHAVE_07          	varchar(100),
	VALOR_07          	varchar(100),
	CHAVE_08          	varchar(100),	
	VALOR_08          	varchar(100),
	FLEX_CAMPO_01 			varchar(2000),
	FLEX_CAMPO_02 			varchar(2000),
	FLEX_CAMPO_03 			varchar(2000),
	FLEX_CAMPO_04 			varchar(2000),
	FLEX_CAMPO_05 			varchar(2000),
	FLEX_CAMPO_06 			varchar(2000),
	CONSTRAINT hd_comentario_pk PRIMARY KEY  CLUSTERED  (id)  ON [PRIMARY])
GO

CREATE TABLE c_agora_atividadejanus(
    id_atividade                   int identity (1,1) NOT NULL,
    atividade                      varchar(40) ,
    flg_inativo                    varchar(1) DEFAULT 'N' NOT NULL,
	CONSTRAINT c_agora_atividadejanus_pk PRIMARY KEY  CLUSTERED  (id_atividade)  ON [PRIMARY])
GO

CREATE TABLE c_agora_contratojanus
  (
    ID_CONTRATO        int identity (1,1) NOT NULL,
    IDENTIFICADOR      varchar(50) NOT NULL,
    DESCRICAO          varchar(100),
    ID_CENTROCUSTONOVO numeric(10,0),
	CONSTRAINT c_agora_contratojanus_pk PRIMARY KEY (id_contrato)  ON [PRIMARY])
GO

ALTER TABLE sm_projetos ADD CONSTRAINT IX_sm_projetos_u UNIQUE(cod, ano)
GO

ALTER TABLE sm_projetos WITH CHECK ADD CONSTRAINT sm_projetos_fk FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_projetos  WITH CHECK ADD  CONSTRAINT ck_flg_transfere CHECK  ((flg_transfere='N' OR flg_transfere='S'))
GO

ALTER TABLE sm_projetos  WITH CHECK ADD  CONSTRAINT ck_flg_inativo CHECK  ((flg_inativo='N' OR flg_inativo='S'))
GO


ALTER TABLE sm_natdesp ADD CONSTRAINT IX_sm_natdesp UNIQUE(numero,ano)
GO

ALTER TABLE sm_natdesp WITH CHECK ADD CONSTRAINT sm_natdesp_fk FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

CREATE INDEX IX_ano ON sm_natdesp (ano); 
GO

ALTER TABLE sm_natdesp  WITH CHECK ADD  CONSTRAINT ck_natbem CHECK  (natbem='N' OR natbem='S')
GO

ALTER TABLE sm_natdesp  WITH CHECK ADD  CONSTRAINT ck_execucao CHECK  (execucao='N' OR execucao='S')
GO

ALTER TABLE sm_natdesp  WITH CHECK ADD  CONSTRAINT ck_orc CHECK  (orc='N' OR orc='S')
GO

ALTER TABLE sm_natdesp  WITH CHECK ADD  CONSTRAINT ck_desativ CHECK  (desativ='N' OR desativ='S')
GO

ALTER TABLE sm_dotacoes ADD CONSTRAINT IX_sm_dotacoes_u UNIQUE(seq_dot, ano)
GO

ALTER TABLE sm_dotacoes WITH CHECK ADD CONSTRAINT sm_dotacoes_fk FOREIGN KEY(num_natdesp,ano)
REFERENCES sm_natdesp (numero,ano)
GO

ALTER TABLE sm_dotacoes WITH CHECK ADD CONSTRAINT sm_dotacoes_fk_1 FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_dotacoes  WITH CHECK ADD  CONSTRAINT ck_dotacoes_inativo CHECK  (flg_inativo='N' OR flg_inativo='S')
GO


ALTER TABLE sm_dotacao_projeto ADD CONSTRAINT IX_sm_dotacao_projeto_u UNIQUE(projeto, ano, dot_seq_dot)
GO

ALTER TABLE sm_dotacao_projeto WITH CHECK ADD CONSTRAINT sm_dotacao_projeto_fk FOREIGN KEY(projeto,ano)
REFERENCES sm_projetos (cod,ano)
GO

ALTER TABLE sm_dotacao_projeto WITH CHECK ADD CONSTRAINT sm_dotacao_projeto_fk_1 FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_dotacao_projeto WITH CHECK ADD CONSTRAINT sm_dotacao_projeto_fk_2 FOREIGN KEY(dot_seq_dot, ano)
REFERENCES sm_dotacoes (seq_dot, ano)
GO


ALTER TABLE sm_tipolicitacao WITH CHECK ADD  CONSTRAINT ck_flg_processo CHECK  ((flg_processo='N' OR flg_processo='S'))
GO

ALTER TABLE sm_tipolicitacao WITH CHECK ADD  CONSTRAINT ck_flg_periodo CHECK  ((flg_periodo='N' OR flg_periodo='S'))
GO


ALTER TABLE sm_fornecedor ADD CONSTRAINT IX_sm_fornecedor_u UNIQUE(cgc)
GO

ALTER TABLE sm_fornecedor WITH CHECK ADD  CONSTRAINT ck_flg_qualidade CHECK  ((flg_qualidade='N' OR [flg_qualidade]='S'))
GO

ALTER TABLE sm_fornecedor WITH CHECK ADD  CONSTRAINT ck_situacao CHECK  ((situacao='SUSPENSO' OR situacao='CANCELADO' OR 
situacao='ADVERTIDO' OR situacao='REGULAR' OR situacao='IRREGULAR'))
GO

ALTER TABLE sm_fornecedor WITH CHECK ADD  CONSTRAINT ck_ativo CHECK  ((ativo='N' OR ativo='S'))
GO

ALTER TABLE sm_fornecedor WITH CHECK ADD  CONSTRAINT ck_atuareg CHECK  ((atuareg='N' OR atuareg='S'))
GO

ALTER TABLE sm_fornecedor WITH CHECK ADD  CONSTRAINT ck_flg_email CHECK  ((flg_email='N' OR flg_email='S'))
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD CONSTRAINT sm_almoxarifados_fk FOREIGN KEY(almox_numero)
REFERENCES sm_almoxarifados (numero)
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD CONSTRAINT sm_almoxarifados_fk_1 FOREIGN KEY(projeto, ano)
REFERENCES sm_projetos (cod,ano)
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_guiapadrao CHECK  (flg_guiapadrao='N' OR flg_guiapadrao='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_impguiadist CHECK  (flg_impguiadist='N' OR flg_impguiadist='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_ccpcota CHECK  (flg_ccpcota='N' OR flg_ccpcota='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_veestoque CHECK  (flg_veestoque='N' OR flg_veestoque='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_gerarm CHECK  (flg_gerarm='N' OR flg_gerarm='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_msgrestr_almox CHECK  (flg_msgrestr_almox='N' OR flg_msgrestr_almox='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_msgrestr_proj CHECK  (flg_msgrestr_proj='N' OR flg_msgrestr_proj='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_msgrestr_cota CHECK  (flg_msgrestr_cota='N' OR flg_msgrestr_cota='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_msgrestr_lote CHECK  (flg_msgrestr_lote='N' OR flg_msgrestr_lote='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_msgrestr_apre CHECK  (flg_msgrestr_apre='N' OR flg_msgrestr_apre='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_msgrestr_aplo CHECK  (flg_msgrestr_aplo='N' OR flg_msgrestr_aplo='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_flg_ccprefer CHECK  (flg_ccprefer='N' OR flg_ccprefer='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_fechado CHECK  (fechado='N' OR fechado='S')
GO

ALTER TABLE sm_almoxarifados WITH CHECK ADD  CONSTRAINT ck_perm_consol CHECK  (perm_consol='N' OR perm_consol='S')
GO

ALTER TABLE sm_gclasses ADD CONSTRAINT IX_sm_gclasses UNIQUE(grupo_classe,sm_iclasse_item_classe)
GO

ALTER TABLE sm_gclasses WITH CHECK ADD CONSTRAINT sm_gclasses_fk FOREIGN KEY(sm_iclasse_item_classe)
REFERENCES sm_iclasses (item_classe)
GO

ALTER TABLE sm_fclasses ADD CONSTRAINT IX_sm_fclasses UNIQUE(fam_classe,sm_gclasse_sm_iclasse_item_cla,sm_gclasse_grupo_classe)
GO

ALTER TABLE sm_fclasses WITH CHECK ADD CONSTRAINT sm_fclasses_fk FOREIGN KEY(sm_gclasse_grupo_classe,sm_gclasse_sm_iclasse_item_cla)
REFERENCES sm_gclasses (grupo_classe,sm_iclasse_item_classe)
GO

ALTER TABLE sm_fclasses  WITH CHECK ADD  CONSTRAINT ck_flg_obras CHECK  (flg_obras='N' OR flg_obras='S')
GO
	
ALTER TABLE sm_fclasses  WITH CHECK ADD  CONSTRAINT ck_flg_almox CHECK  (flg_almox='N' OR flg_almox='S')
GO	

ALTER TABLE sm_fclasses  WITH CHECK ADD  CONSTRAINT ck_flg_serv CHECK  (flg_serv='N' OR flg_serv='S')
GO

ALTER TABLE sm_fclasses  WITH CHECK ADD  CONSTRAINT ck_flg_imovel CHECK  (flg_imovel='N' OR flg_imovel='S')
GO

ALTER TABLE sm_fclasses  WITH CHECK ADD  CONSTRAINT ck_flg_patrim CHECK  (flg_patrim='N' OR flg_patrim='S')
GO

ALTER TABLE sm_itens ADD CONSTRAINT IX_sm_itens_u_1 UNIQUE(item, sm_fclasse_sm_gclasse_sm_iclas, 
  sm_fclasse_sm_gclasse_grupo_cl, sm_fclasse_fam_classe, sm_pais)
GO

ALTER TABLE sm_itens ADD CONSTRAINT IX_sm_itens_u_2 UNIQUE(itemid)
GO

ALTER TABLE sm_itens WITH CHECK ADD CONSTRAINT sm_itens_fk FOREIGN KEY(sm_unidmed_unidade)
REFERENCES sm_unidmed (unidade)
GO

ALTER TABLE sm_itens WITH CHECK ADD CONSTRAINT sm_itens_fk_1 FOREIGN KEY(cod_inc)
REFERENCES sm_inc (cod_inc)
GO

ALTER TABLE sm_itens WITH CHECK ADD CONSTRAINT sm_itens_fk_2 FOREIGN KEY(sm_fclasse_fam_classe, sm_fclasse_sm_gclasse_sm_iclas, sm_fclasse_sm_gclasse_grupo_cl)
REFERENCES sm_fclasses (fam_classe,sm_gclasse_sm_iclasse_item_cla,sm_gclasse_grupo_classe)
GO

ALTER TABLE sm_itens  WITH CHECK ADD  CONSTRAINT ck_itens_flg_desuso CHECK  (flg_desuso='N' OR flg_desuso='S')
GO

ALTER TABLE sm_itens  WITH CHECK ADD  CONSTRAINT ck_itens_flg_decimal CHECK  (flg_decimal='N' OR flg_decimal='S')
GO

ALTER TABLE sm_itens  WITH CHECK ADD  CONSTRAINT ck_itens_flg_fracao CHECK  (flg_fracao='N' OR flg_fracao='S')
GO

ALTER TABLE sm_itens  WITH CHECK ADD  CONSTRAINT ck_itens_tipo_patr CHECK  (tipo_patr='PLAQ' OR tipo_patr='NPLAQ' OR tipo_patr='IMOV')
GO

ALTER TABLE sm_itens  WITH CHECK ADD  CONSTRAINT ck_itens_flg_lote CHECK  (flg_lote='N' OR flg_lote='S')
GO

ALTER TABLE sm_natdesp_item ADD CONSTRAINT IX_sm_natdesp_item_u UNIQUE(natdesp,ano,sm_item_itemid)
GO

ALTER TABLE sm_natdesp_item WITH CHECK ADD CONSTRAINT sm_natdesp_itens_fk FOREIGN KEY(sm_item_itemid)
REFERENCES sm_itens (itemid)
GO

ALTER TABLE sm_natdesp_item WITH CHECK ADD CONSTRAINT sm_natdesp_natdesp_fk FOREIGN KEY(natdesp,ano)
REFERENCES sm_natdesp (numero,ano)
GO

ALTER TABLE sm_gpf_ay ADD CONSTRAINT IX_sm_gpf_ay_u UNIQUE(ano, gpf)
GO

ALTER TABLE sm_gpf_ay WITH CHECK ADD CONSTRAINT sm_gpf_ay_fk FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_eventos_ay ADD CONSTRAINT IX_sm_eventos_ay_u UNIQUE(numevento, ano)
GO

ALTER TABLE sm_eventos_ay WITH CHECK ADD CONSTRAINT sm_eventos_ay_fk FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_autoriza CHECK  (autoriza='N' OR autoriza='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_calc_auto CHECK  (calc_auto='N' OR calc_auto='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_chk_empenho_ay CHECK  (chk_empenho_ay='N' OR chk_empenho_ay='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_chk_reserva_ay CHECK  (chk_reserva_ay='N' OR chk_reserva_ay='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_com_local CHECK  (com_local='N' OR com_local='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_com_reserva CHECK  (com_reserva='N' OR com_reserva='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_criterio CHECK  (criterio='MAIOR' OR criterio='MENOR' OR criterio='MEDIA')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_emp_local CHECK  (emp_local='N' OR emp_local='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_emp_convenio CHECK  (emp_convenio='N' OR emp_convenio='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_emp_dotacao CHECK  (emp_dotacao='N' OR emp_dotacao='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_emp_reserva CHECK  (emp_reserva='N' OR emp_reserva='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_flg_usr_autped CHECK  (flg_usr_autped='N' OR flg_usr_autped='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_flg_usr_fazres CHECK  (flg_usr_fazres='N' OR flg_usr_fazres='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_imp_sem_empenho CHECK  (imp_sem_empenho='N' OR imp_sem_empenho='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_ins_corpoemp_ay CHECK  (ins_corpoemp_ay='N' OR ins_corpoemp_ay='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_ins_empenho_ay CHECK  (ins_empenho_ay='N' OR ins_empenho_ay='S')
GO

ALTER TABLE sm_gestorcompras WITH CHECK ADD  CONSTRAINT ck_ins_reserva_ay CHECK  (ins_reserva_ay='N' OR ins_reserva_ay='S')
GO

ALTER TABLE sm_availnumcompra ADD CONSTRAINT IX_sm_availnumcompra_u UNIQUE(gcompra_numero,ano_ano)
GO

ALTER TABLE sm_availnumcompra WITH CHECK ADD CONSTRAINT sm_availnumcompra_fk FOREIGN KEY(ano_ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_availnumcompra WITH CHECK ADD CONSTRAINT sm_availnumcompra_fk_1 FOREIGN KEY(gcompra_numero)
REFERENCES sm_gestorcompras (numero)
GO

ALTER TABLE sm_compras ADD CONSTRAINT IX_sm_compras_u UNIQUE(ano_ano, gcompra_numero, numcompr)
GO

ALTER TABLE sm_compras ADD CONSTRAINT IX_sm_compras_u_1 UNIQUE(numproc)
GO

ALTER TABLE sm_compras WITH CHECK ADD CONSTRAINT sm_compras_fk FOREIGN KEY(ano_ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_compras WITH CHECK ADD CONSTRAINT sm_compras_fk_1 FOREIGN KEY(tipolic_modalidade)
REFERENCES sm_tipolicitacao (modalidade)
GO

ALTER TABLE sm_compras WITH CHECK ADD CONSTRAINT sm_compras_fk_2 FOREIGN KEY(gcompra_numero)
REFERENCES sm_gestorcompras (numero)
GO


ALTER TABLE sm_compras WITH CHECK ADD  CONSTRAINT ck_compras_flg_internet CHECK  (flg_internet='N' OR flg_internet='S')
GO

ALTER TABLE sm_compras WITH CHECK ADD  CONSTRAINT ck_flg_fechado CHECK  (flg_fechado='N' OR flg_fechado='S')
GO

ALTER TABLE sm_compras WITH CHECK ADD  CONSTRAINT ck_tipo_prop CHECK  (tipo_prop='PADRÃO' OR tipo_prop='LEILÃO')
GO

ALTER TABLE sm_compras WITH CHECK ADD  CONSTRAINT ck_flg_preco CHECK  (flg_preco='S' OR flg_preco='N')
GO

ALTER TABLE sm_compras WITH CHECK ADD  CONSTRAINT ck_flg_enviar_email CHECK  (flg_enviar_email='S' OR flg_enviar_email='N')
GO

ALTER TABLE sm_compras WITH CHECK ADD  CONSTRAINT ck_flg_internet CHECK  (flg_internet='S' OR flg_internet='N')
GO


ALTER TABLE sm_itenscompra ADD CONSTRAINT IX_sm_itenscompr_u UNIQUE(ano, gcompra_numero, numcompr, itemcompra)
GO

ALTER TABLE sm_itenscompra WITH CHECK ADD CONSTRAINT sm_itenscompra_fk FOREIGN KEY(ano, gcompra_numero, numcompr)
REFERENCES sm_compras (ano_ano,gcompra_numero,numcompr)
GO

ALTER TABLE sm_itenscompra WITH CHECK ADD CONSTRAINT sm_itenscompra_fk_1 FOREIGN KEY(sm_unidmed_unidade)
REFERENCES sm_unidmed (unidade)
GO

ALTER TABLE sm_itenscompra WITH CHECK ADD CONSTRAINT sm_itenscompra_fk_2 FOREIGN KEY(sm_item_itemid)
REFERENCES sm_itens (itemid)
GO

ALTER TABLE sm_itenscompra WITH CHECK ADD CONSTRAINT sm_itenscompra_fk_3 FOREIGN KEY(sm_fclasse_fam_classe, 
  sm_fclasse_sm_gclasse_sm_iclas, sm_fclasse_sm_gclasse_grupo_cl)
REFERENCES sm_fclasses  (fam_classe,sm_gclasse_sm_iclasse_item_cla,sm_gclasse_grupo_classe)
GO

ALTER TABLE sm_itenscompra WITH CHECK ADD  CONSTRAINT ck_icompras_flg_servico CHECK  (flg_servico='N' OR flg_servico='S')
GO

ALTER TABLE sm_eventoscompra ADD CONSTRAINT IX_sm_eventoscompra_u UNIQUE(ano, gcompra_numero, numcompr, data)
GO

ALTER TABLE sm_eventoscompra WITH CHECK ADD CONSTRAINT sm_eventoscompras_fk FOREIGN KEY(ano, gcompra_numero, numcompr)
REFERENCES sm_compras (ano_ano,gcompra_numero,numcompr)
GO

ALTER TABLE sm_pedidos ADD CONSTRAINT IX_sm_pedidos_u UNIQUE(gcompra_numero,ano,numped)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk_1 FOREIGN KEY(projeto, ano)
REFERENCES sm_projetos (cod,ano)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk_2 FOREIGN KEY(natdesp, ano)
REFERENCES sm_natdesp (numero,ano)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk_3 FOREIGN KEY(natdesp_exec, ano)
REFERENCES sm_natdesp (numero,ano)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk_4 FOREIGN KEY(ano, gpf_ay)
REFERENCES sm_gpf_ay (ano,gpf)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk_5 FOREIGN KEY(evres_ay, ano)
REFERENCES sm_eventos_ay (numevento,ano)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk_6 FOREIGN KEY(dot_seq_dot, ano)
REFERENCES sm_dotacoes (seq_dot,ano)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD CONSTRAINT sm_pedidos_fk_7 FOREIGN KEY(gcompra_numero)
REFERENCES sm_gestorcompras (numero)
GO

ALTER TABLE sm_pedidos WITH CHECK ADD  CONSTRAINT ck_tipo_entrega CHECK  (tipo_entrega='A' OR tipo_entrega='S' OR tipo_entrega='L')
GO

ALTER TABLE sm_pedidos WITH CHECK ADD  CONSTRAINT ck_flg_servico CHECK  (flg_servico='N' OR flg_servico='S')
GO

ALTER TABLE sm_itenspedido ADD CONSTRAINT IX_sm_itenspedido_u UNIQUE(gcompra_numero, numped, ano, itemped)
GO

ALTER TABLE sm_itenspedido WITH CHECK ADD CONSTRAINT sm_itenspedido_fk FOREIGN KEY(sm_item_itemid)
REFERENCES sm_itens (itemid)
GO

ALTER TABLE sm_itenspedido WITH CHECK ADD CONSTRAINT sm_itenspedido_fk_1 FOREIGN KEY(sm_unidmed_unidade)
REFERENCES sm_unidmed (unidade)
GO

ALTER TABLE sm_itenspedido WITH CHECK ADD CONSTRAINT sm_itenspedido_fk_2 FOREIGN KEY(gcompra_numero, ano, numped)
REFERENCES sm_pedidos (gcompra_numero,ano,numped)
GO

ALTER TABLE sm_itenspedido WITH CHECK ADD CONSTRAINT sm_itenspedido_fk_3 FOREIGN KEY(nat_desp, ano)
REFERENCES sm_natdesp (numero,ano)
GO

ALTER TABLE sm_itenspedido WITH CHECK ADD CONSTRAINT sm_itenspedido_fk_4 FOREIGN KEY(compr_ano, gcompra_numero, numcompr,itemcompra)
REFERENCES sm_itenscompra(ano,gcompra_numero,numcompr,itemcompra)
GO

ALTER TABLE sm_itenspedido WITH CHECK ADD CONSTRAINT sm_itenspedido_fk_5 FOREIGN KEY(sm_fclasse_fam_classe, 
  sm_fclasse_sm_gclasse_sm_iclas, sm_fclasse_sm_gclasse_grupo_cl)
REFERENCES sm_fclasses(fam_classe,sm_gclasse_sm_iclasse_item_cla,sm_gclasse_grupo_classe)
GO

ALTER TABLE sm_itenspedido  WITH CHECK ADD  CONSTRAINT ck_flg_indeferido CHECK  (flg_indeferido='N' OR flg_indeferido='S')
GO

ALTER TABLE sm_itenspedido  WITH CHECK ADD  CONSTRAINT ck_flg_autorizado CHECK  (flg_autorizado='N' OR flg_autorizado='S')
GO

ALTER TABLE sm_itenspedido  WITH CHECK ADD  CONSTRAINT ck_ipedido_flg_servico CHECK  (flg_servico='N' OR flg_servico='S')
GO

ALTER TABLE sm_cotacoes ADD CONSTRAINT IX_sm_cotacoes_u UNIQUE(seq, sm_item_itemid)
GO

ALTER TABLE sm_cotacoes WITH CHECK ADD CONSTRAINT sm_cotacoes_fk FOREIGN KEY(sm_item_itemid)
REFERENCES sm_itens (itemid)
GO

ALTER TABLE sm_cotacoes WITH CHECK ADD CONSTRAINT sm_cotacoes_fk_1 FOREIGN KEY(numfornec)
REFERENCES sm_fornecedor (numfornec)
GO

ALTER TABLE sm_precoestimado ADD CONSTRAINT IX_sm_precoestimado_u UNIQUE(gcompra_numero, ano, numped, itemped, seq)
GO

ALTER TABLE sm_precoestimado WITH CHECK ADD CONSTRAINT sm_precoestimado_fk FOREIGN KEY(gcompra_numero, numped,ano, itemped)
REFERENCES sm_itenspedido (gcompra_numero,numped,ano,itemped)
GO

ALTER TABLE sm_precoestimado WITH CHECK ADD CONSTRAINT sm_precoestimado_fk_1 FOREIGN KEY(numfornec)
REFERENCES sm_fornecedor (numfornec)
GO

ALTER TABLE sm_propostas ADD CONSTRAINT IX_sm_propostas_u UNIQUE(numfornec, ano, gcompra_numero, numcompr)
GO

ALTER TABLE sm_propostas WITH CHECK ADD CONSTRAINT sm_propostas_fk FOREIGN KEY(ano, gcompra_numero, numcompr)
REFERENCES sm_compras (ano_ano,gcompra_numero,numcompr)
GO

ALTER TABLE sm_propostas WITH CHECK ADD CONSTRAINT sm_propostas_fk_1 FOREIGN KEY(numfornec)
REFERENCES sm_fornecedor (numfornec)
GO

ALTER TABLE sm_propostas WITH CHECK ADD  CONSTRAINT ck_flg_desclas CHECK  (flg_desclas='N' OR flg_desclas='S')
GO

ALTER TABLE sm_ordemfornec ADD CONSTRAINT IX_sm_ordemfornec_u UNIQUE(numofor, ano, gcompra_numero)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk FOREIGN KEY(compr_ano, gcompra_numero, numcompr)
REFERENCES sm_compras (ano_ano,gcompra_numero,numcompr)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_1 FOREIGN KEY(ano)
REFERENCES sm_anocompra (ano)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_2 FOREIGN KEY(ano, gpf_ay)
REFERENCES sm_gpf_ay (ano,gpf)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_3 FOREIGN KEY(gcompra_numero)
REFERENCES sm_gestorcompras (numero)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_4 FOREIGN KEY(numfornec)
REFERENCES sm_fornecedor (numfornec)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_5 FOREIGN KEY(evcanemp_ay, ano)
REFERENCES sm_eventos_ay (numevento,ano)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_6 FOREIGN KEY(evemp_ay, ano)
REFERENCES sm_eventos_ay (numevento,ano)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_7 FOREIGN KEY(dot_seq_dot, ano)
REFERENCES sm_dotacoes (seq_dot,ano)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_8 FOREIGN KEY(natdesp_exec, ano)
REFERENCES sm_natdesp (numero,ano)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD CONSTRAINT sm_ordemfornec_fk_9 FOREIGN KEY(modemp_ay)
REFERENCES sm_modempenho_ay (modemp)
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD  CONSTRAINT ck_ordem_tipo_entrega CHECK  (tipo_entrega='A' OR tipo_entrega='S' OR tipo_entrega='L')
GO

ALTER TABLE sm_ordemfornec WITH CHECK ADD  CONSTRAINT ck_flg_contr CHECK  (flg_contr='N' OR flg_contr='S')
GO

ALTER TABLE sm_itensofor ADD CONSTRAINT IX_sm_itensofor_u UNIQUE(numofor, ano, gcompra_numero, itemofor)
GO

ALTER TABLE sm_itensofor WITH CHECK ADD CONSTRAINT sm_itensofor_fk FOREIGN KEY(numofor, ano, gcompra_numero)
REFERENCES sm_ordemfornec (numofor,ano,gcompra_numero)
GO

ALTER TABLE sm_itensofor WITH CHECK ADD CONSTRAINT sm_itensofor_fk_1 FOREIGN KEY(compr_ano, gcompra_numero, numcompr, itemcompra)
REFERENCES sm_itenscompra (ano,gcompra_numero,numcompr,itemcompra)
GO

ALTER TABLE sm_itped_ofor ADD CONSTRAINT IX_sm_itped_ofor_u UNIQUE(numofor, ano_ofor, gcompra_numero,itemped, numped, ano_ped, itemofor)
GO

ALTER TABLE sm_itped_ofor WITH CHECK ADD CONSTRAINT sm_itped_ofor_fk FOREIGN KEY(gcompra_numero, numped, ano_ped,itemped)
REFERENCES sm_itenspedido (gcompra_numero,numped,ano,itemped)
GO

ALTER TABLE sm_itped_ofor WITH CHECK ADD CONSTRAINT sm_itped_ofor_fk_1 FOREIGN KEY(numofor, ano_ofor, gcompra_numero,itemofor)
REFERENCES sm_itensofor (numofor,ano,gcompra_numero,itemofor)
GO

ALTER TABLE sm_parcelas ADD CONSTRAINT IX_sm_parcelas_u UNIQUE(numofor, ano, gcompra_numero, numpar)
GO

ALTER TABLE sm_parcelas WITH CHECK ADD CONSTRAINT sm_parcelas_fk FOREIGN KEY(almox)
REFERENCES sm_almoxarifados (numero)
GO

ALTER TABLE sm_parcelas WITH CHECK ADD CONSTRAINT sm_parcelas_fk_2 FOREIGN KEY(numofor, ano, gcompra_numero)
REFERENCES sm_ordemfornec (numofor,ano,gcompra_numero)
GO

ALTER TABLE sm_parcelas WITH CHECK ADD CONSTRAINT sm_parcelas_fk_3 FOREIGN KEY(local)
REFERENCES sm_locais_entregas (local)
GO

ALTER TABLE sm_parcelas WITH CHECK ADD  CONSTRAINT ck_parcela_tipo_entrega CHECK  (tipo_entrega='L' OR tipo_entrega='S')
GO

ALTER TABLE sm_parcelas WITH CHECK ADD  CONSTRAINT ck_parcela_flg_entrega_ok CHECK  (flg_entrega_ok='S' OR flg_entrega_ok='N')
GO


ALTER TABLE sm_entradas ADD CONSTRAINT IX_sm_entradas_u UNIQUE(num_ent, almox)
GO
	
ALTER TABLE sm_entradas WITH CHECK ADD CONSTRAINT sm_entradas_fk FOREIGN KEY(numofor, anoofor, gcompra_numero, numpar)
REFERENCES sm_parcelas (numofor,ano,gcompra_numero,numpar)
GO

ALTER TABLE sm_entradas WITH CHECK ADD CONSTRAINT sm_entradas_fk_1 FOREIGN KEY(almox)
REFERENCES sm_almoxarifados (numero)
GO

ALTER TABLE sm_entradas WITH CHECK ADD CONSTRAINT sm_entradas_fk_2 FOREIGN KEY(numfornec)
REFERENCES sm_fornecedor (numfornec)
GO

ALTER TABLE sm_entradas WITH CHECK ADD  CONSTRAINT ck_ent_flg_consol CHECK  (flg_consol='N' OR flg_consol='S')
GO

ALTER TABLE sm_entradas WITH CHECK ADD  CONSTRAINT ck_ent_flgpatrim CHECK  (flg_patrim='N' OR flg_patrim='S')
GO

ALTER TABLE sm_entradas WITH CHECK ADD  CONSTRAINT ck_flg_consol CHECK  (flg_consol='N' OR flg_consol='S')
GO

CREATE NONCLUSTERED INDEX ent_dataconsol_i ON sm_entradas (data_consol ASC,num_ent ASC,almox ASC)

ALTER TABLE sm_parcelas WITH CHECK ADD CONSTRAINT sm_parcelas_fk_1 FOREIGN KEY(num_ent, almox)
REFERENCES sm_entradas (num_ent,almox)
GO

ALTER TABLE sm_local_mat ADD CONSTRAINT IX_sm_local_mat_u UNIQUE(num_almox, num_local)
GO

ALTER TABLE sm_local_mat ADD CONSTRAINT IX_sm_local_mat_u_1 UNIQUE(cod_barras)
GO

ALTER TABLE sm_local_mat WITH CHECK ADD CONSTRAINT sm_local_mat_fk FOREIGN KEY(num_almox)
REFERENCES sm_almoxarifados (numero)
GO

ALTER TABLE sm_materialalmox ADD CONSTRAINT IX_sm_materialalmox_u UNIQUE(almox, itemid)
GO
	
ALTER TABLE sm_materialalmox WITH CHECK ADD CONSTRAINT sm_materialalmox_fk FOREIGN KEY(almox)
REFERENCES sm_almoxarifados (numero)
GO

ALTER TABLE sm_materialalmox WITH CHECK ADD CONSTRAINT sm_materialalmox_fk_1 FOREIGN KEY(almox, local)
REFERENCES sm_local_mat (num_almox,num_local)
GO

ALTER TABLE sm_materialalmox WITH CHECK ADD CONSTRAINT sm_materialalmox_fk_2 FOREIGN KEY(itemid)
REFERENCES sm_itens (itemid)
GO

ALTER TABLE sm_itensparcela ADD CONSTRAINT IX_sm_itensparcela_u UNIQUE(numofor, itemofor, numpar, ano, gcompra_numero)
GO

ALTER TABLE sm_itensparcela WITH CHECK ADD CONSTRAINT sm_itensparcela_fk FOREIGN KEY(numofor, ano, gcompra_numero,numpar)
REFERENCES sm_parcelas (numofor,ano,gcompra_numero,numpar)
GO

ALTER TABLE sm_itensparcela WITH CHECK ADD CONSTRAINT sm_itensparcela_fk_1 FOREIGN KEY(numofor, ano, gcompra_numero,itemofor)
REFERENCES sm_itensofor (numofor,ano,gcompra_numero,itemofor)
GO

ALTER TABLE sm_itped_parcela ADD CONSTRAINT IX_sm_itped_parcela_u UNIQUE(numpar, numofor, ano_ofor, gcompra_numero,itemped, numped, ano_ped, itemofor)
GO

ALTER TABLE sm_itped_parcela WITH CHECK ADD CONSTRAINT sm_itped_parcela_fk FOREIGN KEY(gcompra_numero, numped, ano_ped,itemped)
REFERENCES sm_itenspedido (gcompra_numero,numped,ano,itemped)
GO

ALTER TABLE sm_itped_parcela WITH CHECK ADD CONSTRAINT sm_itped_parcela_fk_1 FOREIGN KEY(numofor, itemofor, numpar, ano_ofor,gcompra_numero)
REFERENCES sm_itensparcela (numofor,itemofor,numpar,ano,gcompra_numero)
GO


ALTER TABLE sm_itensproposta ADD CONSTRAINT IX_sm_itensproposta_u UNIQUE(numfornec, ano, itemcompra, gcompra_numero,numcompr)
GO
	
ALTER TABLE sm_itensproposta WITH CHECK ADD CONSTRAINT sm_itensproposta_fk FOREIGN KEY(ano, gcompra_numero, numcompr,itemcompra)
REFERENCES sm_itenscompra (ano,gcompra_numero,numcompr,itemcompra)
GO

ALTER TABLE sm_itensproposta WITH CHECK ADD CONSTRAINT sm_itensproposta_fk_1 FOREIGN KEY(numfornec, ano, gcompra_numero, numcompr)
REFERENCES sm_propostas (numfornec,ano,gcompra_numero,numcompr)
GO

ALTER TABLE sm_itensproposta WITH CHECK ADD  CONSTRAINT ck_itensproposta_flg_desclas CHECK  (flg_desclas='N' OR flg_desclas='S')
GO

ALTER TABLE sm_itensent ADD CONSTRAINT IX_sm_itensent_u UNIQUE(almox, num_ent, itemid)
GO
	
ALTER TABLE sm_itensent WITH CHECK ADD CONSTRAINT sm_itensent_fk FOREIGN KEY(almox, itemid)
REFERENCES sm_materialalmox (almox,itemid)
GO

ALTER TABLE sm_itensent WITH CHECK ADD CONSTRAINT sm_itensent_fk_1 FOREIGN KEY(num_ent, almox)
REFERENCES sm_entradas (num_ent,almox)
GO

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
from sm_pedidos a	
GO

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
from sm_itenspedido a
GO

create view agoadm00004_sm_precoestimado as
SELECT b.numfornec,
    c.nome AS descforn,
    c.cgc,
	c.sigla_forn,
    b.marcamod,
    b.data,
    b.preco,
    a.itemped,
    a.ano,
    a.gcompra_numero,
    a.numped,
    a.descr,
    b.seq,
    a.sm_item_itemid                 AS itemid,
    b.flex_campo_01,
    b.flex_campo_02,
    b.flex_campo_03,
    b.flex_campo_04,
    b.flex_campo_05,
    b.flex_campo_06,
    b.flex_campo_07,
    b.flex_campo_08,
    b.flex_campo_09,
    b.flex_campo_10,
    b.flg_calculo,
    b.dt_prev_ent,
    b.classif_forn,
    b.origem,
    b.usuario,
	b.desejado,
	b.comprado,
    b.id AS rowid_reg
  FROM sm_itenspedido a,
    sm_precoestimado b,
    sm_fornecedor c
  WHERE b.ano           = a.ano
  AND b.gcompra_numero  = a.gcompra_numero
  AND b.numped          = a.numped
  AND b.itemped         = a.itemped
  AND c.numfornec      =  b.numfornec
GO

CREATE VIEW agoadm00010_sm_itens
AS
  SELECT a.ITEMID ,
    a.SM_FCLASSE_SM_GCLASSE_SM_ICLAS ,
    a.SM_FCLASSE_SM_GCLASSE_GRUPO_CL ,
    a.SM_FCLASSE_FAM_CLASSE ,
    a.ITEM ,
    a.NOME ,
    a.SM_UNIDMED_UNIDADE ,
    a.FLG_LOTE ,
    a.ESPECIF ,
    a.TIPO_PATR ,
    a.VIDAUFIS ,
    a.NUM_ANTIGO ,
    a.FLG_FRACAO ,
    a.FLG_DECIMAL ,
    a.FLG_DESUSO ,
    a.SM_PAIS ,
    a.FLEX_CAMPO_01 ,
    a.FLEX_CAMPO_02 ,
    a.FLEX_CAMPO_03 ,
    a.FLEX_CAMPO_04 ,
    a.FLEX_CAMPO_05 ,
    a.FLEX_CAMPO_06 ,
    a.FLEX_CAMPO_07 ,
    a.FLEX_CAMPO_08 ,
    a.FLEX_CAMPO_09 ,
    a.FLEX_CAMPO_10 ,
    a.COD_INC,
    a.id AS rowid_reg,
    g.NOME               AS NOMEGRUPO,
    f.NOME               AS NOMEFAMILIA
  FROM sm_itens a
  INNER JOIN sm_gclasses g
  ON a.SM_FCLASSE_SM_GCLASSE_SM_ICLAS  = g.SM_ICLASSE_ITEM_CLASSE
  AND a.SM_FCLASSE_SM_GCLASSE_GRUPO_CL = g.GRUPO_CLASSE
  INNER JOIN sm_fclasses f
  ON a.SM_FCLASSE_SM_GCLASSE_SM_ICLAS  = f.SM_GCLASSE_SM_ICLASSE_ITEM_CLA
  AND a.SM_FCLASSE_SM_GCLASSE_GRUPO_CL = f.SM_GCLASSE_GRUPO_CLASSE
  AND a.SM_FCLASSE_FAM_CLASSE          = f.FAM_CLASSE
GO

CREATE VIEW agoadm00011_sm_gclasses
AS
  SELECT a.SM_ICLASSE_ITEM_CLASSE,
    a.GRUPO_CLASSE,
    a.NOME,
    a.FLEX_CAMPO_01,
    a.FLEX_CAMPO_02,
    a.FLEX_CAMPO_03,
    a.FLEX_CAMPO_04,
    a.FLEX_CAMPO_05,
    a.FLEX_CAMPO_06,
    a.FLEX_CAMPO_07,
    a.FLEX_CAMPO_08,
    a.FLEX_CAMPO_09,
    a.FLEX_CAMPO_10,
    a.id AS rowid_reg
  FROM sm_gclasses a
GO  

CREATE VIEW agoadm00012_sm_fclasses
AS
  SELECT a.SM_GCLASSE_GRUPO_CLASSE,
    a.SM_GCLASSE_SM_ICLASSE_ITEM_CLA,
    a.FAM_CLASSE,
    a.NOME,
    a.FLG_IMOVEL,
    a.FLG_PATRIM,
    a.FLG_SERV,
    a.FLG_ALMOX,
    a.FLG_OBRAS,
    a.DESCRICAO,
    a.VIDAUCONT,
    a.DEPREC,
    a.NATDESP,
    a.FLEX_CAMPO_01,
    a.FLEX_CAMPO_02,
    a.FLEX_CAMPO_03,
    a.FLEX_CAMPO_04,
    a.FLEX_CAMPO_05,
    a.FLEX_CAMPO_06,
    a.FLEX_CAMPO_07,
    a.FLEX_CAMPO_08,
    a.FLEX_CAMPO_09,
    a.FLEX_CAMPO_10,
    a.INDICE_RESIDUAL,
    a.id AS rowid_reg
  FROM sm_fclasses a
GO

CREATE VIEW agoadm00040_sm_itenspedido
AS
  SELECT b.numfornec,
    c.nome AS descforn,
    c.cgc,
	c.sigla_forn,
    b.marcamod,
    b.data,
    b.preco,
    a.itemped,
    a.ano,
    a.gcompra_numero,
    a.numped,
    a.descr,
    a.sm_unidmed_unidade AS unidmed,
    a.quant_atend,
    b.seq,
    a.sm_item_itemid                 AS itemid,
    b.flex_campo_01,
    b.flex_campo_02,
    b.flex_campo_03,
    b.flex_campo_04,
    b.flex_campo_05,
    b.flex_campo_06,
    b.flex_campo_07,
    b.flex_campo_08,
    b.flex_campo_09,
    b.flex_campo_10,
    b.flg_calculo,
    b.dt_prev_ent,
    b.classif_forn,
    b.origem,
    b.usuario,
    b.comprado,
	b.desejado,
    b.id AS rowid_reg
  FROM sm_itenspedido a
  INNER JOIN sm_precoestimado b
  ON b.ano             = a.ano
  AND b.gcompra_numero = a.gcompra_numero
  AND b.numped         = a.numped
  AND b.itemped        = a.itemped
  INNER JOIN sm_fornecedor c
  ON c.numfornec = b.numfornec
GO


CREATE VIEW agoadm00050_sm_ped_ofor_parc AS
	SELECT   IPEDPARC.QUANT					AS QUANT_ENTREGUE_ITEM_NA_PARCELA , 
			 IPEDPARC.ID	                AS ROWID_ITEMPEDIDO_PARCELA ,
			 IPARC.ITEMOFOR					AS ITEM_ORDEM_FORNEC , 
			 IPARC.QUANT						AS QUANT_ESPERADA_ITEM_NA_PARCELA , 
			 IPARC.QUANT						AS QUANT_SUGERIDA_RECEBIMENTO , 
			 IPARC.VALOR						AS VALOR_ITEM_NA_PARCELA ,
			 IPARC.ID  		                    AS ROWID_ITEMPARCELA ,
			 PARC.NUMOFOR						AS NUMERO_ORDEM ,
			 PARC.NUMPAR						AS NUMERO_PARCELA ,
			 PARC.ANO							AS ANO ,
			 PARC.GCOMPRA_NUMERO				AS GESTOR_COMPRA ,
			 PARC.DATA_PREV					AS DATA_PREVISTA ,
			 PARC.DATA_ENTR					AS DATA_ENTREGA ,
			 PARC.NUM_ENT                    AS NUM_ENTRADA,
			 PARC.LOCAL_ENTREGA				AS LOCAL_ENTREGA ,
			 PARC.NOTAFISCAL					AS NOTA_FISCAL ,
			 PARC.VALOR							AS VALOR_PARCELA ,
			 PARC.USUARIO						AS USUARIO ,
			 PARC.ID		                    AS ROWID_PARCELA ,
			 IPED.NUMPED						AS NUMERO_PEDIDO,
			 IPED.ITEMPED						AS ITEM_PEDIDO ,
			 IPED.DESCR							AS DESCRICAO_ITEM ,
			 IPED.QUANT_SOL					AS QUANT_SOLICITADA_NO_PEDIDO ,
			 IPED.QUANT_ATEND					AS QUANT_ATENDIDA_NO_PEDIDO ,
			 IPED.QUANT_CONTR					AS QUANT_CONTRATADA_NO_PEDIDO ,
			 IPED.QUANT_ENTR					AS QUANT_ENTREGUE_NO_PEDIDO,
			 IPED.ID              		        AS ROWID_ITEMPEDIDO,
			 OFOR.PARCELAS 					AS QTDE_PARCELAS_ORDEM_FORNEC ,
			 OFOR.VALOR 						AS VALOR_ORDEM_FORNEC ,
			 OFOR.DATA_INI 					AS DATA_INICIO_ORDEM_FORNEC ,
			 OFOR.DATA_FIM 					AS DATA_FIM_ORDEM_FORNEC ,
			 OFOR.USUARIO 						AS USUARIO_ORDEM_FORNEC ,
			 OFOR.DATA_OFOR 					AS DATA_ORDEM_FORNEC ,
			 OFOR.ID                    		AS ROWID_ORDEM_FORNEC ,
			 FORNEC.NUMFORNEC					AS NUM_FORNECEDOR ,
			 FORNEC.CGC							AS CGC_FORNECEDOR ,
			 FORNEC.NOME						AS NOME_FORNECEDOR ,
			 FORNEC.DATACONTR					AS DATA_CONTRATO_FORNECEDOR ,
			 FORNEC.SIGLA_FORN                  AS SIGLA_FORNECEDOR,
			 PED.SITUACAO                       AS SITUACAO,
			 PED.ANO                            AS ANO_PED,
			 FORNEC.NUMFORNEC 	                AS ROWID_FORNECEDOR ,
			 IPEDOF.ID 	                        AS ROWID_ITEM_PEDIDO_ORDEM
	  FROM   SM_ITPED_PARCELA IPEDPARC, 
			 SM_ITENSPARCELA IPARC, 
			 SM_PARCELAS PARC, 
			 SM_ITPED_OFOR IPEDOF,
			 SM_ITENSPEDIDO IPED,
			 SM_ITENSOFOR IOF,
			 SM_ORDEMFORNEC OFOR,
			 SM_FORNECEDOR FORNEC,
			 SM_PEDIDOS PED
--
	 WHERE  IPEDPARC.NUMOFOR				= IPARC.NUMOFOR
		AND IPEDPARC.ITEMOFOR			= IPARC.ITEMOFOR
		AND IPEDPARC.NUMPAR				= IPARC.NUMPAR
		AND IPEDPARC.ANO_OFOR			= IPARC.ANO
		AND IPEDPARC.GCOMPRA_NUMERO	= IPARC.GCOMPRA_NUMERO
		AND IPEDPARC.NUMOFOR				= IPARC.NUMOFOR
		AND IPEDPARC.ITEMPED				= IPED.ITEMPED
		AND IPEDPARC.NUMPED				= IPED.NUMPED
		AND IPEDPARC.ANO_PED				= IPED.ANO
		AND IPEDPARC.GCOMPRA_NUMERO	= IPED.GCOMPRA_NUMERO
		AND IPARC.NUMOFOR					= PARC.NUMOFOR
		AND IPARC.NUMPAR					= PARC.NUMPAR
		AND IPARC.ANO						= PARC.ANO
		AND IPARC.GCOMPRA_NUMERO		= PARC.GCOMPRA_NUMERO
		AND IPEDOF.NUMOFOR				= IOF.NUMOFOR
		AND IPEDOF.ITEMOFOR				= IOF.ITEMOFOR
		AND IPEDOF.ANO_OFOR				= IOF.ANO
		AND IPEDOF.GCOMPRA_NUMERO		= IOF.GCOMPRA_NUMERO
		AND IPEDOF.ITEMPED				= IPED.ITEMPED
		AND IPEDOF.NUMPED				= IPED.NUMPED
		AND IPEDOF.ANO_PED				= IPED.ANO
		AND IPEDOF.GCOMPRA_NUMERO		= IPED.GCOMPRA_NUMERO
		AND IPED.GCOMPRA_NUMERO         = PED.GCOMPRA_NUMERO
		AND IPED.NUMPED                 = PED.NUMPED
		AND IPED.ANO                    = PED.ANO
		AND OFOR.NUMFORNEC				= FORNEC.NUMFORNEC
		AND OFOR.ANO						= PARC.ANO
		AND OFOR.GCOMPRA_NUMERO			= PARC.GCOMPRA_NUMERO
		AND OFOR.NUMOFOR					= PARC.NUMOFOR
GO

CREATE VIEW agoadm00061_hd_comentario
AS
SELECT
	C.ID, 
	C.DATA_COMENT,
	C.USUARIO,
	C.COMENTARIO,
	C.TABELA,
	C.CHAVE_01,
	C.CHAVE_02,
	C.CHAVE_03,
	C.CHAVE_04,
	C.CHAVE_05,
	C.CHAVE_06,
	C.CHAVE_07,
	C.CHAVE_08,
	C.VALOR_01,
	C.VALOR_02,
	C.VALOR_03,
	C.VALOR_04,
	C.VALOR_05,
	C.VALOR_06,
	C.VALOR_07,
	C.VALOR_08,
	C.FLEX_CAMPO_01,
	C.FLEX_CAMPO_02,
	C.FLEX_CAMPO_03,
	C.FLEX_CAMPO_04,
	C.FLEX_CAMPO_05,
	C.FLEX_CAMPO_06,
	C.id AS ROWID_REG
FROM
    HD_COMENTARIO C
GO

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
  AND ipo.itemofor     = io.itemofor
GO

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
  AND ipo.itemped         = ipp.itemped
 GO
 
CREATE VIEW agoadm00200_sm_fornecedor
AS
  SELECT NUMFORNEC,
    a.CGC,
    a.NOME,
    a.ATUAREG,
    a.ATIVO,
    a.SIGLA_FORN,
    a.INSCREST,
    a.INSCRMUNIC,
    a.INSCRECON,
    a.REGPROFIS,
    a.SITUACAO,
    a.CRC,
    a.VALIDCRC,
    a.CAPITAL,
    a.OBS,
    a.PATRIMLIQ,
    a.CONTRSOCIAL,
    a.DATACONTR,
    a.NUM_ORIGEM,
    a.TIPO_END,
    a.RUA,
    a.NUM_END,
    a.COMPL_END,
    a.CEP,
    a.NUM_DDD,
    a.NUM_TEL,
    a.NUM_FAX,
    a.IMP_CRC,
    a.EMISSAOCRC,
    a.MBAIRRO_CODIGO,
    a.MBAIRRO_MUNICIPIO_CODIGO,
    a.FLG_QUALIDADE,
    a.END_MAIL,
    a.SENHA,
    a.END_WEB,
    a.END_IP,
    a.USUARIO_AUT,
    a.DATA_AUT,
    a.FLG_EMAIL,
    a.CAIXA_POSTAL,
    a.FLEX_CAMPO_01,
    a.FLEX_CAMPO_02,
    a.FLEX_CAMPO_03,
    a.FLEX_CAMPO_04,
    a.FLEX_CAMPO_05,
    a.FLEX_CAMPO_06,
    a.FLEX_CAMPO_07,
    a.FLEX_CAMPO_08,
    a.FLEX_CAMPO_09,
    a.FLEX_CAMPO_10,
    a.CEL_NUM,
    a.TIPO_CADASTRO,
    a.FLG_PROPRIETARIO,
    m.nome               AS nomemunic,
    a.numfornec AS rowid_reg
  FROM sm_fornecedor a
  INNER JOIN municipio m
  ON a.mbairro_municipio_codigo = m.codigo
GO

CREATE VIEW agoadm00300_sm_dotacao_projeto
AS
  SELECT a.PROJETO,
    a.DOT_SEQ_DOT,
    a.SLD_INICIAL,
    a.SLD_ATUAL,
    a.ANO,
    a.FLEX_CAMPO_01,
    a.FLEX_CAMPO_02,
    a.FLEX_CAMPO_03,
    a.FLEX_CAMPO_04,
    a.FLEX_CAMPO_05,
    a.FLEX_CAMPO_06,
    a.FLEX_CAMPO_07,
    a.FLEX_CAMPO_08,
    a.FLEX_CAMPO_09,
    a.FLEX_CAMPO_10,
    p.nome               AS NOMEPROJ,
    a.id                 AS rowid_reg
  FROM sm_dotacao_projeto a
  INNER JOIN sm_projetos p
  ON a.ano      = p.ano
  AND a.projeto = p.cod
  GO
  
CREATE VIEW agoadm00300_sm_dotacoes
AS
  SELECT a.SEQ_DOT,
    a.NUM_NATDESP,
    a.NUM_UNOR,
    a.NUM_FUNCAO,
    a.NUM_PROGRAMA,
    a.NUM_SUBPROG,
    a.NUM_PROJATIV,
    a.NUM_FONTE,
    a.FLG_INATIVO,
    a.VLR_INICIAL,
    a.VLR_ATUAL,
    a.ANO,
    a.DESCRICAO,
    a.FLEX_CAMPO_01,
    a.FLEX_CAMPO_02,
    a.FLEX_CAMPO_03,
    a.FLEX_CAMPO_04,
    a.FLEX_CAMPO_05,
    a.FLEX_CAMPO_06,
    a.FLEX_CAMPO_07,
    a.FLEX_CAMPO_08,
    a.FLEX_CAMPO_09,
    a.FLEX_CAMPO_10,
    n.nome               AS NOMENATDESP
  FROM sm_dotacoes a
  INNER JOIN sm_natdesp n
  ON a.ano          = n.ano
  AND a.num_natdesp = n.numero
GO
 
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
GO

CREATE VIEW agoadm00401_sm_natdesp
AS
  SELECT a.NUMERO,
    a.NOME,
    a.DESATIV,
    a.ORC,
    a.EXECUCAO,
    a.NATBEM,
    a.VIDAUCONT,
    a.INDICE_RESIDUAL,
    a.ANO,
    a.FLEX_CAMPO_01,
    a.FLEX_CAMPO_02,
    a.FLEX_CAMPO_03,
    a.FLEX_CAMPO_04,
    a.FLEX_CAMPO_05,
    a.FLEX_CAMPO_06,
    a.FLEX_CAMPO_07,
    a.FLEX_CAMPO_08,
    a.FLEX_CAMPO_09,
    a.FLEX_CAMPO_10,
    a.id AS rowid_reg
  FROM sm_natdesp a
GO

CREATE VIEW agoadm01005_cancela_empenhos  AS
 SELECT 
    p.ano            AS ano_pedido,
    p.gcompra_numero AS gestor_pedido,
    p.numped         AS num_pedido,
	o.numofor        AS num_ordem,
    'Pedido no.'
    + p.numped
    + '/'
    + p.ano        AS id_empenho,
    '0000-PREV'     AS status_empenho,
    p.projeto       AS centrocusto_empenho,
    p.flex_campo_02 AS contrato_empenho,
    f.cgc                            AS fornec_CNPJ,
	f.nome                           As fornec_nome,
    f.flex_campo_01                  AS id_fornecJanus,
    p.flex_campo_01                  AS atividade_empenho,
    cast(n.flex_campo_01 as numeric)                 As grupoorc_empenho,
    cast(n.flex_campo_02 as numeric)                 As catorc_empenho,
    'Referente ao pedido de compra no.'
    + p.numped
    +'/'
    + p.ano
    + ':'
    + p.descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.flex_campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.flex_campo_02 as numeric) as varchar) AS descr_empenho,
    getdate()                                      AS data_empenho,
    'SM_ITENSPEDIDO'                              AS origem_empenho,
	(p.numped * 10000 + p.ano) * 10000 + cast((n.flex_campo_01+n.flex_campo_02) As numeric) AS chave_empenho,
     sum(iofor.preco_tot)                          AS valor_empenho
  FROM sm_pedidos p
  INNER JOIN sm_itped_ofor io
  ON p.ano             = io.ano_ped
  AND p.gcompra_numero = io.gcompra_numero
  AND p.numped         = io.numped
  INNER JOIN sm_itensofor iofor
  ON io.ano_ofor        = iofor.ano
  AND io.numofor        = iofor.numofor
  AND io.itemofor       = iofor.itemofor
  AND io.gcompra_numero = iofor.gcompra_numero
  INNER JOIN sm_itensent ie
  ON ie.gcompra_numero  = iofor.gcompra_numero
  and ie.numofor        = iofor.numofor
  and ie.anoofor        = iofor.ano
  and ie.itemofor       = iofor.itemofor
  INNER JOIN sm_itenspedido i
  ON io.ano_ped        = i.ano
  AND i.gcompra_numero = io.gcompra_numero
  AND i.numped         = io.numped
  AND io.itemped       = i.itemped
  INNER JOIN sm_ordemfornec o
  ON io.ano_ofor        = o.ano
  AND io.numofor        = o.numofor
  AND io.gcompra_numero = o.gcompra_numero
  INNER JOIN sm_entradas e
  ON ie.almox          = e.almox
  and ie.num_ent       = e.num_ent
  INNER JOIN sm_fornecedor f
  ON o.numfornec = f.numfornec
  INNER JOIN sm_natdesp_item ni
  on i.sm_item_itemid = ni.sm_item_itemid
  and ni.ano  = p.ano
  INNER JOIN sm_natdesp n
  on ni.natdesp = n.numero
  and ni.ano    = n.ano  
  and p.situacao = 'CANCELADO'
  and o.numfornec <> 0
  Group by 
    p.ano,
    p.gcompra_numero,
    p.numped,
	o.numofor,
    'Pedido no.'
    + p.numped
    + '/'
    + p.ano,
    p.projeto,
    p.flex_campo_02,
    f.cgc,
	f.nome,
    f.flex_campo_01,
    p.flex_campo_01,
    cast(n.flex_campo_01 as numeric),
    cast(n.flex_campo_02 as numeric),
    'Referente ao pedido de compra no.'
    + p.numped
    +'/'
    + p.ano
    + ':'
    + p.descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.flex_campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.flex_campo_02 as numeric) as varchar),
	(p.numped * 10000 + p.ano) * 10000 + cast((n.flex_campo_01+n.flex_campo_02) As numeric) 
GO

CREATE VIEW agoadm01030_empenhos_pedido AS
 SELECT p.ano        AS ano_pedido,
    p.gcompra_numero AS gestor_pedido,
    p.numped         AS num_pedido,
    'Pedido no.'
    + p.numped
    + '/'
    + p.ano        AS id_empenho,
    '6C72F11C-3E5C-4C26-BD08-09D36E5B4CD2'     AS status_empenho,
    p.projeto       AS centrocusto_empenho,
    p.flex_campo_02 AS contrato_empenho,
    f.cgc                            AS fornec_CNPJ,
	f.nome                           As fornec_nome,
    f.flex_campo_01                  AS id_fornecJanus,
    p.flex_campo_01                  AS atividade_empenho,
    cast(n.flex_campo_01 as numeric)                 As grupoorc_empenho,
    cast(n.flex_campo_02 as numeric)                 As catorc_empenho,
    'Referente ao pedido de compra no.'
    + p.numped
    +'/'
    + p.ano
    + ':'
    + p.descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.flex_campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.flex_campo_02 as numeric) as varchar) AS descr_empenho,
    getdate()                                       AS data_empenho,
    'SM_ITENSPEDIDO'                                AS origem_empenho,
    (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01 + n.flex_campo_02) as numeric)         AS chave_empenho,
    sum(iofor.preco_tot)                                                                             AS valor_empenho
  FROM sm_pedidos p
  INNER JOIN sm_itped_ofor io
  ON p.ano             = io.ano_ped
  AND p.gcompra_numero = io.gcompra_numero
  AND p.numped         = io.numped
  INNER JOIN sm_itensofor iofor
  ON io.ano_ofor        = iofor.ano
  AND io.numofor        = iofor.numofor
  AND io.itemofor       = iofor.itemofor
  AND io.gcompra_numero = iofor.gcompra_numero
  INNER JOIN sm_itenspedido i
  ON io.ano_ped        = i.ano
  AND i.gcompra_numero = io.gcompra_numero
  AND i.numped         = io.numped
  AND io.itemped       = i.itemped
  INNER JOIN sm_ordemfornec o
  ON io.ano_ofor        = o.ano
  AND io.numofor        = o.numofor
  AND io.gcompra_numero = o.gcompra_numero
  INNER JOIN sm_fornecedor f
  ON o.numfornec = f.numfornec
  INNER JOIN sm_natdesp_item ni
  on i.sm_item_itemid = ni.sm_item_itemid
  and ni.ano  = p.ano
  INNER JOIN sm_natdesp n
  on ni.natdesp = n.numero
  and ni.ano    = n.ano  
  and f.numfornec <> 0
  Group by
       p.ano,
       p.gcompra_numero,
       p.numped,
       'Pedido no.'
       + p.numped
       + '/'
       + p.ano,
       p.projeto,
       p.flex_campo_02,
       f.cgc,
	   f.nome,
       f.flex_campo_01,
       p.flex_campo_01,
       cast(n.flex_campo_01 as numeric),
       cast(n.flex_campo_02 as numeric),
       'Referente ao pedido de compra no.'
       + p.numped
       +'/'
       + p.ano
       + ':'
       + p.descricao
       + ' - Grupo e Cat :  '
       + cast(cast(n.flex_campo_01 as numeric) as varchar)
       + '.'
       + cast(cast(n.flex_campo_02 as numeric) as varchar),
       (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01 + n.flex_campo_02) as numeric)
GO

CREATE VIEW agoadm01050_empenhos_pedido AS
 SELECT 
    p.ano        AS ano_pedido,
    p.gcompra_numero AS gestor_pedido,
    p.numped         AS num_pedido,
	o.numofor        AS num_ordem,
    'Pedido no.'
    + p.numped
    + '/'
    + p.ano        AS id_empenho,
    '6C72F11C-3E5C-4C26-BD08-09D36E5B4CD2'     AS status_empenho,
    p.projeto       AS centrocusto_empenho,
    p.flex_campo_02 AS contrato_empenho,
    f.cgc                            AS fornec_CNPJ,
	f.nome                           As fornec_nome,
    f.flex_campo_01                  AS id_fornecJanus,
    p.flex_campo_01                  AS atividade_empenho,
    cast(n.flex_campo_01 as numeric)                 As grupoorc_empenho,
    cast(n.flex_campo_02 as numeric)                 As catorc_empenho,
    'Referente ao pedido de compra no.'
    + p.numped
    +'/'
    + p.ano
    + ':'
    + p.descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.flex_campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.flex_campo_02 as numeric) as varchar) AS descr_empenho,
    getdate()                                           AS data_empenho,
    (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01+n.flex_campo_02) as numeric)         AS chave_empenho,
    sum(iofor.preco_tot)                          AS valor_empenho
  FROM sm_pedidos p
  INNER JOIN sm_itped_ofor io
  ON p.ano             = io.ano_ped
  AND p.gcompra_numero = io.gcompra_numero
  AND p.numped         = io.numped
  INNER JOIN sm_itensofor iofor
  ON io.ano_ofor        = iofor.ano
  AND io.numofor        = iofor.numofor
  AND io.itemofor       = iofor.itemofor
  AND io.gcompra_numero = iofor.gcompra_numero
  INNER JOIN sm_itensent ie
  ON ie.gcompra_numero  = iofor.gcompra_numero
  and ie.numofor        = iofor.numofor
  and ie.anoofor        = iofor.ano
  and ie.itemofor       = iofor.itemofor
  INNER JOIN sm_itenspedido i
  ON io.ano_ped        = i.ano
  AND i.gcompra_numero = io.gcompra_numero
  AND i.numped         = io.numped
  AND io.itemped       = i.itemped
  INNER JOIN sm_ordemfornec o
  ON io.ano_ofor        = o.ano
  AND io.numofor        = o.numofor
  AND io.gcompra_numero = o.gcompra_numero
  INNER JOIN sm_entradas e
  ON ie.almox          = e.almox
  and ie.num_ent       = e.num_ent
  INNER JOIN sm_fornecedor f
  ON e.numfornec = f.numfornec
  INNER JOIN sm_natdesp_item ni
  on i.sm_item_itemid = ni.sm_item_itemid
  and ni.ano  = p.ano
  INNER JOIN sm_natdesp n
  on ni.natdesp = n.numero
  and ni.ano    = n.ano  
  and o.numfornec = 0
  Group by p.ano,
    p.gcompra_numero,
    p.numped,
	o.numofor,
    'Pedido no.'
    + p.numped
    + '/'
    + p.ano,
    p.projeto,
    p.flex_campo_02,
    f.cgc,
	f.nome,
    f.flex_campo_01,
    p.flex_campo_01,
    cast(n.flex_campo_01 as numeric),
    cast(n.flex_campo_02 as numeric),
    'Referente ao pedido de compra no.'
    + p.numped
    +'/'
    + p.ano
    + ':'
    + p.descricao
    + ' - Grupo e Cat :  '
    + cast(cast(n.flex_campo_01 as numeric) as varchar)
    + '.'
    + cast(cast(n.flex_campo_02 as numeric) as varchar),
    (p.numped * 10000 + p.ano)* 10000 + cast((n.flex_campo_01+n.flex_campo_02) as numeric)
GO

create view agoadm01051_sm_entradas as
select e.almox,
     e.num_ent,
     e.tipo,
     e.usuario,
     e.numfornec,
	 f.cgc,
     f.nome,
	 f.sigla_forn,
     e.numofor,
	 e.anoofor,
     e.ano,
     e.gcompra_numero,
     e.numpar,
     e.data_entrega,
     e.notafiscal,
	 e.flg_patrim,
	 e.empenho,
	 e.numproc,
	 e.flg_consol,
	 e.gest_patr,
	 e.tipo_patr,
	 e.situacao_ent,
	 e.usu_sit_ent,
	 e.flg_finaliz,
	 e.usu_finaliz,
     e.flex_campo_01,
     e.flex_campo_02,
     e.flex_campo_03,
     e.flex_campo_04,
     e.flex_campo_05,
     e.flex_campo_06,
     e.flex_campo_07,
     e.flex_campo_08,
     e.flex_campo_09,
     e.flex_campo_10,
     e.id  as rowid_entrada
 from sm_entradas e,
      sm_fornecedor f
 Where e.numfornec = f.numfornec
GO

create or replace view agoadm01051_sm_itensent as
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
 
create view hd_coment_ped
AS
  SELECT id,
    data_coment,
    usuario,
    comentario,
    valor_01 AS ano,
    valor_02 AS gestor,
    valor_03 AS numped
  FROM hd_comentario
  WHERE tabela = 'SM_PEDIDOS'
GO

CREATE VIEW hd_last_coment_ped as
    SELECT MAX(id) AS maxid,
    valor_01     AS ano,
    valor_02     AS gestor,
    valor_03     AS numped
  FROM hd_comentario
  WHERE tabela = 'SM_PEDIDOS'
  group by valor_01, valor_02, valor_03
GO  

CREATE VIEW cagoadm00001_sm_pedidos
AS
  SELECT a.gcompra_numero,
    a.ano,
    a.numped,
    a.convenio,
    a.natdesp_exec,
    a.usuario,
    a.empresa,
    a.setor,
    a.natdesp,
    a.usu_cot,
    a.usu_aut,
    a.dot_seq_dot,
    a.projeto,
    a.reserva,
    a.data,
    a.descricao,
    a.preco_est,
    a.tipo,
    a.flg_servico,
    a.situacao,
    a.data_sit,
    a.tipo_entrega,
    a.entrega_setor_empresa,
    a.entrega,
    a.evres_ay,
    a.gpf_ay,
    a.valor01_gpf,
    a.valor02_gpf,
    a.valor03_gpf,
    a.valor04_gpf,
    a.valor05_gpf,
    a.valor06_gpf,
    a.valor07_gpf,
    a.valor08_gpf,
    a.valor09_gpf,
    a.valor10_gpf,
    a.valor11_gpf,
    a.valor12_gpf,
    a.valor13_gpf,
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
    a.prazo_entr,
    a.garantia,
    a.exam_quali,
    a.observacao,
    p.nome nomeprojeto,
	a.motivo_indeferimento,
    a.rowid_reg,
    aj.atividade     AS nomeatividade,
    cj.identificador AS nomecontrato,
    c.comentario AS last_comentario
  FROM AGOADM00001_SM_PEDIDOS a
  LEFT OUTER JOIN sm_projetos p ON p.ano = a.ano and p.cod = a.projeto
  LEFT OUTER JOIN hd_last_coment_ped lc ON lc.ano = a.ano and lc.numped = a.numped and lc.gestor = a.gcompra_numero
  LEFT OUTER JOIN hd_coment_ped c ON c.ano = a.ano and c.numped = a.numped and c.gestor = a.gcompra_numero and c.id = lc.maxid
  LEFT OUTER JOIN c_agora_atividadejanus aj ON a.flex_campo_01 = aj.id_atividade
  LEFT OUTER JOIN c_agora_contratojanus cj ON a.flex_campo_02 = cj.id_contrato
GO


	
	
 
	
	

  
  
  












