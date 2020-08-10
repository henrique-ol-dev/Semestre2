/* DDL - Data Definition Language */
-- Criar o banco
CREATE DATABASE optus;
GO
-- Usar efetivamente o banco
USE optus;
GO
-- Apagamos uma base de dados
-- DROP DATABASE optus;

/* 
	Criamos a tabela Artista
	IDENTITY - Gera os ids automaticamente, incrementando-os
*/

/* Criamos a tabela Estilo */
CREATE TABLE Estilo(
	IdEstilo INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Artista (
	IdArtista INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	
	-- Colocamos as chaves estrangeiras (FK)
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);
GO


/* Criamos a tabela Album */
CREATE TABLE Album(
	IdAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50),
	DataLancamento DATE,
	Ativo BINARY,
	QtdMinutos DECIMAL,

	-- Colocamos as chaves estrangeiras (FK)
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista)
);
GO


/* Criamos a tabela EstiloAlbum */
CREATE TABLE EstiloAlbum (
	IdEstiloAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	
	-- Colocamos as chaves estrangeiras (FK)
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
);
GO


CREATE TABLE Usuarios(
	IdUsuarios INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Permissão VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
);
-- Apagamos uma tabela caso necessário
-- DROP TABLE Artista;
-- DROP TABLE Album;
-- DROP TABLE EstiloAlbum;
-- DROP TABLE Usuarios;

-- Alterar a estrutura da tabela Album, incluindo uma coluna nova
ALTER TABLE Album ADD DtLancamento DATETIME;

