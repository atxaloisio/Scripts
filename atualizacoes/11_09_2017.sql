CREATE TABLE dbintegracao.contas_pagar (
   Id BIGINT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT 'chave de identificação unica',
   Id_fornecedor BIGINT COMMENT 'Id do fornecedor',
   Documento VARCHAR(20) COMMENT 'código do documento / nota fiscal',
   valor DECIMAL COMMENT 'Valor do documento',
   vencimento DATE COMMENT 'data de vencimento',
   categoria INT COMMENT 'categoria do lançamento',
   previsao DATE COMMENT 'previsão de pagamento',
   pago CHAR CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT 'N' COMMENT 'indicado de conta paga',
  PRIMARY KEY (Id)
) ENGINE = InnoDB COMMENT = 'Lançamento de contas a pagar' ROW_FORMAT = DEFAULT;

CREATE TABLE dbintegracao.livro_caixa (
   Id BIGINT AUTO_INCREMENT NOT NULL COMMENT 'chave de identificação',
   data DATE COMMENT 'Data de movimentação do livro caixa',
   status CHAR(1) CHARACTER SET latin1 COLLATE latin1_general_cs COMMENT 'status da movimentação A=Aberto F=Fechado',
   saldo_inicial DECIMAL COMMENT 'saldo de abertura do dia',
   saldo_final DECIMAL COMMENT 'saldo final de fechamento do dia',
  PRIMARY KEY (Id)
) ENGINE = InnoDB COMMENT = 'tabela de livro de caixa' ROW_FORMAT = DEFAULT;

CREATE TABLE dbintegracao.item_livro_caixa (
   Id BIGINT AUTO_INCREMENT NOT NULL COMMENT 'chave de identificaçao do item de lançamento do livro',
   Id_livro BIGINT NOT NULL COMMENT 'Identificador do livro',
   tipo CHAR(1) CHARACTER SET latin1 COLLATE latin1_general_cs COMMENT 'Tipo de lançamento E=Entrada S=Saida',
   descricao VARCHAR(80) COMMENT 'descrição do lançamento do livro',
   documento VARCHAR(20) COMMENT 'numero da nota fiscal ou codigo do pedido',
   valor DECIMAL COMMENT 'Valor de entrada ou saida',
  CONSTRAINT FK_item_livro_livro FOREIGN KEY (Id_livro) REFERENCES dbintegracao.livro_caixa (Id) ON UPDATE CASCADE ON DELETE CASCADE,
  PRIMARY KEY (Id)
) ENGINE = InnoDB COMMENT = 'Lançamento de livro de caixa' ROW_FORMAT = DEFAULT;