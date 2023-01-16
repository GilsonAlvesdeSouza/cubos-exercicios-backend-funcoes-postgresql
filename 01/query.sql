select * from farmacia;

-- 01
select count(medicamento) as quantidade_Medicamentos from farmacia;
 
 --02
select min(idade) as menor_idade from usuarios;

--03
select max(idade) as maior_idade from usuarios;

--04
select round(avg(idade), 2) as media_idade_maior_que_18 from usuarios where idade >= 18; 

--05
select categoria, count(estoque) as quantidade_estoque from farmacia  where categoria = 'blue' or categoria = 'black' GROUP by categoria;

--06
select categoria, sum(estoque) as soma_estoque from farmacia where categoria notnull group by categoria;

--07
select sum(estoque) as quantidade_estoque_sem_categoria from farmacia where categoria isnull; 

--08
select * from farmacia where categoria isnull;

--09
select concat(medicamento, ' (', categoria, ')' ) as nome_categoria from farmacia where categoria notnull; 

--10
select concat(id, ' - ', medicamento, ' (', coalesce(categoria, 'sem categoria') , ')' ) as nome_categoria from farmacia; 

--11
select nome, idade, cadastro from usuarios  where cast(cadastro as timestamp) >= '2020-01-01 00:00:00' and cast(cadastro as timestamp) <= '2020-12-31 23:59:59'; 

--12
select nome, idade, email, age(cast(cadastro as timestamp)) from usuarios where cast(cadastro as timestamp) < now() and idade < 18;

--13
select nome, idade, email, age(cast(cadastro as date)) from usuarios where cast(cadastro as timestamp) < now() and idade >= 60;

--14
select categoria, estoque from farmacia where categoria notnull;

--15
select idade, count(idade) from usuarios where idade >= 18 group by idade;

--16
select categoria, sum(estoque) from farmacia group by categoria;
