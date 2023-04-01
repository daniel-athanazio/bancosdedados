create schema Empressa;

drop table empressa.tb_dados cascade;
drop table empressa.tb_dependentes cascade;
drop table  empressa.tb_funcionarios cascade;
drop table empressa.tb_salario cascade;
drop table empressa.tb_cargos cascade;
drop table empressa.tb_empresa cascade;
-- tabela de empressa--
create table empressa.tb_empresa(
cnpj varchar(20) primary key,
razao_social varchar (200)
);
--tabela de cargos--
create table empressa.tb_cargos(
cbo int primary key generated always as identity,
nomes varchar(50)
);
-- tabela de salario--
create table empressa.tb_salario(
id_salario int primary key generated always as identity,
salario numeric(12,2)
);
--tabela dos funcionarios--
create table empressa.tb_funcionarios(
cpf varchar(20) primary key,
cnpj varchar(20),
cbo int,
id_salario int,
cargos varchar(50),
titulo_eleitor varchar(20),
nascimento date,
numero_telefone numeric(20),
endereço varchar(20),
email varchar(50),
nome_completo varchar(100),
constraint fk_cnpj
foreign key (cnpj)
references empressa.tb_empresa(cnpj),
constraint fk_cbo
foreign key (cbo)
references empressa.tb_cargos(cbo),
constraint fk_salario
foreign key (id_salario)
references empressa.tb_salario(id_salario)
);
--tabela dos dependentes--
create table empressa.tb_dependentes(
id_dependentes int primary key generated always as identity,
nome_completo varchar(200),
rg numeric,
nascimento date,
nome_dependentes varchar(200),
cpf varchar (20),
constraint fk_cpf
foreign key (cpf)
references empressa.tb_funcionarios(cpf)
);
--alteraçoes--
alter table empressa.tb_salario add cpf varchar (20);
alter table empressa.tb_salario add 
constraint fk_cpf
foreign key (cpf)
references empressa.tb_funcionarios(cpf);

alter table empressa.tb_cargos add cpf varchar (20);
alter table empressa.tb_cargos add 
constraint fk_cpf
foreign key (cpf)
references empressa.tb_funcionarios(cpf);
-- tabela de dados--
create table empressa.tb_dados(
ID int primary key generated always as identity,
cnpj varchar(20),
informaçoes varchar(50),
constraint fk_cnpj
foreign key (cnpj)
references empressa.tb_empresa(cnpj)
);
