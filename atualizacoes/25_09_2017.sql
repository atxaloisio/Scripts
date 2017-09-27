ALTER TABLE dbintegracao.item_livro_caixa
 DROP FOREIGN KEY fk_livro;
 
ALTER TABLE dbintegracao.item_livro_caixa
 DROP FOREIGN KEY fk_empresa;
 
 ALTER TABLE dbintegracao.item_livro_caixa
 DROP FOREIGN KEY fk_filial;
 
 ALTER TABLE dbintegracao.item_livro_caixa
 ADD Id_parcela BIGINT(20) COMMENT 'Id da Parcela' AFTER Id_filial,
 ADD Id_contaspagar BIGINT(20) COMMENT 'Id do contas a pagar';
 
ALTER TABLE dbintegracao.item_livro_caixa
 ADD CONSTRAINT fk_livro FOREIGN KEY (Id_livro) REFERENCES dbintegracao.livro_caixa (Id) ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE dbintegracao.item_livro_caixa
 ADD CONSTRAINT fk_empresa FOREIGN KEY (Id_empresa) REFERENCES dbintegracao.empresa (Id) ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE dbintegracao.item_livro_caixa
 ADD CONSTRAINT fk_filial FOREIGN KEY (Id_filial) REFERENCES dbintegracao.filial (Id) ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE dbintegracao.item_livro_caixa
 ADD CONSTRAINT fk_parcela FOREIGN KEY (Id_parcela) REFERENCES dbintegracao.pedido_otica_parcelas (Id) ON UPDATE NO ACTION ON DELETE SET NULL;
 ALTER TABLE dbintegracao.item_livro_caixa
 ADD CONSTRAINT fk_contapagar FOREIGN KEY (Id_contaspagar) REFERENCES dbintegracao.contas_pagar (Id) ON UPDATE NO ACTION ON DELETE SET NULL;
