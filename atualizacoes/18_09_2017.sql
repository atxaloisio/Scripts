ALTER TABLE dbintegracao.livro_caixa
 ADD inclusao DATE AFTER saldo_final,
 ADD usuario_inclusao VARCHAR(40),
 ADD alteracao DATE,
 ADD usuario_alteracao VARCHAR(40),
 ADD Id_empresa BIGINT,
 ADD Id_filial BIGINT;
ALTER TABLE dbintegracao.livro_caixa
 ADD CONSTRAINT fk_livro_caixa_empresa FOREIGN KEY (Id_empresa) REFERENCES dbintegracao.empresa (Id) ON UPDATE CASCADE ON DELETE CASCADE,
 ADD CONSTRAINT fk_livro_caixa_filial FOREIGN KEY (Id_filial) REFERENCES dbintegracao.filial (Id) ON UPDATE CASCADE ON DELETE CASCADE;
 
 ALTER TABLE dbintegracao.item_livro_caixa
 ADD inclusao DATE AFTER valor,
 ADD usuario_inclusao VARCHAR(40),
 ADD alteracao DATE,
 ADD usuario_alteracao VARCHAR(40),
 ADD Id_empresa BIGINT,
 ADD Id_filial BIGINT;
ALTER TABLE dbintegracao.item_livro_caixa
 ADD CONSTRAINT fk_item_livro_caixa_empresa FOREIGN KEY (Id_empresa) REFERENCES dbintegracao.empresa (Id) ON UPDATE CASCADE ON DELETE CASCADE,
 ADD CONSTRAINT fk_item_livro_caixa_filial FOREIGN KEY (Id_filial) REFERENCES dbintegracao.filial (Id) ON UPDATE CASCADE ON DELETE CASCADE;

