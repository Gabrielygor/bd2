CREATE OR REPLACE VIEW vw_conta_funcionarios AS
SELECT cod_depto,
       COUNT(*) AS total_funcionarios
FROM funcionario
GROUP BY cod_depto;


SELECT d.descricao AS departamento,
       g.nome      AS gerente,
       COALESCE(v.total_funcionarios, 0) AS num_funcionarios
FROM departamento d
LEFT JOIN funcionario g ON d.cod_gerente = g.codigo
LEFT JOIN vw_conta_funcionarios v ON d.codigo = v.cod_depto
ORDER BY d.codigo;
