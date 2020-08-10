USE petshop;

/* DQL - Data Query Language */

-- Selecionar todos os dados da tabela
SELECT * FROM Veterinario;

-- Selcionar um dado espec�fico
SELECT * FROM DonoPet WHERE 
	IdDonoPet = 1003 OR -- ||
	IdDonoPet = 4;

-- Selecionar como uma BUSCA espec�ficas
-- % qualquer coisa
SELECT * FROM Veterinario WHERE 
	Nome LIKE '%a%';

-- Selecionar dados com algumas condi��es especiais
SELECT * FROM Clinica WHERE IdClinica > 5 AND IdClinica < 7;

-- Ordenar dados de forma crescente (padr�o)
SELECT * FROM Pet ORDER BY Nome;

-- Ordenar dados de forma crescente
SELECT * FROM Pet ORDER BY Nome ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Pet ORDER BY Ra�a DESC;

-- Selecionar dados ENTRE valores espec�ficos
SELECT * FROM Pet WHERE
	Nascimento BETWEEN '2' AND '4';