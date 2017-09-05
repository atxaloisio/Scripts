insert into parametro (chave,valor) values ('NrRegPag','20');
ALTER TABLE dbintegracao.filial
 ADD CONSTRAINT FK_filial_empresa FOREIGN KEY (Id_empresa) REFERENCES dbintegracao.empresa (Id) ON UPDATE CASCADE ON DELETE CASCADE;