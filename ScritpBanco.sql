/*SqlServer2014*/


CREATE  DATABASE crudDb
GO

USE crudDb
GO

CREATE TABLE tb_usuario(
	id_usuario int IDENTITY NOT NULL,
	nome varchar(30) NOT NULL,
	tel varchar(18) NOT NULL,
	email varchar(30) NOT NULL,
	loginUsuario varchar(18) NOT NULL,
	senha varchar(14) NOT NULL
	);

	insert into tb_usuario(nome,tel,email,loginUsuario,senha) values ('José Santos','016 1234-1234','admin@teste1.com','admin','admin');
	insert into tb_usuario(nome,tel,email,loginUsuario,senha) values ('André Silva','016 2341-2341','email2@teste2.com','email2','teste2');
	insert into tb_usuario(nome,tel,email,loginUsuario,senha) values ('Maria Carla','016 3412-3412','email3@teste3.com','email3','teste3');
	insert into tb_usuario(nome,tel,email,loginUsuario,senha) values ('Matheus Henrique','016 4123-4123','email4@teste4.com','email4','teste4');
	insert into tb_usuario(nome,tel,email,loginUsuario,senha) values ('Luiz Fernando','016 2234-2234','email5@teste5.com','email4','teste5');




CREATE TABLE tb_jogo(
	id_jogo int IDENTITY NOT NULL,
	nome varchar(30) NOT NULL
	);

	insert into tb_jogo(nome) values ('Mario World');
	insert into tb_jogo(nome) values ('Top Gear');
	insert into tb_jogo(nome) values ('Donkey Kong');
	insert into tb_jogo(nome) values ('Super Star Soccer 98');
	insert into tb_jogo(nome) values ('BomberMan');



CREATE TABLE tb_locacao(
	id_locacao int IDENTITY NOT NULL,
	id_jogo int NOT NULL,
        nomeJgo varchar(30) NOT NULL,
	id_locador int NOT NULL,
        nomeLocador varchar(30) NOT NULL,
	jgoEmprestado varchar(3) NOT NULL

); 

      

    insert into tb_locacao(id_jogo,id_locador,jgoEmprestado,nomeJgo,nomeLocador) values ( 2,2,'NÃO','Top Gear','André Silva');
	insert into tb_locacao(id_jogo,id_locador,jgoEmprestado,nomeJgo,nomeLocador) values ( 2,3,'SIM','Top Gear','Maria Carla');
    insert into tb_locacao(id_jogo,id_locador,jgoEmprestado,nomeJgo,nomeLocador) values ( 3,4,'NÃO','Donkey Kong','Matheus Henrique');
	insert into tb_locacao(id_jogo,id_locador,jgoEmprestado,nomeJgo,nomeLocador) values ( 3,5,'SIM','Donkey Kong','Luiz Fernando');
    insert into tb_locacao(id_jogo,id_locador,jgoEmprestado,nomeJgo,nomeLocador) values ( 4,1,'NÃO','Super Star Soccer 98','José Santos');





/*Select Join para Tb_Locacao*/
select  l.id_locacao, l.id_jogo,j.nome as NomeJogo,l.id_locador, u.nome as NomeUsuario,
l.jgoEmprestado from 
((tb_locacao l
inner join tb_jogo j
on j.id_jogo = l.id_jogo)

inner join tb_usuario u
on l.id_locador = u.id_usuario) order by l.id_locacao;

select * from tb_jogo;
select * from tb_usuario;
select * from tb_locacao;