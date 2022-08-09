use cadastroMarlon;
/*Retorna todos os registro de uma tabela, ordenados pelo ID*/
select * from cursosprepara;

/*Retorna todos os registros de uma tabela, ordenados de forma ascendente pela coluna escolhida*/
select * from cursosprepara order by nomeCurso;
/*Retorna todos os registros de uma tabela, ordenados de forma descendente pela coluna escolhida*/
select * from cursosprepara order by nomeCurso desc;

/*Retorna todos os registros de uma tabela, mas apenas as colunas escolhidas*/
select anoLancamentoCurso, nomeCurso, cargaHorariaCurso from cursosprepara;

/*Retorna todos os registros de uma tabela, para as colunas escolhidas, além de ordernar de forma ascendente pelo "ano de lançamento" e descendente pelo "nome do curso"*/
select anoLancamentoCurso, nomeCurso, cargaHorariaCurso from cursosprepara order by anoLancamentoCurso, nomeCurso desc;

/*Filtros: WHERE, permite a obtenção de resultados mais acertivos, em buscas numa tabela*/
/*Retorna todos os registros da tabela "cursosprepara* que possuem "anoLancamentoCurso" que atenda ao definido e ordena de forma descendente pelo "nomeCurso"*/
select nomeCurso, anoLancamentoCurso from cursosPrepara where anoLancamentoCurso = '2016' order by nomeCurso desc;
/*Podemos utilizar também condições dentro de um WHERE para retornar valores menores, entre, iguais ou maiores*/
/*Neste caso vamos obter como retorno os cursos lançados em 2015 ou antes e serão ordenados por nome e ano, de forma ascendente*/
select anoLancamentoCurso, nomeCurso from cursosPrepara where anoLancamentoCurso <= '2015' order by anoLancamentoCurso, nomeCurso;
/*Retorna todos os cursos que possuirem ano de lançamento no espaço entre os anos definidos*/
select * from cursosprepara where anoLancamentoCurso between 2014 and 2017 order by anoLancamentoCurso desc, nomeCurso;
/*Retorna todos os cursos que possuirem ano de lançamento iguais aos definidos*/
select * from cursosprepara where anoLancamentoCurso in (2014, 2020) order by anoLancamentoCurso, nomeCurso desc;
/*Retorna todos os cursos que atenderem as condições associadas abaixo*/
select nomeCurso, cargaHorariaCurso, anoLancamentoCurso from cursosprepara where cargaHorariaCurso > 35 AND anoLancamentoCurso in (2014, 2018, 2020) order by anoLancamentoCurso, nomeCurso desc;


/* CLASSIFICAÇÃO DOS COMANDOS SQL:
	- DDL: DATA DEFINATION LANGUAGE
		CREATE DATABASE
		CREATE TABLE
		ALTER TABLE
		DROP TABLE
        
	- DML: DATA MANIPULATION LANGUAGE
		INSERT INTO
        UPDATE
		DELETE
        TRUNCATE
        
	- DATA QUERY LANGUAGE
		SELECT