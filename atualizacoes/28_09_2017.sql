ALTER TABLE dbintegracao.contas_pagar
 ADD pagamento DATE COMMENT 'Data de pagamento' AFTER previsao;

ALTER TABLE dbintegracao.contas_pagar
 ADD observacao varchar(512) COMMENT 'Observações da conta a pagar' AFTER pago;
