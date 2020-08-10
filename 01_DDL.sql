/* DDL - Data Definition Language */
-- Criar o banco
CREATE DATABASE petshop;
GO
-- Usar efetivamente o banco
USE petshop;
GO
-- Apagamos uma base de dados
-- DROP DATABASE boletim;

/* 
	Criamos a tabela dos Donos dos Pets
	IDENTITY - Gera os ids automaticamente, incrementando-os
*/
CREATE TABLE DonoPet (
	IdDonoPet INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	
);
GO

/* Criamos a tabela de Veterinários*/
CREATE TABLE Veterinario (
	IdVeterinario INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50)
);
GO

/* Criamos a tabela da Clínica*/
CREATE TABLE Clinica (
	IdClinica INT IDENTITY PRIMARY KEY NOT NULL,
	Endereco VARCHAR,
);
GO

/* Criamos a tabela dos Pets*/
CREATE TABLE Pet (
	IdPet INT IDENTITY PRIMARY KEY NOT NULL,
	Raça VARCHAR,
	Nome VARCHAR,
	Nascimento INT,
	Porte VARCHAR
);

/* Criamos a tabela do Atendimento*/
CREATE TABLE Atendimento (
	IdAtendimento INT IDENTITY PRIMARY KEY NOT NULL,
	
	-- Colocamos as chaves estrangeiras (FK)
	IdDonoPet INT FOREIGN KEY REFERENCES DonoPet(IdDonoPet),
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario),
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet)
);


-- Apagamos uma tabela caso necessário
-- DROP TABLE DonoPet;
-- DROP TABLE Veterinario;
-- DROP TABLE Clinica;
-- DROP TABLE Pet;

-- Alterar a estrutura da tabela Atendimento, incluindo uma coluna nova
ALTER TABLE Atendimento ADD DataAtendimento DATETIME;

--Alteramos o tamanho do VARCHAR 
ALTER TABLE Clinica ALTER COLUMN Endereco VARCHAR (100)

ALTER TABLE Pet ALTER COLUMN Raça VARCHAR (100)
ALTER TABLE Pet ALTER COLUMN Nome VARCHAR (100)
ALTER TABLE Pet ALTER COLUMN Porte VARCHAR (100)