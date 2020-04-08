CREATE TABLE FUNCIONARIO
(
	IDFUNCIONARIO INT NOT NULL PRIMARY KEY,
	NOME VARCHAR(50),
    ENDER VARCHAR(50),
    RG VARCHAR(20),
    CPF VARCHAR(20),
    EMAIL VARCHAR(30),
    FONE VARCHAR(20),
    IDCIDADE INT,
    FOREIGN KEY(IDCIDADE) REFERENCES CIDADE(IDCIDADE),
    IDCARGO INT,
    FOREIGN KEY(IDCARGO) REFERENCES CARGO(IDCARGO)
);