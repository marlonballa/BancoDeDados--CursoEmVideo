use cadastroMarlon;

/*Adiciona uma coluna na tabela do banco de dados*/
alter table pessoasMarlon add column profissao varchar(10);
/*Exclui uma coluna da tabela do banco de dados*/
alter table pessoasMarlon drop column profissao;
/*Adiciona uma coluna após outra em uma tabela do banco de dados*/
alter table pessoasMarlon add column profissao varchar(10) default '' after nome;
/*Adiciona como primeira coluna da tabela*/
alter table pessoasMarlon add column codigo int first; 
/*Faz a modificação de informações e constraints da tabela*/
alter table pessoasMarlon modify column profissao varchar(20) not null default 'Educador';
/*Faz a alteração do nome de uma tabela e elimina suas caracteristicas padrão, devemos colocá-las novamente se o intuito for manter*/
alter table pessoasMarlon change column profissao profession varchar(20);
alter table pessoasMarlon change column profession profession02 varchar(20) not null default 'Profissão';
/*renomeia o nome de uma tabela*/
alter table pessoasMarlon rename to pessoasPrepara; 

/*Criando nova tabela para testar ações do Alter Table*/
create table if not exists cursosPrepara (	
    nomeCurso varchar(40) not null unique,
    descricaoCurso text,
    cargaHorariaCurso int unsigned,
    totalAulasCurso int unsigned,
    anoLancamentoCurso year default '2022'
) default charset = utf8;

/*Adiona a coluna idCursos como a primeira da tabela*/
alter table cursosPrepara add column idCurso int first;
/*Adiciona uma chave primária para a tabela*/
alter table cursosPrepara add primary key(idCurso); 

/*Apaga uma tabela do banco de dados, se ela existir*/
drop table if exists nomeTabela; 

/*Descreve uma tabela*/
describe pessoasPrepara;
describe cursosPrepara;
/*Descreve o banco de dados*/
describe cadastroMarlon;
/*Retorna todos os dados dentro de uma tabela*/
select * from pessoasMarlon;