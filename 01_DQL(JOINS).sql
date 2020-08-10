/* DQL - JOINS*/
USE petshop;


SELECT 
	Pet.Raça,
	Veterinario.Nome
FROM Atendimento
	INNER JOIN Veterinario ON Atendimento.IdVeterinario = Veterinario.IdVeterinario
	INNER JOIN Pet ON Atendimento.IdPet = Pet.IdPet;

SELECT 
	Pet.Nome,
	Clinica.Endereco
FROM Atendimento

	INNER JOIN Clinica ON Atendimento.IdClinica = Clinica.IdClinica
	INNER JOIN Pet ON Atendimento.IdPet = Pet.IdPet

