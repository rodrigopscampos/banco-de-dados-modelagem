-- Os cursos de HTML, JAVA E C# Ordenados por Nome Decrescente

select nome from cursos
where
	(
	nome like '%html%'
    or nome like '%java%'
    or nome like '%C#%'
    )
    and nome not like '%javascript %'

order by nome desc
;


-- Os cursos onde há turmas atualmente
select * from cursos where id in (
	select cursos_id from turmas where dt_inicio <= now() and dt_fim >= now()
)
;

-- Os cursos onde há turmas no mês corrente
select * from cursos where id in (
	select cursos_id from turmas 
    where 
		dt_fim >= last_day(now() - interval 1 month) + interval 1 day 
		and dt_inicio <= last_day(now())
);

-- O curso da turma mais antiga
select 
	id,
    nome
from 
	cursos 
where 
	id = (select cursos_id from turmas order by dt_inicio asc limit 1);


-- Os alunos que passaram pela escola no mês
select * from alunos where id in (
	select aluno_id from aluno_turma where turma_id in (
		select id 
        from turmas 
        where 
			dt_inicio <= last_day(now())
            and dt_fim >= last_day(now() - interval 1 month) + interval 1 day
	)
);


-- A máxima, mínima e média de alunos por turma.
select 
	min(quantidade_alunos), 
    avg(quantidade_alunos), 
    max(quantidade_alunos)
from (

select 
	turma_id turma,
    count(aluno_id) quantidade_alunos
from 
	aluno_turma 
group by 
	turma_id
    ) alunos_por_turma;


-- -----------------------------

-- O professor que mais apresentou cursos forma 1
select * from
(
select 
	professor_id, 
    count(1) qtd
from turmas 
group by
	professor_id
) qtd_turmas_por_professor
order by qtd desc
limit 10;
    
-- O professor que mais apresentou cursos forma 2
select 
	professor_id, 
    count(1) qtd
from turmas 
group by
	professor_id
order by qtd desc
limit 1;
    
    
-- A quantidade máxima, mínima e média de cursos que um aluno faz

select * from aluno_turma;

select 
	max(qtd_turmas),
    min(qtd_turmas),
    avg(qtd_turmas)
from
(
select 
	aluno_id,
    count(turma_id) qtd_turmas
from 
	aluno_turma
group by
	aluno_id
) qtd_turmas_por_aluno;


-- A quantidade média de turmas por curso
select * from turmas where cursos_id = 5;

select 
	max(qtd), 
    min(qtd), 
    avg(qtd) 
from
(
	select 
		cursos_id,
		count(1) qtd
	from 
		turmas
	group by
		cursos_id
) qtd_turmas_por_curso;


-- O nome mais comum entre os alunos
select * from alunos where nome = 'Stevie Frizzell';
insert into alunos (nome, documento) values ('Jackeline da Silva', '')
select * from alunos where nome like 'Jackeline%'
select 
	nome,
    count(1) qtd
from 
	alunos
group by
	nome
order by qtd desc
limit 1;

-- 

SELECT SUBSTRING_INDEX("Stevie Frizzell", " ", 1);

select
	primeiro_nome,
    count(1) qtd
from
(
select 
	*,
    SUBSTRING_INDEX(nome, " ", 1) primeiro_nome
from 
	alunos
) alunos_com_primeiro_nome

group by
	primeiro_nome
order by qtd desc