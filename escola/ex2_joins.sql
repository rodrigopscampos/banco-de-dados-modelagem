-- As turmas do curso de MySql - Fundamentos (id, dt_inicio, dt_fim, nm_professor)
select 
	t.id, 
    t.dt_inicio, 
    t.dt_fim,
    p.nome
from 
	turmas t
    
    join cursos c
    on t.cursos_id = c.id
    
    join professores p
    on t.professor_id = p.id
where 
	c.nome = 'BANCO DE DADOS MYSQL - FUNDAMENTOS'
order by
		t.dt_inicio;
        
-- Os cursos que estão em andamento (id_curo, id_turma, nm_curso, dt_inicio, dt_fim)
select 
	c.id as id_curso,
    t.id as id_turma,
    c.nome as nm_curso,
    t.dt_inicio,
    t.dt_fim
from 
	turmas t
    
    inner join cursos c
    on t.cursos_id = c.id
    
where
		dt_inicio <= date(now())
    and dt_fim >= date(now());
    
-- Os professores que não estão atuando em nenhum curso (id, nome, email)

-- solução 1
select
		p.id,
        p.nome,
        p.email
from
	professores p
    
    left join turmas t
    
    on p.id = t.professor_id
    and t.dt_inicio <= date(now())
    and t.dt_fim >= date(now())
where
	t.id is null;

-- solução 2
select
    id,
	nome,
	email
from
    professores
WHERE
    id NOT IN (
    
    SELECT DISTINCT professor_id
        FROM turmas
        WHERE dt_inicio <= DATE(NOW())
              AND dt_fim >= DATE(NOW())
);


-- Os professores que estarão sem turmas no próximo mês (id, nome, email)
select
    id,
	nome,
	email
from
    professores
WHERE
    id NOT IN (
    
    SELECT 
		DISTINCT professor_id
	FROM 
		turmas
	WHERE 
		-- onde a data de fim é maior ou igual ao primeiro dia do mês
        -- e a data de início é menor ou igual ao último dia do mês
		dt_fim >= DATE_ADD( LAST_DAY(now()), INTERVAL 1 DAY)
        and dt_inicio <= LAST_DAY( DATE_ADD(now(), INTERVAL 1 MONTH) )
);

-- Os professores que estarão com turma no próximo 
-- mês (id_prof, nm_prof, email_prof, dt_inicio, dt_fim)

select
		p.id id_prof,
        p.nome nm_prof,
        p.email email_prof,
        t.dt_inicio,
        t.dt_fim
from
	professores p
    
    left join turmas t
    on p.id = t.professor_id
	
where
	t.dt_fim >= DATE_ADD( LAST_DAY(now()), INTERVAL 1 DAY)
    and t.dt_inicio <= LAST_DAY( DATE_ADD(now(), INTERVAL 1 MONTH) )
order by
	t.dt_inicio, t.dt_fim