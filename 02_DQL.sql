USE petshop;

/* DQL - Data Query Language */

-- Selecionar todos os dados da tabela
SELECT * FROM Veterinario;

-- Selcionar um dado específico
SELECT * FROM DonoPet WHERE 
	IdDonoPet = 1003 OR -- ||
	IdDonoPet = 4;

-- Selecionar como uma BUSCA específicas
-- % qualquer coisa
SELECT * FROM Veterinario WHERE 
	Nome LIKE '%a%';

-- Selecionar dados com algumas condições especiais
SELECT * FROM Clinica WHERE IdClinica > 5 AND IdClinica < 7;

-- Ordenar dados de forma crescente (padrão)
SELECT * FROM Pet ORDER BY Nome;

-- Ordenar dados de forma crescente
SELECT * FROM Pet ORDER BY Nome ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Pet ORDER BY Raça DESC;

-- Selecionar dados ENTRE valores específicos
SELECT * FROM Pet WHERE
	Nascimento BETWEEN '2' AND '4';