use cadastroMarlon; 

insert into pessoasMarlon (idPessoas, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Ana Laura Matos', '1994-07-12', 'F', '58', '1.55', 'Argentina');

insert into pessoasMarlon values
(default, 'Ana Laura Matos - 002', '1994-07-12', 'F', '58', '1.55', 'Argentina');


select * from pessoasMarlon;