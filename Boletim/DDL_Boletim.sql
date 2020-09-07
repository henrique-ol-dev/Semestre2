--DDL - linguagem de definição de dados * /
--Criar o banco
CREATE  DATABASE boletim;
GO

--Usar real o banco
USE boletim;
GO

--Apagamos uma base de dados
--Boletim DROP DATABASE;

--Criamos a tabela Aluno 
--IDENTIDADE - Gera os ids automaticamente, incrementando-os

CREATE  TABLE Aluno (
	IdAluno INT  PRIMARY  KEY IDENTITY NOT  NULL ,
	Nome VARCHAR ( 100 ) NOT NULL,
	Ra VARCHAR ( 20 ),
	Idade INT
);
GO

--Criamos a tabela Materia * /
CREATE  TABLE Materia (
	IdMateria INT IDENTITY PRIMARY  KEY  NOT  NULL ,
	Titulo VARCHAR ( 50 )
);
GO


CREATE  TABLE Trabalho (
	IdTrabalho INT IDENTITY PRIMARY  KEY  NOT  NULL ,
	Nota DECIMAL ( 10 , 2 ),

--Colocamos como chaves estrangeiras (FK)
	IdMateria INT  FOREIGN KEY  REFERENCES Materia (IdMateria),
	IdAluno  INT  FOREIGN KEY  REFERENCES  Aluno (IdAluno) 
);
GO

--Apagamos uma tabela caso necess rio
--DROP TABLE Aluno;
--Matéria DROP TABLE;
--DROP TABLE Trabalho;

--Alterar uma estrutura da tabela Trabalho, incluindo uma coluna nova
ALTER  TABLE Trabalho ADD DataEntrega DATETIME ;

--Alteramos e eclu mos uma coluna de teste
 ALTER TABLE Trabalho ADD Teste INT;
 ALTER TABLE Trabalho DROP COLUMN Teste;