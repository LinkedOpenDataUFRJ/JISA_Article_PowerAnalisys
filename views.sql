CREATE INDEX doadores on receitas_candidatos(ano, cpf_cnpj_doador);
CREATE INDEX doadores on receitas_comites(ano, cpf_cnpj_doador);
CREATE INDEX doadores on receitas_partidos(ano, cpf_cnpj_doador);

CREATE VIEW MultiplosCPFs AS
SELECT DISTINCT NOME_CANDIDATO, GROUP_CONCAT(DISTINCT CONCAT(ANO_ELEICAO, ' - ', CPF_CANDIDATO)), DATA_NASCIMENTO
FROM candidatos
  GROUP BY NOME_CANDIDATO, DATA_NASCIMENTO
  HAVING COUNT(DISTINCT CPF_CANDIDATO) >= '2'
ORDER BY NOME_CANDIDATO ASC;

CREATE VIEW topCandidatos AS
SELECT
  ano Ano,
  GROUP_CONCAT(Distinct nome_candidato) Nome,
  cpf_candidato CPF,
  sum(valor_receita) Total
FROM
  receitas_candidatos
WHERE cpf_candidato is not NULL
GROUP BY Ano, CPF
ORDER BY Total DESC;

CREATE VIEW topDoadoresParaCandidatos AS
SELECT
  ano Ano,
  cpf_cnpj_doador CPF_CNPJ,
  nome_doador Nome,
  SUM(valor_receita) Total
FROM
  receitas_candidatos
WHERE cpf_cnpj_doador is not NULL
GROUP BY ano, cpf_cnpj_doador
ORDER BY Total Desc;

CREATE VIEW topDoadoresParaComites AS
SELECT
  ano Ano,
  cpf_cnpj_doador CPF_CNPJ,
  nome_doador Nome,
  SUM(valor_receita) Total
FROM
  receitas_comites
WHERE cpf_cnpj_doador is not NULL
GROUP BY ano, cpf_cnpj_doador
ORDER BY Total Desc;

CREATE VIEW topDoadoresParaPartidos AS
SELECT
  ano Ano,
  cpf_cnpj_doador CPF_CNPJ,
  nome_doador Nome,
  SUM(valor_receita) Total
FROM
  receitas_partidos
WHERE cpf_cnpj_doador is not NULL
GROUP BY ano, cpf_cnpj_doador
ORDER BY Total Desc;

CREATE VIEW topDoadoresGeralSemSoma AS
  SELECT
    a.Ano,
    a.CPF_CNPJ,
    a.Nome,
    a.Total
  FROM
    topDoadoresParaCandidatos a
  UNION ALL
  SELECT
    b.Ano,
    b.CPF_CNPJ,
    b.Nome,
    b.Total
  FROM
    topDoadoresParaComites b
  UNION ALL
  SELECT
    c.Ano,
    c.CPF_CNPJ,
    c.Nome,
    c.Total
  FROM
    topDoadoresParaPartidos c;

CREATE VIEW topDoadoresGeral AS
  SELECT
    Ano,
    CPF_CNPJ,
    Nome,
    SUM(Total) soma
  FROM topDoadoresGeralSemSoma
  GROUP BY Ano, CPF_CNPJ
  ORDER BY soma DESC;

CREATE VIEW topDoadoresGeralSemDiretorios AS
  SELECT
    Ano,
    CPF_CNPJ,
    Nome,
    SUM(Total) soma
  FROM topDoadoresGeralSemSoma
  GROUP BY Ano, CPF_CNPJ
  HAVING Nome NOT REGEXP '(COMIT[EÊ])|(DIRET[OÓ]RIO)|(DEMOCRATAS)|(DIRE[CÇ][ÃA]O)'
  ORDER BY soma DESC;

CREATE VIEW candidatosGephi AS
  SELECT DISTINCT
    ANO_ELEICAO,
    CPF_CANDIDATO,
    NOME_CANDIDATO,
    DESCRICAO_CARGO
  FROM candidatos
  WHERE DESC_SIT_TOT_TURNO IN ('ELEITO', 'SUPLENTE', 'ELEITO POR QP', 'ELEITO POR MÉDIA', 'MÉDIA');