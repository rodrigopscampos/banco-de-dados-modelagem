-- Turma e a quantidade de alunos (turma_id, qt_alunos)

select 
	turma_id, 
    count(turma_id) qt_alunos
from 
	aluno_turma
group by
	turma_id
order by
		count(turma_id) desc;
		
		
-- A turma com a maior quantidade de alunos atualmente
select
	t.id,
    t.dt_inicio,
    t.dt_fim,
    count(at.aluno_id) qtd_alunos
from
	turmas t
    
    left join aluno_turma at
    on t.id = at.turma_id
    
where
		dt_inicio <= now()
        and dt_fim >= now()
group by
	t.id;    		
	
	
-- A turma mais antiga da escola (id_turma, nm_curso, dt_inicio, qtd_alunos)
select 
	t.id,
    c.nome,
    t.dt_inicio,
    count(*) qtd_alunos
from 
	turmas t
    
    left join cursos c
    on t.cursos_id = c.id
    
    left join aluno_turma at
    on t.id = at.turma_id

group by
	t.id
order by 
	dt_inicio asc limit 1;
	
	
	
-- O professor que mais apresentou cursos (id_prof, nm_prof, nm_curso, qtd_turmas)
select 
	p.id,
    p.nome,
    c.nome,
    count(t.id) qtd_turmas
from 
	professores p
    
    inner join turmas t
    on t.professor_id = p.id
    
    inner join cursos c
    on t.cursos_id = c.id
   
group by
	p.id,
    c.id
order by
	qtd_turmas desc,
    c.nome
limit 1    
;


-- A máxima, mínima e a média da quantidade de alunos nos cursos (id_curso, nm_curso, max_qtd_alunos, min_qtd_alunos, avg_qtd_alunos)

select 
	alunos_por_turma.curso_id,
    c.nome,
    max(qtd_alunos) max_qtd_alunos,
    min(qtd_alunos) min_qtd_alunos,
    round(avg(qtd_alunos)) avg_qtd_alunos
from
(
    
select 
	t.cursos_id curso_id,
    t.id turma_id,
    count(*) qtd_alunos
from 
	turmas t
    
    inner join aluno_turma at
    on t.id = at.turma_id
group by 
	t.id
) alunos_por_turma

inner join cursos c
on alunos_por_turma.curso_id = c.id 

group by
	alunos_por_turma.curso_id
order by	
	curso_id
