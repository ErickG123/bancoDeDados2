create table cidade
(
	idcidade int not null primary key,
    nome varchar(30),
    idestado int,
    foreign key(idestado)references estado(idestado)
);