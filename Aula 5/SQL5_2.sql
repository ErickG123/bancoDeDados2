CREATE DATABASE BANCO;

USE BANCO;

CREATE TABLE estado (
  idEstado int NOT NULL,
  estado varchar(30),
  sigla char(2),
  PRIMARY KEY (idEstado)
) ;


CREATE TABLE cidade (
  idCidade int NOT NULL,
  idEstado int,
  cidade varchar(40),
  PRIMARY KEY (idCidade),
Foreign key(idEstado) references estado(idEstado)
) ;


INSERT INTO estado (idEstado, estado, sigla) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amapá', 'AP'),
(4, 'Amazonas', 'AM'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'CE'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espírito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Mato Grosso', 'MT'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Minas Gerais', 'MG'),
(14, 'Pará', 'PA'),
(15, 'Paraiba', 'PB'),
(16, 'Paraná', 'PR'),
(17, 'Pernambuco', 'PE'),
(18, 'Piaui', 'PI'),
(19, 'Roraima', 'RR'),
(20, 'Rondônia', 'RO'),
(21, 'Rio de Janeiro', 'RJ'),
(22, 'Rio Grande do Norte', 'RN'),
(23, 'Rio Grande do Sul', 'RS'),
(24, 'Santa Catarina', 'SC'),
(25, 'São Paulo', 'SP'),
(26, 'Sergipe', 'SE'),
(27, 'Tocantins', 'TO');

INSERT INTO cidade (idCidade, idEstado, cidade) VALUES
(1, 1, 'Rio Branco'),
(2, 2, 'Maceió'),
(3, 3, 'Macapá'),
(4, 4, 'Manaus'),
(5, 5, 'Salvador'),
(6, 6, 'Fortaleza'),
(7, 7, 'Brasília'),
(8, 8, 'Vitória'),
(9, 9, 'Goiânia'),
(10, 10, 'São Luís'),
(11, 11, 'Cuiabá'),
(12, 12, 'Campo Grande'),
(13, 13, 'Belo Horizonte'),
(14, 14, 'Belém'),
(15, 15, 'João Pessoa'),
(16, 16, 'Curitiba'),
(17, 17, 'Recife'),
(18, 18, 'Teresina'),
(19, 19, 'Boa Vista'),
(20, 20, 'Porto Velho'),
(21, 21, 'Rio de Janeiro'),
(22, 22, 'Natal'),
(23, 23, 'Porto Alegre'),
(24, 24, 'Florianópolis'),
(25, 25, 'São Paulo'),
(26, 26, 'Aracaju'),
(27, 27, 'Palmas');

