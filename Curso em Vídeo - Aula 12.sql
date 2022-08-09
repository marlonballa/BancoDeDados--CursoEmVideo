use cadastroMarlon;
/*Retorna todos os registro de uma tabela, ordenados pelo ID*/
select * from cursosprepara;
select * from pessoasprepara;

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

/*SELECT PARTE II*/
/*Retorna todos os cursos que possuem nome começando com a letra P, independente de ser maiúsculo ou minúsculo -> parecidos ao que foi informado*/
select nomeCurso from cursosprepara WHERE nomeCurso like "p%";
/*Retorna todos os cursos que contenham a letra P em seu nome, independente de ser maiúsculo ou minúsculo e independente da posição -> parecidos ao que foi informado*/
select nomeCurso from cursosprepara WHERE nomeCurso like "%p%";
/*O operador NOT associado ao operador LIKE retorna os valores que NÃO COMBINAM com a condição inserida*/
/*Retorna todos os cursos que NÃO contenham a letra P em seu nome, independente de ser maiúsculo ou minúsculo e independente da posição -> parecidos ao que foi informado*/
select nomeCurso from cursosprepara WHERE nomeCurso not like "%p%";
/*Retorna todos os cursos que começem e terminem com os valores indicados*/
select nomeCurso from cursosprepara where nomeCurso like 'PH%P';
/*Retorna todos os cursos que começem e terminem com os valores indicados e tenha algo após o último valor*/
select nomeCurso from cursosprepara where nomeCurso like 'PH%P_';

/*Retorna uma lista, sem repetição, da informação que solicitamos*/
select distinct anoLancamentoCurso from cursosprepara order by anoLancamentoCurso ASC;
/*Neste caso, podemos ver todos os anos que aconteceram lançamentos de cursos*/

/*Podemos realizar a contagem de registros utilizando o COUNT*/
/*Retorna a quantidade de registros que existem na tabela*/
select count(*) from cursosprepara;
/*Retorna a quantidade de registros que existem na tabela e possuem carga maior do que 40*/
select count(*) from cursosprepara where cargaHorariaCurso > 40;
/*Para obtermos o valor máximo dentro de uma coluna, basta utilizar o MAX*/
/*Retorna qual a carga horária máxima dos cursos lançados em 2016*/
select max(cargaHorariaCurso) from cursosprepara where anoLancamentoCurso = '2016';
/*Neste caso, nos retornará a informação "60" que é a maior carga horária, entre os cursos lançados em 2016*/

/*Para obtermos a soma dos valores de uma coluna basta utilizar a função de agregação SUM*/
/*Retorna a soma da carga horária dos cursos lançados em 216*/
select sum(cargaHorariaCurso) from cursosprepara where anoLancamentoCurso = '2016';

/*Para obtermos a MÉDIA dos valores de uma coluna basta utilizar a função de agregação AVG (avarage)*/
/*Retorna a MÉDIA da carga horária dos cursos lançados em 2016*/
select avg(cargaHorariaCurso) from cursosprepara where anoLancamentoCurso = '2016';

/*EXERCÍCIOS*/
/* 01 - lISTA COM O NOME DE TODAS AS AULAS */
select * from pessoasprepara where sexo = 'F';
/* 02 - Lista com todos os dados dos nascidos entre 01/01/2000 e 31/12/2015*/
select * from pessoasprepara where nascimento between '2000-01-01' and '2015-12-31' order by nascimento desc;
/* 03 - LISTA DE TODOS OS HOMENS QUE TRABALHAM COMO PROGRAMADOR */
select * from pessoasprepara where sexo = 'M' and profession02 = 'Programador';
/* 04 -  UMA LISTA COM OS DADOS DE TODAS AS MULHERES QUE NASCERAM NO BRASIL E QUE TEM SEU NOME INICIADO COM A LETRA J*/
select * from pessoasprepara where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';
/* 05 -  UMA LISTA COM O NOME E NACIONALIDADE DE TODOS OS HOMENS QUE TÊM SILVA NO NOME, NÃO NASCERAM NO BRASIL E PESAM MENOS DE 100KG*/
select nome, nacionalidade from pessoasprepara where nome like "%Silva%" and nacionalidade not like 'Brasil' and peso < 100;
/* 06 - QUAL É A MAIOR ALTURA ENTRE OS ALUNOS DO SEXO MASCULINO QUE MORAM NO BRASIL */
select max(altura) from pessoasprepara where sexo = 'M' and nacionalidade like 'brasil';
/* 07 - QUAL É A MÉDIA DE PESO DOS ALUNOS CADASTRADOS*/
select avg(peso) from pessoasprepara;
/* 08 - QUAL É O MENOR PESO ENTRE AS LUNAS QUE NASCERAM FORA DO BRASIL E ENTRE 01/01/1990 E 31/12/2000?*/
select min(peso) from pessoasprepara where nacionalidade not like 'Brasil' and nascimento between '2000-01-01' and '2015-12-31';
/* 09 -  QUANTAS ALUNAS POSSUEM MAIS DE 1.90M?*/
select count(nome) from pessoasprepara where sexo = 'F' and altura > '1.90';

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