-- Nova transação - Registros de Cotações
INSERT INTO TRANSACAO (SIS, TRANS, PUBLICATRANS, ITEMMENU, LOGGING, NOMETRANS)
VALUES('Agora', 'AG03004', 'N','AG03004', 'N','Registros de Cotações');
-- Padrão de acesso
INSERT INTO TRANSPADACES(PADACES, SIS, TRANS, PODEALT, PODECAD, PODEREM)
VALUES('AGORA', 'Agora', 'AG03004', 'S', 'S', 'S');


-- Cadastra rotina para marcar fornecedor desejado

insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Utiliza Banco Preco Java','S','N','Busca dados no banco de preços','java:registrosCotacoesON.utilizaBancoPreco(String, String)');


INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Utiliza Banco Preco Java', 'Agora Compras', 'Agora', 'AGORA');


insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Fornecedor Carrinho Java','S','N','Inclui ou exclui do carrinho fornecedor desejado','java:registrosCotacoesON.atualizaCarrinho(String)');

INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Fornecedor Carrinho Java', 'Agora Compras', 'Agora', 'AGORA');

insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','eMail Java','S','N','envio de email','java:registrosCotacoesON.eMailAutoriza(String, String)');

INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('eMail Java', 'Agora Compras', 'Agora', 'AGORA');


insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Reabre cotacao Java','S','N','Reabre a cotação de um pedido, mudando a situação de COTADO para ABERTO','java:registrosCotacoesON.reabreCotacao(String)');

INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Reabre cotacao Java', 'Agora Compras', 'Agora', 'AGORA');

-- Nova transação - Registros de Cotações
INSERT INTO TRANSACAO (SIS, TRANS, PUBLICATRANS, ITEMMENU, LOGGING, NOMETRANS)
VALUES('Agora', 'AG03330', 'N','AG03330', 'N','Pedidos a Fornecedores');

-- Padrão de acesso
INSERT INTO TRANSPADACES(PADACES, SIS, TRANS, PODEALT, PODECAD, PODEREM)
VALUES('AGORA', 'Agora', 'AG03330', 'S', 'S', 'S');

-- Rotinas da Tela Pedidos a Fornecedores
insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Comprar Java','S','N','Realiza a compra de um pedido','java:pedidoFornecON.geraPedido(String, String)');


INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Comprar Java', 'Agora Compras', 'Agora', 'AGORA');

-- Rotinas da Tela Pedidos a Fornecedores
insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Desfazer Compra Java','S','N','Desfaz uma compra já autorizada','java:pedidoFornecON.desfazPedido(String, String)');


INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Desfazer Compra Java', 'Agora Compras', 'Agora', 'AGORA');


-- Tela Recebimento
INSERT INTO TRANSACAO (SIS, TRANS, PUBLICATRANS, ITEMMENU, LOGGING, NOMETRANS)
VALUES('Agora', 'AG03350', 'N','AG03350', 'N','Recebimento de Compra');

-- Padrão de acesso - Tela de Recebimento
INSERT INTO TRANSPADACES(PADACES, SIS, TRANS, PODEALT, PODECAD, PODEREM)
VALUES('AGORA', 'Agora', 'AG03350', 'S', 'S', 'S');


insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Gera Entrada da Ordem Java','S','N','Gera entrada da ordem de fornecimento','java:recebimentoON.geraEntrada(String, String)');

INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Gera Entrada da Ordem Java', 'Agora Compras', 'Agora', 'AGORA');

insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Desfaz Entrada da Ordem Java','S','N','Desfaz a entrada da ordem','java:recebimentoON.desfazEntrada(String)');

INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Desfaz Entrada da Ordem Java', 'Agora Compras', 'Agora', 'AGORA');


-- Tela Entrada
INSERT INTO TRANSACAO (SIS, TRANS, PUBLICATRANS, ITEMMENU, LOGGING, NOMETRANS)
VALUES('Agora', 'AG03351', 'N','AG03351', 'N','Entrada de Materiais');

-- Padrão de acesso - Tela Entrada
INSERT INTO TRANSPADACES(PADACES, SIS, TRANS, PODEALT, PODECAD, PODEREM)
VALUES('AGORA', 'Agora', 'AG03351', 'S', 'S', 'S');



insert into rotinas (grupo, sis, rotina, tipo, logging, descricao, arquivo)
values ('Agora Compras', 'Agora','Finaliza Entrada Java','S','N','Finaliza Entrada','java:recebimentoON.finalizaEntrada(String)');

INSERT INTO PADROT(ROTINA, GRUPO, SIS, PADACES)
VALUES('Finaliza Entrada Java', 'Agora Compras', 'Agora', 'AGORA');


-- Tela Meus Pedidos
INSERT INTO TRANSACAO (SIS, TRANS, PUBLICATRANS, ITEMMENU, LOGGING, NOMETRANS)
VALUES('Agora', 'AG03007', 'N','AG03007', 'N','Meus Pedidos');

-- Padrão de acesso - Tela Meus Pedidos
INSERT INTO TRANSPADACES(PADACES, SIS, TRANS, PODEALT, PODECAD, PODEREM)
VALUES('AGORA', 'Agora', 'AG03007', 'S', 'S', 'S');

