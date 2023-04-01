select a.codigo,a.razao_social,count() 
from tb_fornecedor tf  join tb_contato tc on(tf.codigo = tc.fornecedor_id)
group by tf.codigo,tc.razao_social;

insert into tb_fornecedor (codigo,razao_social,numero_cnpj)
values
(1,'empresa de testes 1',126587000188),(2,'outra empresa',66874982000178),
(3,'exportadora de fora do pais',98322145000145),(4,'lojinha do seu Ze',65987414000145),
(5,'barraca de pastel',87987564000152);
