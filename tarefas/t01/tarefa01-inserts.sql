USE db_company;

-- DEPARTAMENTO
INSERT INTO departamento (descricao) VALUES ('Financeiro');
INSERT INTO departamento (descricao) VALUES ('RH');
INSERT INTO departamento (descricao) VALUES ('Limpeza');
INSERT INTO departamento (descricao) VALUES ('Desenvolvimento');
INSERT INTO departamento (descricao) VALUES ('Marketing');

-- FUNCIONARIO
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Ana Silva', 'F', '1990-05-12', 4500.00, 1);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Bruno Costa', 'M', '1985-09-23', 5200.00, 2);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Carla Mendes', 'F', '1992-11-30', 3900.00, 1);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Diego Rocha', 'M', '1988-07-15', 6100.00, 3);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Eduarda Lima', 'F', '1995-02-08', 4700.00, 2);

-- ADICIONANDO GERENTES AOS DEPARTAMENTOS
UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 5;

-- PROJETO
INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Sistema Web', 'Desenvolvimento de um sistema web interno', '2025-01-10', '2025-06-30', 1, 1);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('App Mobile', 'Aplicativo para dispositivos móveis', '2025-02-15', '2025-07-15', 2, 2);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Reestruturação TI', 'Atualização da infraestrutura de rede', '2025-03-01', '2025-08-01', 3, 4);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Chatbot IA', 'Criação de um chatbot com inteligência artificial', '2025-01-20', '2025-05-20', 1, 3);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Portal do Cliente', 'Novo portal de autoatendimento para clientes', '2025-04-01', '2025-09-30', 2, 5);

-- ATIVIDADE
INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Levantamento de Requisitos', 'Coleta de informações com o cliente', '2025-01-15', '2025-01-25', 1);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Design de Interface', 'Criação do layout do sistema', '2025-01-26', '2025-02-10', 2);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Configuração de Servidores', 'Preparar infraestrutura para hospedagem', '2025-02-01', '2025-02-15', 4);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Desenvolvimento do Backend', 'Implementar regras de negócio', '2025-02-10', '2025-03-20', 3);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Testes e Validação', 'Realizar testes funcionais e de integração', '2025-03-21', '2025-04-10', 5);

-- ATIVIDADE_PROJETO
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (1, 1);

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (1, 2); 

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (2, 4);

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (3, 3);

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (4, 5);
