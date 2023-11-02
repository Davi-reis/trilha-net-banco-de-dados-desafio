-- 1 ----------------------
select Nome, Ano from Filmes

--- 2 ----------------------
select * from Filmes order by Ano

---- 3 ---------------------

select nome, ano, duracao from Filmes 
	where Nome = 'De volta para o futuro'

---- 4 --------------------------------------------
select * from Filmes 
	where ano = 1997

---- 5 --------------------------------------
select * from Filmes 
	where Ano > 2000

----6 ------------------------

select * from Filmes 
	where Duracao > 100 and Duracao < 150 Order by Duracao

---------------7 --------------------------
select Ano, COUNT(*) Quantidade from Filmes 
	Group by Ano Order by Quantidade desc

---------------------- 8  buscar por genero  M --------------------------------------------------
select * from Atores 
	where Genero = 'M'

-------------9 -buscar por genero feminino ----------------------------------
select * from Atores 
	where Genero = 'F' order by PrimeiroNome

-----------10 ------------------------------------

select f.Nome, g.Genero from Filmes as f 
	Inner join Generos as g on f.Id = g.Id

---------------- 11 -------------------------------------------
select f.Nome, g.Genero from Filmes as f 
	inner join FilmesGenero as fg on f.Id = fg.IdFilme
	inner join Generos as g on g.Id = fg.IdGenero
	where fg.IdGenero = 10

------------------ 12 --------------------------------------------------

select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes as f 
	inner join Atores as a on f.id = a.Id
	inner join ElencoFilme as ef on ef.Id = a.Id
