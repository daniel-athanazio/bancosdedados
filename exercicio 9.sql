select codigo,razao_social
from tb_fornecedor tf  left join tb_contato tc on(tf.codigo = tc.fornecedor_id)
where tc.fornecedor_id is  null 
;



