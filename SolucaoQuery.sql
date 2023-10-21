-- 1

SELECT
	nome, ano
FROM Filmes

-- 2

SELECT
	nome, ano
FROM Filmes
ORDER by ano

-- 3

Select nome, ano, duracao
FROM Filmes 
WHERE Nome = 'De Volta para o futuro'

-- 4

Select nome, ano, duracao
FROM Filmes 
WHERE ano = 1997

-- 5

Select nome, ano, duracao
FROM Filmes 
WHERE ano > 2000

-- 6

Select nome, ano, duracao
FROM Filmes
WHERE duracao > 100 and duracao < 150
ORDER BY duracao ASC

-- 7

Select ano, COUNT(*) quantidade
from filmes
group by ano
order by quantidade desc

-- 8

select *
from atores
where genero = 'M'

-- 9

select *
from atores
where genero = 'F'
order by PrimeiroNome

-- 10

select filmes.nome, generos.Genero
from filmesgenero
inner join filmes 
on filmes.id = filmesgenero.idfilme
inner join generos on filmesgenero.IdGenero = generos.id

-- 11

select filmes.nome, generos.Genero
from filmesgenero
inner join filmes 
on filmes.id = filmesgenero.idfilme
inner join generos on filmesgenero.IdGenero = generos.id
where generos.Genero = 'Mistério'

-- 12

select filmes.nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
from ElencoFilme
inner join Atores 
on Atores.Id = ElencoFilme.IdAtor
inner join filmes on filmes.Id = ElencoFilme.IdFilme