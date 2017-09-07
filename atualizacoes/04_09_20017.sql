insert into parametro (chave,valor) values ('NrRegPag','20');

ALTER TABLE filial
 ADD CONSTRAINT FK_filial_empresa FOREIGN KEY (Id_empresa) REFERENCES empresa (Id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE usuario
 DROP FOREIGN KEY FK_usuario_perfil,
 ADD Id_empresa BIGINT AFTER inativo,
 ADD Id_filial BIGINT;

ALTER TABLE usuario
 ADD CONSTRAINT FK_usuario_perfil FOREIGN KEY (Id_perfil) REFERENCES perfil (Id) ON UPDATE RESTRICT ON DELETE RESTRICT; 
 
 ALTER TABLE cliente
 ADD Id_empresa BIGINT AFTER sincronizar,
 ADD Id_filial BIGINT;
 
ALTER TABLE pedido_otica
 DROP FOREIGN KEY FK_pedido_otica_caixa,
 DROP FOREIGN KEY FK_pedido_otica_cliente_cliente,
 DROP FOREIGN KEY FK_pedido_otica_motivo_entrega,
 DROP FOREIGN KEY FK_pedido_otica_parcela,
 DROP FOREIGN KEY FK_pedido_otica_pedido,
 DROP FOREIGN KEY FK_pedido_otica_transportadora,
 DROP FOREIGN KEY FK_pedido_otica_venedor,
 ADD Id_empresa BIGINT AFTER data_cancelamento,
 ADD Id_filial BIGINT;
 
ALTER TABLE pedido_otica
 ADD CONSTRAINT FK_pedido_otica_caixa FOREIGN KEY (Id_caixa) REFERENCES caixa (Id) ON UPDATE RESTRICT ON DELETE RESTRICT,
 ADD CONSTRAINT FK_pedido_otica_cliente_cliente FOREIGN KEY (Id_cliente) REFERENCES cliente (Id) ON UPDATE RESTRICT ON DELETE RESTRICT,
 ADD CONSTRAINT FK_pedido_otica_motivo_entrega FOREIGN KEY (id_motivo_entrega) REFERENCES motivo_entrega (Id) ON UPDATE RESTRICT ON DELETE RESTRICT,
 ADD CONSTRAINT FK_pedido_otica_parcela FOREIGN KEY (condicao_pagamento) REFERENCES parcela (Id) ON UPDATE RESTRICT ON DELETE RESTRICT,
 ADD CONSTRAINT FK_pedido_otica_pedido FOREIGN KEY (Id_pedido) REFERENCES pedido (id) ON UPDATE RESTRICT ON DELETE RESTRICT,
 ADD CONSTRAINT FK_pedido_otica_transportadora FOREIGN KEY (Id_transportadora) REFERENCES cliente (Id) ON UPDATE RESTRICT ON DELETE RESTRICT,
 ADD CONSTRAINT FK_pedido_otica_venedor FOREIGN KEY (Id_vendedor) REFERENCES vendedor (Id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE vendedor
 ADD Id_empresa BIGINT AFTER sincronizar,
 ADD Id_filial BIGINT;
 
insert into funcao (codigo,funcao_pai,descricao) values (1012,1002,'Movimentação de Estoque');

