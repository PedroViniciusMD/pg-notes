-- usar select antes para evitar erros 


-- Inserindo Linhas Usando INSERT INTO
INSERT INTO temp_tables.profissoes(professional_status, status_profissional) -- para inserir em colunas específicas
VALUES
('unemployed', 'Desempregado(a)'),
('trainee','Estagiario(a)')

-- Atualizando Linhas (UPDATE)
UPDATE temp_tables.profissoes
SET professional_status = 'intern'
WHERE status_profissional = 'Estagiario(a)'

UPDATE temp_tables.profissoes -- para alterar mais de uma coluna
SET 
    professional_status = 'intern',
    status_profissional = 'interno'
WHERE status_profissional = 'Estagiario(a)'

-- Deletando Linhas (DELETE)
DELETE FROM temp_tables.profissoes
WHERE status_profissional = 'Desempregado(a)' OR status_profissional 'Estagiario(a)'

