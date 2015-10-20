DROP DATABASE IF EXISTS DB_TCCGRUPO8;
CREATE DATABASE DB_TCCGRUPO8;

USE DB_TCCGRUPO8;

CREATE TABLE USUARIO (
	IDUSUARIO INT NOT NULL AUTO_INCREMENT PRIMARY KEY 
	, NOME VARCHAR(100) NOT NULL
	, APELIDO VARCHAR(25) NOT NULL
	, EMAIL VARCHAR(100) NOT NULL
	, SENHA VARCHAR(15) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE CONTATO (
	IDUSUARIO INT NOT NULL
	, IDCONTATO INT NOT NULL
	, DT_CADASTRO DATETIME DEFAULT NOW()
	, SITUACAO ENUM('PENDENTE', 'CONFIRMADO', 'CANCELADO', 'EXCLUIDO')
	, CONSTRAINT PK_CONTATO PRIMARY KEY (IDUSUARIO, IDCONTATO)
	, CONSTRAINT FK_CONTATO_USUARIO1 FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO (IDUSUARIO) ON DELETE CASCADE ON UPDATE CASCADE
	, CONSTRAINT FK_CONTATO_USUARIO2 FOREIGN KEY (IDCONTATO) REFERENCES USUARIO (IDUSUARIO) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE GRUPO (
	IDGRUPO INT NOT NULL
	, IDUSUARIO INT
	, DESCRICAO VARCHAR(100) NULL
	, CONSTRAINT PK_GRUPO PRIMARY KEY (IDGRUPO)
	, CONSTRAINT FK_GRUPO_USUARIO FOREIGN KEY (IDUSUARIO) REFERENCES mydb.USUARIO (IDUSUARIO) ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE INTEGRANTE (
	IDINTEGRANTE INT NOT NULL AUTO_INCREMENT
	, IDGRUPO INT UNSIGNED NOT NULL
	, IDUSUARIO INT UNSIGNED NOT NULL
	, DT_CADASTRO DATETIME NULL
	, DT_CONFIRMACAO DATETIME NULL
	, CONSTRAINT PK_INTEGRANTE PRIMARY KEY (IDINTEGRANTE)
	, UNIQUE INDEX IDX_INTEGRANTE (IDGRUPO ASC, IDUSUARIO ASC)
	, CONSTRAINT PK_INTEGRANTE_GRUPO FOREIGN KEY (IDGRUPO) REFERENCES GRUPO (IDGRUPO) ON DELETE CASCADE ON UPDATE CASCADE
	, CONSTRAINT PK_INTEGRANTE_USUARIO FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO (IDUSUARIO) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE MENSAGEM (
	IDMENSAGEM INT NOT NULL
	, IDUSUARIO INT NOT NULL
	, TEXTO TEXT NOT NULL
	, DT_ENVIO DATETIME NOT NULL DEFAULT NOW()
	, CONSTRAINT PK_MENSAGEM PRIMARY KEY (IDMENSAGEM)
	, CONSTRAINT FK_MENSAGEM_USUARIO FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO (IDUSUARIO) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE DESTINATARIO (
	IDDESTINATARIO INT NOT NULL
	, IDMENSAGEM INT UNSIGNED NOT NULL
	, IDUSUARIO INT UNSIGNED NULL
	, IDINTEGRANTE INT UNSIGNED NULL
	, DT_LEITURA DATETIME NULL
	, CONSTRAINT PK_DESTINATARIO PRIMARY KEY (idDESTINATARIO)
	, UNIQUE INDEX IDX_DESTINATARIO_UNIQUE (IDMENSAGEM ASC, IDINTEGRANTE ASC)
	, CONSTRAINT FK_DESTINATARIO_MENSAGEM FOREIGN KEY (IDMENSAGEM) REFERENCES MENSAGEM (IDMENSAGEM) ON DELETE CASCADE ON UPDATE CASCADE
	, CONSTRAINT FK_DESTINATARIO_INTEGRANTE FOREIGN KEY (IDINTEGRANTE) REFERENCES INTEGRANTE (IDINTEGRANTE) ON DELETE CASCADE ON UPDATE CASCADE
	, CONSTRAINT fk_DESTINATARIO_USUARIO FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO (IDUSUARIO) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB;

