CREATE TABLE `poweredge` (
  `cpf_candidato`   VARCHAR(255)   DEFAULT NULL,
  `nome_candidato`  VARCHAR(255)   DEFAULT NULL,
  `cpf_cnpj_doador` VARCHAR(255)   DEFAULT NULL,
  `nome_doador`     VARCHAR(255)   DEFAULT NULL,
  `setor_economico` VARCHAR(255)   DEFAULT NULL,
  `valor_doado`     DECIMAL(15, 2) DEFAULT NULL,
  `volume_recebido` DECIMAL(15, 2) DEFAULT NULL,
  `volume_doado`    DECIMAL(15, 2) DEFAULT NULL,
  `powerinfluence`  VARCHAR(255)   DEFAULT NULL,
  `powerbargain`    VARCHAR(255)   DEFAULT NULL,
  `poweredge`       VARCHAR(255)   DEFAULT NULL

)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


CREATE INDEX doadores
  ON receitas_candidatos (ano, cpf_cnpj_doador);
CREATE INDEX doadores
  ON receitas_comites (ano, cpf_cnpj_doador);
CREATE INDEX doadores
  ON receitas_partidos (ano, cpf_cnpj_doador);

CREATE VIEW powerprogramming AS
  SELECT
    CPF_CANDIDATO,
    MAX(CASE DESCRICAO_CARGO
        WHEN 'DEPUTADO ESTADUAL'
          THEN 3
        WHEN 'DEPUTADO FEDERAL'
          THEN 4
        WHEN 'GOVERNADOR'
          THEN 6
        WHEN 'SENADOR'
          THEN 5
        WHEN 'PRESIDENTE'
          THEN 7
        WHEN 'DEPUTADO DISTRITAL'
          THEN 3
        WHEN 'PREFEITO'
          THEN 2
        WHEN '1º SUPLENTE SENADOR'
          THEN 1
        WHEN 'VICE-GOVERNADOR'
          THEN 3
        WHEN '2º SUPLENTE SENADOR'
          THEN 1
        WHEN 'VICE-PRESIDENTE'
          THEN 4
        WHEN 'VICE-PREFEITO'
          THEN 1 END) powerprogramming
  FROM candidatos
  WHERE
    DESC_SIT_TOT_TURNO IN (
      'ELEITO',
      'SUPLENTE',
      'MÉDIA',
      'ELEITO POR QUOCIENTE PARTIDÁRIO',
      'ELEITO POR MÉDIA',
      'INDEFERIDO COM RECURSO',
      'CASSADO COM RECURSO',
      'ELEITO POR QP'
    ) AND
    CPF_CANDIDATO IS NOT NULL
  GROUP BY CPF_CANDIDATO;

CREATE VIEW volume_recebido AS
  SELECT
    cpf_candidato,
    SUM(valor_receita) volume_recebido
  FROM receitas_candidatos
  WHERE cpf_candidato IS NOT NULL
  GROUP BY cpf_candidato;

CREATE VIEW topDoadoresParaCandidatos AS
  SELECT
    cpf_cnpj_doador    CPF_CNPJ,
    SUM(valor_receita) Total
  FROM
    receitas_candidatos
  WHERE cpf_cnpj_doador IS NOT NULL
  GROUP BY cpf_cnpj_doador;

CREATE VIEW topDoadoresParaComites AS
  SELECT
    cpf_cnpj_doador    CPF_CNPJ,
    SUM(valor_receita) Total
  FROM
    receitas_comites
  WHERE cpf_cnpj_doador IS NOT NULL
  GROUP BY cpf_cnpj_doador;

CREATE VIEW topDoadoresParaPartidos AS
  SELECT
    cpf_cnpj_doador    CPF_CNPJ,
    SUM(valor_receita) Total
  FROM
    receitas_partidos
  WHERE cpf_cnpj_doador IS NOT NULL
  GROUP BY cpf_cnpj_doador;

CREATE VIEW topDoadoresGeralSemSoma AS
  SELECT
    a.CPF_CNPJ,
    a.Total
  FROM
    topDoadoresParaCandidatos a
  UNION ALL
  SELECT
    b.CPF_CNPJ,
    b.Total
  FROM
    topDoadoresParaComites b
  UNION ALL
  SELECT
    c.CPF_CNPJ,
    c.Total
  FROM
    topDoadoresParaPartidos c;

CREATE VIEW volume_doado AS
  SELECT
    CPF_CNPJ,
    SUM(Total) volume_doado
  FROM topDoadoresGeralSemSoma
  GROUP BY CPF_CNPJ;

INSERT INTO poweredge (cpf_candidato, nome_candidato, cpf_cnpj_doador, nome_doador, setor_economico, valor_doado)
  SELECT
    cpf_candidato,
    nome_candidato,
    cpf_cnpj_doador,
    nome_doador,
    setor_economico_doador,
    SUM(valor_receita)
  FROM
    receitas_candidatos
  WHERE
    cpf_candidato IS NOT NULL AND
    cpf_cnpj_doador IS NOT NULL
  GROUP BY
    cpf_candidato,
    cpf_cnpj_doador;

UPDATE
    poweredge a, volume_recebido b
SET a.volume_recebido = b.volume_recebido
WHERE a.cpf_candidato = b.cpf_candidato;

UPDATE
    poweredge a, volume_doado b
SET a.volume_doado = b.volume_doado
WHERE a.cpf_cnpj_doador = b.CPF_CNPJ;

UPDATE poweredge
SET powerinfluence = valor_doado / volume_recebido, powerbargain = valor_doado / volume_doado;

UPDATE poweredge
SET poweredge = powerbargain - powerinfluence;

DROP TABLE power;

CREATE TABLE `power` (
  `cpf_candidato`   VARCHAR(255) DEFAULT NULL,
  `nome_candidato`  VARCHAR(255) DEFAULT NULL,
  `setor_economico` VARCHAR(255) DEFAULT NULL,
  `power`           VARCHAR(255) DEFAULT NULL,
  `omega`           INT(2)       DEFAULT NULL,
  `omegapower`      VARCHAR(255) DEFAULT NULL,
  `tipo`            VARCHAR(255) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO power (cpf_candidato, nome_candidato, power, tipo)
  SELECT
    cpf_candidato,
    nome_candidato,
    SUM(poweredge),
    'candidato'
  FROM poweredge
  GROUP BY cpf_candidato;



INSERT INTO power (cpf_candidato, nome_candidato,setor_economico, power, omega, tipo)
  SELECT
    cpf_cnpj_doador,
    nome_doador,
    setor_economico,
    SUM(poweredge),
    1,
    'doador'
  FROM poweredge
  GROUP BY cpf_cnpj_doador;

UPDATE
    power a,
    powerprogramming b
SET
  a.omega = b.powerprogramming
WHERE
  a.cpf_candidato = b.CPF_CANDIDATO;

UPDATE
  power
SET
  omega = 0
WHERE
  omega IS NULL;

UPDATE
  power
SET
  omega = omega*-1
WHERE tipo = 'doador';

UPDATE
  power
SET
  omegapower = power * omega;