INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(4003,4000,'Financeiro');
INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(40031,4003,'Livro Caixa');
INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(40032,4003,'Contas a Pagar');
INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(40033,4003,'Fluxo de Caixa');
INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(400311,4031,'Abrir Movimentação');
INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(400312,4031,'Encerrar Movimentação');
INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(400313,4031,'Lançamentos');
INSERT INTO FUNCAO (CODIGO,FUNCAO_PAI,DESCRICAO) VALUES(400314,4031,'Listagem de Lançamentos');

ALTER TABLE perfil
 ADD administrativo CHAR(1) CHARACTER SET latin1 COLLATE latin1_general_cs AFTER descricao;
