ALTER TABLE dbintegracao.contas_pagar
 ADD Id_empresa BIGINT(20) AFTER pago,
 ADD Id_filial BIGINT(20),
 ADD inclusao DATE,
 ADD usuario_inclusao VARCHAR(40),
 ADD alteracao DATE,
 ADD usuario_alteracao VARCHAR(40);
ALTER TABLE dbintegracao.contas_pagar
 ADD CONSTRAINT fk_contas_pagar_fornecedor FOREIGN KEY (Id_fornecedor) REFERENCES dbintegracao.cliente (Id) ON UPDATE NO ACTION ON DELETE SET NULL,
 ADD CONSTRAINT fk_contas_pagar_empresa FOREIGN KEY (Id_empresa) REFERENCES dbintegracao.empresa (Id) ON UPDATE NO ACTION ON DELETE SET NULL,
 ADD CONSTRAINT fk_contas_pagar_filial FOREIGN KEY (Id_filial) REFERENCES dbintegracao.filial (Id) ON UPDATE NO ACTION ON DELETE SET NULL;
