
 use avaliacao_22b;
 INSERT INTO Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
 ("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "Harper Colins", 768, "Inglês");
 
 UPDATE Livros
 SET disponivel = FALSE
 WHERE ano_publicacao < 2000;
 
UPDATE Livros
SET editora = "Plume Books"
WHERE id = 3;
 
DELETE from Livros WHERE idioma like '%Francês%' and ano_publicacao < 1970; 

SELECT titulo, quantidade_paginas
FROM Livros
WHERE quantidade_paginas > 500;

SELECT titulo 
FROM Livros
LIMIT 5; 

SELECT titulo, ano_publicacao
FROM Livros
WHERE ano_publicao = (SELECT AVG(ano_publicacao) FROM Livros);

SELECT titulo, ano_publicacao
FROM Livros
ORDER BY ano_publicacao DESC; 

SELECT titulo, ano_publicacao
FROM Livros
WHERE titulo like 'A%'

UNION 

SELECT titulo, ano_publicacao
FROM Livros
WHERE ano_publicacao between 1980 and 2000;