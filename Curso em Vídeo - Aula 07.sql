use cadastroMarlon;
select * from cursosPrepara;

/*Inserindo informações na tabela para treinar a manipulação de linhas*/
insert into cursosPrepara values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Progamação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

/*Atualizando informações de uma linha da tabela*/
update cursosPrepara set nomeCurso = "HTML5" where idCurso = '1';
update cursosPrepara set nomeCurso = "PHP", anoLancamentoCurso = '2015' where idCurso = '4';
update cursosPrepara set nomeCurso = "Java", cargaHorariaCurso = '40', anoLancamentoCurso = '2015' where idCurso = '5';

/*Apagando linhas da tabela*/
delete from cursosPrepara where idCurso = '8';
delete from cursosPrepara where anoLancamentoCurso = '2018' limit 2;

/*Removendo todas as linhas de uma tabela*/
truncate table cursosPrepara;

