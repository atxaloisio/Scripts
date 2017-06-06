ALTER TABLE dbintegracao.pedido_otica_infoadic
 DROP FOREIGN KEY fk_pedido_otica_infoadic,
 CHANGE crm_medico crm_medico VARCHAR(20);
ALTER TABLE dbintegracao.pedido_otica_infoadic
 ADD CONSTRAINT fk_pedido_otica_infoadic FOREIGN KEY (id_pedido_otica) REFERENCES dbintegracao.pedido_otica (Id) ON UPDATE CASCADE ON DELETE CASCADE;
