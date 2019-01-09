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