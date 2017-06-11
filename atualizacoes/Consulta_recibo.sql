select
  pop.Id,
  concat('Recebemos de ',c.razao_social, ' a import�ncia de ', Concat('R$ ',Replace(Replace(Replace(Format(pop.valor, 2), '.', '|'), ',', '.'), '|', ',')),' ',fn_numero_extenso(pop.valor), ' referente a parcela n� ', pop.numero_parcela, ' do pedido de vendas n� ',po.codigo, ', com vencimento em ', pop.data_vencimento ) as recibo,
  nextval('sq_recibo_sequence') as nr_recibo,
  pop.forma_pagamento,
  pop.valor 
from 
  pedido_otica_parcelas pop inner join pedido_otica po ON po.Id = pop.Id_pedido_otica inner join cliente c ON c.Id = po.Id_cliente
where pop.Id = @Id