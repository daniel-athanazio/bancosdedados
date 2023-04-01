create table tb_fornecedor(
codigo int,
razao_social varchar (200),
nome_fantasia varchar(200),
numero_cnpj varchar(14),
capital_social numeric (12,2),
primary key (codigo)
);

create table tb_contato(
id int primary key,
fornecedor_id int,
constraint fk_fornecedor
foreign key(fornecedor_id)
references tb_fornecedor (codigo),
nome varchar (200),
telefone varchar(20)
);

