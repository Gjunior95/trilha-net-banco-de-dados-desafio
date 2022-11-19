-- 1 Busca nome e ano filmes
select f.Nome,f.Ano from Filmes f ;

-- 2 Busca nome e ano filmes ordem crescento dos anos
select f.Nome,f.Ano from Filmes f order by f.Ano;

-- 3 Buscar nome, ano e duração filtrando nome do filme
select f.Nome,f.Ano ,f.Duracao from Filmes f where f.Nome = 'De Volta para o Futuro' ;

--4 Buscar nome, ano e duração filtrando ano lançamento
select f.Nome,f.Ano ,f.Duracao from Filmes f where f.ano = 1997;

--5 Buscar nome, ano e duração filtrando ano lançamento apos 2000
select f.Nome,f.Ano ,f.Duracao from Filmes f where f.ano > 2000;

--6 Buscar nome, ano e duração filtrando por duração entre 101 e 149  com ordem crescente
select f.Nome,f.Ano ,f.Duracao from Filmes f where f.Duracao between 101 and 149 order by f.Duracao;

--7 Buscar ano e quantidade de filmes lançados por ano , com ordenado pelo Quantidade em ordem decrescente
select f.Ano , count(1) Quantidade from Filmes f group by f.Ano order by Quantidade desc;

--8 Buscar Primero nome e ultimo nome de atores filtrando genero Masculino (M)
select a.PrimeiroNome,a.UltimoNome from Atores a where upper(a.Genero) = 'M';

--9 Buscar Primero nome e ultimo nome de atores filtrando genero Feminino (F) ordenado pelo primeiro nome
select a.PrimeiroNome,a.UltimoNome from Atores a where upper(a.Genero) = 'F' order by a.PrimeiroNome;

-- 10 Buscar o nome do FIlme e o genero ligando da tabela filme , filmesgenero e generos com inner join
select f.Nome,g.Genero
from Filmes f 
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on g.Id = fg.IdGenero;

-- 11 Buscar o nome do FIlme e o genero ligando da tabela filme , filmesgenero e generos com inner join filtrando o genero
select f.Nome,g.Genero
from Filmes f 
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on g.Id = fg.IdGenero and g.Genero = 'Mistério';

-- 12 Buscar nome do filme, autores com primeiro e ultimo nome e papel
select f.Nome , a.PrimeiroNome , a.UltimoNome , e.Papel
from Filmes f
inner join ElencoFilme e on e.IdFilme = f.Id
inner join Atores a on a.Id = e.IdAtor;