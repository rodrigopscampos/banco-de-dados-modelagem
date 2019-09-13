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


-- As turmas do curso de “MySql - Fundamentos” 
-- (id, dt_inicio, dt_fim, nm_professor) ordenadas por data de início crescente

select * from turmas;


select
	turmas.id,
    turmas.dt_inicio,
    turmas.dt_fim,
    professores.nome as nm_professor,
    cursos.nome as nm_curso
from
	turmas
    
    left join professores
    on turmas.professor_id = professores.id
    
    inner join cursos
    on turmas.cursos_id = cursos.id;
    
    
    
-- Os cursos que estão em andamento (id_curso, id_turma, nm_curso, dt_inicio, dt_fim)
select
	cursos.id as id_curso,
    turmas.id as id_turma,
    cursos.nome as nm_curso,
    turmas.dt_inicio,
    turmas.dt_fim
from
	turmas
    
    inner join cursos
    on turmas.cursos_id = cursos.id
where
	dt_inicio <= now() and dt_fim >= now();


-- Os professores que não estão atuando em nenhum curso (id, nome, email)
select * from professores where id not in (
select professor_id from turmas where dt_inicio <= now() and dt_fim >= now()
);

select
	professores.*
from
	professores
    
    left join turmas
    on professores.id = turmas.professor_id
    and turmas.dt_inicio <= now()
    and turmas.dt_fim >= now()
where
	turmas.id is null;
    
-- Os professores que estarão sem turma no próximo mês (id_prof, nome, email)
select * from professores where id not in (
select professor_id from turmas 
	where dt_fim > last_day(now())  
	and   dt_inicio <= last_day(now() + interval 1 month)
);


select
	professores.*
from
	professores
    
    left join turmas
    on professores.id = turmas.professor_id
    and turmas.dt_fim > last_day(now())  
	and turmas.dt_inicio <= last_day(now() + interval 1 month)
where
	turmas.id is null;


-- Os professores que estarão com turma no próximo 
-- mês (id_prof, nm_prof, email_prof, dt_inicio, dt_fim)
select * from professores where id in (
select professor_id from turmas 
	where dt_fim > last_day(now())  
	and   dt_inicio <= last_day(now() + interval 1 month)
);


select
	professores.*
from
	professores
    
    left join turmas
    on professores.id = turmas.professor_id
    and turmas.dt_fim > last_day(now())  
	and turmas.dt_inicio <= last_day(now() + interval 1 month)
where
	turmas.id is not null;
    
    
-- O curso com maior quantidade de alunos (nm_curso, qtd_alunos)
select
	cursos.nome,
    curso_qt_aluno.qtd_alunos
from
	cursos
    inner join 
(
	select
		cursos_id,
		count(*) qtd_alunos
	from
	(
		select
			turmas.cursos_id
		from 
			aluno_turma
			
			join turmas
			on aluno_turma.turma_id = turmas.id
	) aluno_curso
	group by cursos_id
) curso_qt_aluno
on cursos.id = curso_qt_aluno.cursos_id
order by curso_qt_aluno.qtd_alunos desc

