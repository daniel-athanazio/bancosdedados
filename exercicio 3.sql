create table tb_produto (
id int primary key,
descriçao  varchar (500),
preço_custo numeric (12,2),
preço_venda numeric (12,2) );

alter table tb_produto add categoria varchar (100);


insert into tb_produto 
(id,descriçao,preço_custo,preço_venda)
values (1,'televisao',599.99,899.99),(2,'geladeira',300.00,800.00),(3,'sofa',2000.00,3490.99)
;
delete from tb_produto where preço_venda <1000;






