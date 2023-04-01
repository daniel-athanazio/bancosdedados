insert into empressa.tb_empresa (cnpj,razao_social) values
('05.145.696/0001-68','bocaz carlinisons'),('04.444.446/4001-48','seu osmar telhas'),('06.665.696/6001-08','brens seguradora contra incendios');

insert into empressa.tb_salario  (salario) values
('12000'),('10000'),('50000');

insert into empressa.tb_cargos  (nomes) values
('gerente'),('adiministrador'),('faxineiro');

insert into empressa.tb_dependentes  (nome_completo,rg,nascimento,nome_dependentes) values
('Erick Felipe Black Doll','360592934','11/11/2045','luis felipe gtr'),
('joao augusto','450599924','10/10/2005','luis felipe rgt'),
('romulo grande alex','621518980','09/09/2025','luis felipe tei');


insert into empressa.tb_funcionarios  (cpf,cnpj,cbo,id_salario,cargos,titulo_eleitor,nascimento,numero_telefone,endereço,email,nome_completo) values
('262102920','05.145.696/0001-68','1','1','gerente','016733500','11/11/2045',986465651,'RUA JARDIM 60','wilman2020@uorak.com','Erick Felipe Black Doll'),
('34240599','04.444.446/4001-48','2','2','adiministrador','01406780','10/10/2005',970045435,'RUA manga 07','lolozinho@gmail.com','joao augusto'),
('45300709','06.665.696/6001-08','3','3','faxineiro','2356909784','09/09/2025',982150004,'RUA oreio 97','ferrarilol@gmail.com','romulo grande alex')
;