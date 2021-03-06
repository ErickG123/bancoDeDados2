/*CREATE DATABASE BANCO;*/

/*USE BANCO*/

/*CREATE TABLE ALUNO(
	RA INT NOT NULL PRIMARY KEY,
    NOME VARCHAR(100),
    CONTATO VARCHAR(30),
    CIDADE VARCHAR(30),
    BAIRRO VARCHAR(30)
);*/

/*CREATE TABLE DISCIPLINA(
	IDDISC INT NOT NULL PRIMARY KEY,
    NOME VARCHAR(30)
);*/

/*CREATE TABLE NOTA(
	RA INT NOT NULL,
    IDDISC INT NOT NULL,
    PRIMARY KEY(RA, IDDISC),
    NOTA1 DECIMAL(2,1) DEFAULT 0,
    NOTA2 DECIMAL(2,1) DEFAULT 0,
    NOTA3 DECIMAL(2,1) DEFAULT 0,
    FREQ DECIMAL(3,2) DEFAULT 0,
    FOREIGN KEY(RA) REFERENCES ALUNO (RA),
    FOREIGN KEY(IDDISC) REFERENCES DISCIPLINA(IDDISC)
);*/

/*CREATE TABLE MEDIA(
	RA INT NOT NULL,
    IDDISC INT NOT NULL,
    PRIMARY KEY(RA, IDDISC),
    FOREIGN KEY(RA, IDDISC) REFERENCES NOTA(RA, IDDISC),
    MEDIA_FINAL DECIMAL(2,1) DEFAULT 0
);*/

/*INSERT INTO ALUNO VALUES(1, 'JOÃO', 'RUA D.PEDRO', 'JAU', 'CENTRO');*/
/*INSERT INTO ALUNO VALUES(2, 'MARIA', 'RUA C.LADO', 'BAURU', 'COHAB');*/
/*INSERT INTO ALUNO VALUES(3, 'CARLOS', 'RUA P.MARIO', 'BARRA BONITA', 'CENTRO');*/

/*INSERT INTO DISCIPLINA VALUES(1, 'BANCO DE DADOS II');*/
/*INSERT INTO DISCIPLINA VALUES(2, 'DESENVOLVIMENTO MOBILE');*/
/*INSERT INTO DISCIPLINA VALUES(3, 'DESENVOLVIMENTO WEB');*/

/*INSERT INTO NOTA(RA, IDDISC) VALUES(1,1);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(1,2);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(1,3);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(2,1);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(2,2);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(2,3);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(3,1);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(3,2);*/
/*INSERT INTO NOTA(RA, IDDISC) VALUES(3,3);*/

/*INSERT INTO MEDIA(RA, IDDISC) VALUES(1,1);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(1,2);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(1,3);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(2,1);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(2,2);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(2,3);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(3,1);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(3,2);*/
/*INSERT INTO MEDIA(RA, IDDISC) VALUES(3,3);*/

/*DELIMITER $
	CREATE TRIGGER TGR_MEDIA AFTER UPDATE
		ON NOTA
			FOR EACH ROW
            BEGIN
				UPDATE MEDIA
                SET MEDIA_FINAL = (NEW.NOTA1 + NEW.NOTA2 + NEW.NOTA3)/3
                WHERE RA = NEW.RA
					AND IDDISC = NEW.IDDISC;
			END$*/
            
/*UPDATE NOTA
	SET NOTA1 = 8,
		NOTA2 = 9,
        NOTA3 = 9
WHERE RA = 1
	AND IDDISC = 1;*/
    
/*UPDATE NOTA 
	SET NOTA1 = 7,
		NOTA2 = 6,
        NOTA3 = 9
WHERE RA = 1
	AND IDDISC = 2;*/
    
/*UPDATE NOTA 
	SET NOTA1 = 8,
		NOTA2 = 5,
        NOTA3 = 3
WHERE RA = 1
	AND IDDISC = 3;*/