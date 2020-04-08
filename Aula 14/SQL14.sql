/*CREATE DATABASE BANCO;*/

/*USE BANCO;*/

/*CREATE TABLE ESTADO(
	IDESTADO INT NOT NULL PRIMARY KEY,
    SIGAL CHAR(2),
    NOME VARCHAR(45)
);*/

/*CREATE TABLE CIDADE(
	IDCIDADE INT NOT NULL PRIMARY KEY,
    CEP VARCHAR(8),
    IDESTADO INT NOT NULL,
    FOREIGN KEY(IDESTADO) REFERENCES ESTADO(IDESTADO)
);*/

/*CREATE TABLE BAIRRO(
	IDBAIRRO INT NOT NULL PRIMARY KEY,
    NOME VARCHAR(100)
);*/

/*CREATE TABLE LOGRADOURO(
	IDLOGRADOURO INT NOT NULL PRIMARY KEY,
    CEP VARCHAR(8),
    IDCIDADE INT NOT NULL,
    FOREIGN KEY(IDCIDADE) REFERENCES CIDADE(IDCIDADE),
    IDBAIRRO INT NOT NULL,
    FOREIGN KEY(IDBAIRRO) REFERENCES BAIRRO(IDBAIRRO)
);*/

/*CREATE TABLE PESSOA(
	IDPESSOA INT NOT NULL PRIMARY KEY,
    NOME VARCHAR(80),
	NUMERO VARCHAR(10),
    COMPLEMENTO VARCHAR(30),
    IDLOGRADOURO INT NOT NULL,
    FOREIGN KEY(IDLOGRADOURO) REFERENCES LOGRADOURO(IDLOGRADOURO)
);*/

/*CREATE TABLE TIPOCONTATO(
	IDTIPOCONTATO INT NOT NULL PRIMARY KEY,
    DESCRICAO VARCHAR(20)
);*/

/*CREATE TABLE CONTATO(
	IDCONTATO INT NOT NULL PRIMARY KEY,
    DESCRICAO VARCHAR(100),
    VALOR VARCHAR(200),
    IDPESSOA INT NOT NULL,
    FOREIGN KEY(IDPESSOA) REFERENCES PESSOA(IDPESSOA),
    IDTIPOCONTATO INT NOT NULL,
    FOREIGN KEY(IDTIPOCONTATO) REFERENCES TIPOCONTATO(IDTIPOCONTATO)
);*/