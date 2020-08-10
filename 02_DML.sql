USE petshop;

/* DML - Data Manipulation Language */
--INSERT - Inserir dados

INSERT INTO DonoPet (Nome) VALUES ('Jairo');
INSERT INTO DonoPet (Nome) VALUES ('Fernanda');

INSERT INTO Veterinario (Nome) VALUES ('V.Joao');
INSERT INTO Veterinario (Nome) VALUES ('V.Iris');

INSERT INTO Clinica (Endereco) VALUES ('Rua aeiou');

INSERT INTO Pet (Nome, Raça, Nascimento, Porte) VALUES ('Bob','Poodle', 2005, 'Pequeno');
INSERT INTO Pet (Nome, Raça, Nascimento, Porte) VALUES ('Billy','Beagle', 2006, 'Médio');
INSERT INTO Pet (Nome, Raça, Nascimento, Porte) VALUES ('Thor','PastorAlemão', 2007, 'Grande');

-- Com FK's
INSERT INTO Atendimento (IdDonopet, IdVeterinario ,IdClinica, IdPet) VALUES (1003, 2, 6, 1007);

-- DQL de consulta simples
SELECT * FROM DonoPet;
SELECT * FROM Veterinario;
SELECT * FROM Clinica;
SELECT * FROM Pet;
SELECT * FROM Atendimento;

-- DELETE - Deletar dados
	DELETE FROM pet WHERE IdPet = 2;
