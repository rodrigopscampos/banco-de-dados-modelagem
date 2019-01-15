-- As turmas de mais de cinco anos atrás. (nm_curso, dt_inicio, dt_fim, qtd_alunos)

select 
	c.nome,
    t.dt_inicio,
    t.dt_fim,
    count(at.turma_id) qtd_alunos
from 
	turmas t
     
    inner join cursos c
    on t.cursos_id = c.id
    
    left join aluno_turma at
    on t.id = at.turma_id

where 
	t.dt_fim < now() - interval 5 year
group by
	t.id;
	
	
-- As turmas que iniciarão no próximo mês (nm_curso, dt_inicio, dt_fim, qtd_alunos, dt_inicio_prox_mes, dt_fim_prof_mes)

select 
	nome,
    dt_inicio,
    dt_fim,
    count(*) qtd_alunos,
    dt_inicio_prox_mes,
    dt_fim_prof_mes
from (
select 
	c.nome,
    t.dt_inicio,
    t.dt_fim,
    date_add( last_day(now()), interval 1 day) dt_inicio_prox_mes,
    date_add( last_day(now()), interval 1 month) dt_fim_prof_mes
from 
	turmas t
     
    inner join cursos c
    on t.cursos_id = c.id
    
    left join aluno_turma at
    on t.id = at.turma_id
) a
where 
		dt_inicio >= dt_inicio_prox_mes
    and dt_inicio <= dt_fim_prof_mes
group by
	nome,
    dt_inicio,
    dt_fim,
    dt_inicio_prox_mes,
    dt_fim_prof_mes