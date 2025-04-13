WITH max_salario_depto AS (
  SELECT cod_depto,
         MAX(salario) AS max_sal
  FROM funcionario
  GROUP BY cod_depto
)
SELECT f.nome,
       f.salario,
       d.descricao AS departamento
FROM funcionario f
LEFT JOIN max_salario_depto m
  ON f.cod_depto = m.cod_depto
LEFT JOIN departamento d
  ON f.cod_depto = d.codigo
WHERE f.salario = m.max_sal
   OR m.cod_depto IS NULL  
ORDER BY f.salario;
