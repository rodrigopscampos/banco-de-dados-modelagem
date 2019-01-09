-- A lista dos cursos em ordem alfabética crescente (id, nome)
select id, nome from cursos order by nome;

-- A lista dos cursos de Fundamentos
select id, nome from cursos where nome like '%FUNDAMENTOS%' order by nome desc;