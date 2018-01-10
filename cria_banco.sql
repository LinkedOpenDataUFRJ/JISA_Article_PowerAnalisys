DROP DATABASE IF EXISTS tse;
CREATE DATABASE tse;
USE tse;

SELECT 'Iniciando criação de tabelas...' AS '>';

SELECT 'Criando tabela receitas_candidatos...' AS '>';

CREATE TABLE `receitas_candidatos` (
  `ano`                                    INT(4)         DEFAULT NULL,
  `cargo`                                  VARCHAR(255)   DEFAULT NULL,
  `cnpj_prestador_conta`                   VARCHAR(255)   DEFAULT NULL,
  `cod_cargo`                              VARCHAR(255)   DEFAULT NULL,
  `cod_eleicao`                            VARCHAR(255)   DEFAULT NULL,
  `cod_fonte_recurso`                      VARCHAR(255)   DEFAULT NULL,
  `cod_municipio`                          VARCHAR(255)   DEFAULT NULL,
  `cod_setor_economico_doador`             VARCHAR(255)   DEFAULT NULL,
  `cod_tipo_receita`                       VARCHAR(255)   DEFAULT NULL,
  `cpf_adm_financeiro`                     VARCHAR(255)   DEFAULT NULL,
  `cpf_candidato`                          VARCHAR(255)   DEFAULT NULL,
  `cpf_vice_suplente`                      VARCHAR(255)   DEFAULT NULL,
  `cpf_cnpj_doador_originario`             VARCHAR(255)   DEFAULT NULL,
  `cpf_cnpj_doador`                        VARCHAR(255)   DEFAULT NULL,
  `data_hora`                              VARCHAR(255)   DEFAULT NULL,
  `data_receita`                           VARCHAR(255)   DEFAULT NULL,
  `desc_eleicao`                           VARCHAR(255)   DEFAULT NULL,
  `descricao_receita`                      VARCHAR(255)   DEFAULT NULL,
  `entrega_conjunto`                       VARCHAR(255)   DEFAULT NULL,
  `especie_recurso`                        VARCHAR(255)   DEFAULT NULL,
  `fonte_recurso`                          VARCHAR(255)   DEFAULT NULL,
  `municipio`                              VARCHAR(255)   DEFAULT NULL,
  `nome_adm_financeiro`                    VARCHAR(255)   DEFAULT NULL,
  `nome_candidato`                         VARCHAR(255)   DEFAULT NULL,
  `nome_doador_originario_receita_federal` VARCHAR(255)   DEFAULT NULL,
  `nome_doador_originario`                 VARCHAR(255)   DEFAULT NULL,
  `nome_doador_receita_federal`            VARCHAR(255)   DEFAULT NULL,
  `nome_doador`                            VARCHAR(255)   DEFAULT NULL,
  `numero_candidato_doador`                VARCHAR(255)   DEFAULT NULL,
  `numero_candidato`                       VARCHAR(255)   DEFAULT NULL,
  `numero_documento`                       VARCHAR(255)   DEFAULT NULL,
  `numero_partido_doador`                  VARCHAR(255)   DEFAULT NULL,
  `numero_partido`                         VARCHAR(255)   DEFAULT NULL,
  `numero_recibo_eleitoral`                VARCHAR(255)   DEFAULT NULL,
  `sequencial_candidato`                   VARCHAR(255)   DEFAULT NULL,
  `setor_economico_doador_originario`      VARCHAR(255)   DEFAULT NULL,
  `setor_economico_doador`                 VARCHAR(255)   DEFAULT NULL,
  `sexo`                                   VARCHAR(255)   DEFAULT NULL,
  `sigla_partido`                          VARCHAR(255)   DEFAULT NULL,
  `sigla_ue_doador`                        VARCHAR(255)   DEFAULT NULL,
  `sigla_ue`                               VARCHAR(255)   DEFAULT NULL,
  `sigla_uf_doador`                        VARCHAR(255)   DEFAULT NULL,
  `sigla_uf`                               VARCHAR(255)   DEFAULT NULL,
  `situacao_cadastral`                     VARCHAR(255)   DEFAULT NULL,
  `tipo_doador_originario`                 VARCHAR(255)   DEFAULT NULL,
  `tipo_receita`                           VARCHAR(255)   DEFAULT NULL,
  `uf_doador`                              VARCHAR(255)   DEFAULT NULL,
  `uf`                                     VARCHAR(255)   DEFAULT NULL,
  `valor_receita`                          DECIMAL(15, 2) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

SELECT 'Criando tabela receitas_comites...' AS '>';

CREATE TABLE `receitas_comites` (
  `ano`                                    INT(4)         DEFAULT NULL,
  `cnpj_prestador_conta`                   VARCHAR(255)   DEFAULT NULL,
  `cod_eleicao`                            VARCHAR(255)   DEFAULT NULL,
  `cod_fonte_recurso`                      VARCHAR(255)   DEFAULT NULL,
  `cod_municipio`                          VARCHAR(255)   DEFAULT NULL,
  `cod_setor_economico_doador`             VARCHAR(255)   DEFAULT NULL,
  `cod_tipo_receita`                       VARCHAR(255)   DEFAULT NULL,
  `cod_especie_recurso`                    VARCHAR(255)   DEFAULT NULL,
  `cpf_cnpj_doador_originario`             VARCHAR(255)   DEFAULT NULL,
  `cpf_cnpj_doador`                        VARCHAR(255)   DEFAULT NULL,
  `cpf_presidente`                         VARCHAR(255)   DEFAULT NULL,
  `data_hora`                              VARCHAR(255)   DEFAULT NULL,
  `data_receita`                           VARCHAR(255)   DEFAULT NULL,
  `desc_eleicao`                           VARCHAR(255)   DEFAULT NULL,
  `descricao_receita`                      VARCHAR(255)   DEFAULT NULL,
  `especie_recurso`                        VARCHAR(255)   DEFAULT NULL,
  `fonte_recurso`                          VARCHAR(255)   DEFAULT NULL,
  `municipio`                              VARCHAR(255)   DEFAULT NULL,
  `nome_doador_originario_receita_federal` VARCHAR(255)   DEFAULT NULL,
  `nome_doador_originario`                 VARCHAR(255)   DEFAULT NULL,
  `nome_doador_receita_federal`            VARCHAR(255)   DEFAULT NULL,
  `nome_doador`                            VARCHAR(255)   DEFAULT NULL,
  `nome_presidente`                        VARCHAR(255)   DEFAULT NULL,
  `numero_candidato_doador`                VARCHAR(255)   DEFAULT NULL,
  `numero_documento`                       VARCHAR(255)   DEFAULT NULL,
  `numero_partido_doador`                  VARCHAR(255)   DEFAULT NULL,
  `numero_partido`                         VARCHAR(255)   DEFAULT NULL,
  `sequencial_comite`                      VARCHAR(255)   DEFAULT NULL,
  `setor_economico_doador_originario`      VARCHAR(255)   DEFAULT NULL,
  `setor_economico_doador`                 VARCHAR(255)   DEFAULT NULL,
  `sigla_partido`                          VARCHAR(255)   DEFAULT NULL,
  `sigla_ue_doador`                        VARCHAR(255)   DEFAULT NULL,
  `sigla_ue`                               VARCHAR(255)   DEFAULT NULL,
  `sigla_uf_doador`                        VARCHAR(255)   DEFAULT NULL,
  `sigla_uf`                               VARCHAR(255)   DEFAULT NULL,
  `situacao_cadastral`                     VARCHAR(255)   DEFAULT NULL,
  `tipo_comite`                            VARCHAR(255)   DEFAULT NULL,
  `tipo_doador_originario`                 VARCHAR(255)   DEFAULT NULL,
  `tipo_documento`                         VARCHAR(255)   DEFAULT NULL,
  `tipo_receita`                           VARCHAR(255)   DEFAULT NULL,
  `uf`                                     VARCHAR(255)   DEFAULT NULL,
  `uf_doador`                              VARCHAR(255)   DEFAULT NULL,
  `valor_receita`                          DECIMAL(15, 2) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

SELECT 'Criando tabela receitas_partidos...' AS '>';

CREATE TABLE `receitas_partidos` (
  `ano`                                    INT(4)         DEFAULT NULL,
  `cnpj_prestador_conta`                   VARCHAR(255)   DEFAULT NULL,
  `cod_eleicao`                            VARCHAR(255)   DEFAULT NULL,
  `cod_municipio`                          VARCHAR(255)   DEFAULT NULL,
  `cod_setor_economico_doador`             VARCHAR(255)   DEFAULT NULL,
  `cpf_cnpj_doador_originario`             VARCHAR(255)   DEFAULT NULL,
  `cpf_cnpj_doador`                        VARCHAR(255)   DEFAULT NULL,
  `data_hora`                              VARCHAR(255)   DEFAULT NULL,
  `data_receita`                           VARCHAR(255)   DEFAULT NULL,
  `desc_eleicao`                           VARCHAR(255)   DEFAULT NULL,
  `descricao_receita`                      VARCHAR(255)   DEFAULT NULL,
  `especie_recurso`                        VARCHAR(255)   DEFAULT NULL,
  `fonte_recurso`                          VARCHAR(255)   DEFAULT NULL,
  `municipio`                              VARCHAR(255)   DEFAULT NULL,
  `nome_doador_originario_receita_federal` VARCHAR(255)   DEFAULT NULL,
  `nome_doador_originario`                 VARCHAR(255)   DEFAULT NULL,
  `nome_doador_receita_federal`            VARCHAR(255)   DEFAULT NULL,
  `nome_doador`                            VARCHAR(255)   DEFAULT NULL,
  `numero_candidato_doador`                VARCHAR(255)   DEFAULT NULL,
  `numero_documento`                       VARCHAR(255)   DEFAULT NULL,
  `numero_partido_doador`                  VARCHAR(255)   DEFAULT NULL,
  `numero_recibo_eleitoral`                VARCHAR(255)   DEFAULT NULL,
  `sequencial_diretorio`                   VARCHAR(255)   DEFAULT NULL,
  `setor_economico_doador_originario`      VARCHAR(255)   DEFAULT NULL,
  `setor_economico_doador`                 VARCHAR(255)   DEFAULT NULL,
  `sigla_partido`                          VARCHAR(255)   DEFAULT NULL,
  `sigla_ue_doador`                        VARCHAR(255)   DEFAULT NULL,
  `sigla_ue`                               VARCHAR(255)   DEFAULT NULL,
  `tipo_diretorio`                         VARCHAR(255)   DEFAULT NULL,
  `tipo_doador_originario`                 VARCHAR(255)   DEFAULT NULL,
  `tipo_documento`                         VARCHAR(255)   DEFAULT NULL,
  `tipo_receita`                           VARCHAR(255)   DEFAULT NULL,
  `uf`                                     VARCHAR(255)   DEFAULT NULL,
  `valor_receita`                          DECIMAL(15, 2) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

SELECT 'Criando tabela candidatos...' AS '>';

CREATE TABLE `candidatos` (
  `id`                             INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DATA_GERACAO`                   VARCHAR(255)              DEFAULT NULL,
  `HORA_GERACAO`                   VARCHAR(255)              DEFAULT NULL,
  `ANO_ELEICAO`                    INT(4)                    DEFAULT NULL,
  `NUM_TURNO`                      VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_ELEICAO`              VARCHAR(255)              DEFAULT NULL,
  `SIGLA_UF`                       VARCHAR(2)                DEFAULT NULL,
  `SIGLA_UE`                       VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_UE`                   VARCHAR(255)              DEFAULT NULL,
  `CODIGO_CARGO`                   VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_CARGO`                VARCHAR(255)              DEFAULT NULL,
  `NOME_CANDIDATO`                 VARCHAR(255)              DEFAULT NULL,
  `SEQUENCIAL_CANDIDATO`           VARCHAR(255)              DEFAULT NULL,
  `NUMERO_CANDIDATO`               VARCHAR(30)               DEFAULT NULL,
  `CPF_CANDIDATO`                  VARCHAR(20)               DEFAULT NULL,
  `NOME_URNA_CANDIDATO`            VARCHAR(255)              DEFAULT NULL,
  `COD_SITUACAO_CANDIDATURA`       VARCHAR(255)              DEFAULT NULL,
  `DES_SITUACAO_CANDIDATURA`       VARCHAR(255)              DEFAULT NULL,
  `NUMERO_PARTIDO`                 VARCHAR(255)              DEFAULT NULL,
  `SIGLA_PARTIDO`                  VARCHAR(255)              DEFAULT NULL,
  `NOME_PARTIDO`                   VARCHAR(255)              DEFAULT NULL,
  `CODIGO_LEGENDA`                 VARCHAR(255)              DEFAULT NULL,
  `SIGLA_LEGENDA`                  VARCHAR(255)              DEFAULT NULL,
  `COMPOSICAO_LEGENDA`             VARCHAR(255)              DEFAULT NULL,
  `NOME_LEGENDA`                   VARCHAR(255)              DEFAULT NULL,
  `CODIGO_OCUPACAO`                VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_OCUPACAO`             VARCHAR(255)              DEFAULT NULL,
  `DATA_NASCIMENTO`                VARCHAR(255)              DEFAULT NULL,
  `NUM_TITULO_ELEITORAL_CANDIDATO` VARCHAR(255)              DEFAULT NULL,
  `IDADE_DATA_ELEICAO`             VARCHAR(255)              DEFAULT NULL,
  `CODIGO_SEXO`                    VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_SEXO`                 VARCHAR(255)              DEFAULT NULL,
  `COD_GRAU_INSTRUCAO`             VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_GRAU_INSTRUCAO`       VARCHAR(255)              DEFAULT NULL,
  `CODIGO_ESTADO_CIVIL`            VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_ESTADO_CIVIL`         VARCHAR(255)              DEFAULT NULL,
  `CODIGO_COR_RACA`                VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_COR_RACA`             VARCHAR(255)              DEFAULT NULL,
  `CODIGO_NACIONALIDADE`           VARCHAR(255)              DEFAULT NULL,
  `DESCRICAO_NACIONALIDADE`        VARCHAR(255)              DEFAULT NULL,
  `SIGLA_UF_NASCIMENTO`            VARCHAR(255)              DEFAULT NULL,
  `CODIGO_MUNICIPIO_NASCIMENTO`    VARCHAR(255)              DEFAULT NULL,
  `NOME_MUNICIPIO_NASCIMENTO`      VARCHAR(255)              DEFAULT NULL,
  `DESPESA_MAX_CAMPANHA`           VARCHAR(255)              DEFAULT NULL,
  `COD_SIT_TOT_TURNO`              VARCHAR(255)              DEFAULT NULL,
  `DESC_SIT_TOT_TURNO`             VARCHAR(255)              DEFAULT NULL,
  `NM_EMAIL`                       VARCHAR(255)              DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 0
  DEFAULT CHARSET = utf8;

SELECT 'Criação das tabelas finalizado' AS '>';

SELECT 'Início das importações' AS '>';

SELECT 'Importando prestacoes de contas de 2002...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2002/prestacao_contas_2002/2002/Candidato/Receita/ReceitaCandidato.csv'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @sequencial_candidato,
  @sigla_uf,
  @sigla_partido,
  @cargo,
  @nome_candidato,
  @numero_candidato,
  @data_receita,
  @cpf_cnpj_doador,
  @sigla_uf_doador,
  @nome_doador,
  @valor_receita,
  @tipo_receita
)
SET
  ano                  = '2002',
  cargo                = UPPER(TRIM(@cargo)),
  cpf_cnpj_doador      = UPPER(TRIM(@cpf_cnpj_doador)),
  data_receita         = UPPER(TRIM(@data_receita)),
  nome_candidato       = UPPER(TRIM(@nome_candidato)),
  nome_doador          = UPPER(TRIM(@nome_doador)),
  numero_candidato     = UPPER(TRIM(@numero_candidato)),
  sequencial_candidato = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido        = UPPER(TRIM(@sigla_partido)),
  sigla_uf_doador      = UPPER(TRIM(@sigla_uf_doador)),
  sigla_uf             = UPPER(TRIM(@sigla_uf)),
  tipo_receita         = UPPER(TRIM(@tipo_receita)),
  valor_receita        = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2002/prestacao_contas_2002/2002/Comitê/Receita/ReceitaComite.CSV'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @sigla_uf,
  @sigla_partido,
  @tipo_comite,
  @data_receita,
  @cpf_cnpj_doador,
  @sigla_uf_doador,
  @nome_doador,
  @valor_receita,
  @tipo_receita
)
SET
  ano             = '2002',
  cpf_cnpj_doador = UPPER(TRIM(@cpf_cnpj_doador)),
  data_receita    = UPPER(TRIM(@data_receita)),
  nome_doador     = UPPER(TRIM(@nome_doador)),
  sigla_partido   = UPPER(TRIM(@sigla_partido)),
  sigla_uf_doador = UPPER(TRIM(@sigla_uf_doador)),
  sigla_uf        = UPPER(TRIM(@sigla_uf)),
  tipo_comite     = UPPER(TRIM(@tipo_comite)),
  tipo_receita    = UPPER(TRIM(@tipo_receita)),
  valor_receita   = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

SELECT 'Importando prestacoes de contas de 2004...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2004/prestacao_contas_2004/2004/Candidato/Receita/ReceitaCandidato.CSV'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @nome_candidato,
  @cargo,
  @cod_cargo,
  @numero_candidato,
  @sigla_uf,
  @uf,
  @sigla_ue,
  @numero_partido,
  @sigla_partido,
  @valor_receita,
  @data_receita,
  @tipo_receita,
  @cod_tipo_receita,
  @fonte_recurso,
  @cod_fonte_recurso,
  @nome_doador,
  @cpf_cnpj_doador,
  @situacao_cadastral
)
SET
  ano                = '2004',
  cargo              = UPPER(TRIM(@cargo)),
  cod_cargo          = UPPER(TRIM(@cod_cargo)),
  cod_fonte_recurso  = UPPER(TRIM(@cod_fonte_recurso)),
  cod_tipo_receita   = UPPER(TRIM(@cod_tipo_receita)),
  cpf_cnpj_doador    = UPPER(TRIM(@cpf_cnpj_doador)),
  data_receita       = UPPER(TRIM(@data_receita)),
  fonte_recurso      = UPPER(TRIM(@fonte_recurso)),
  nome_candidato     = UPPER(TRIM(@nome_candidato)),
  nome_doador        = UPPER(TRIM(@nome_doador)),
  numero_candidato   = UPPER(TRIM(@numero_candidato)),
  numero_partido     = UPPER(TRIM(@numero_partido)),
  sigla_partido      = UPPER(TRIM(@sigla_partido)),
  sigla_ue           = UPPER(TRIM(@sigla_ue)),
  sigla_uf           = UPPER(TRIM(@sigla_uf)),
  situacao_cadastral = UPPER(TRIM(@situacao_cadastral)),
  tipo_receita       = UPPER(TRIM(@tipo_receita)),
  uf                 = UPPER(TRIM(@uf)),
  valor_receita      = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;


LOAD DATA LOCAL INFILE 'fontes_tse/2004/prestacao_contas_2004/2004/Comitê/Receita/ReceitaComitê.CSV'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @tipo_comite,
  @numero_partido,
  @sigla_partido,
  @sigla_uf,
  @uf,
  @sigla_ue,
  @valor_receita,
  @data_receita,
  @tipo_receita,
  @cod_tipo_receita,
  @fonte_recurso,
  @cod_fonte_recurso,
  @nome_doador,
  @cpf_cnpj_doador,
  @situacao_cadastral
)

SET
  ano                = '2004',
  cod_fonte_recurso  = UPPER(TRIM(@cod_fonte_recurso)),
  cod_tipo_receita   = UPPER(TRIM(@cod_tipo_receita)),
  cpf_cnpj_doador    = UPPER(TRIM(@cpf_cnpj_doador)),
  data_receita       = UPPER(TRIM(@data_receita)),
  fonte_recurso      = UPPER(TRIM(@fonte_recurso)),
  nome_doador        = UPPER(TRIM(@nome_doador)),
  numero_partido     = UPPER(TRIM(@numero_partido)),
  sigla_partido      = UPPER(TRIM(@sigla_partido)),
  sigla_ue           = UPPER(TRIM(@sigla_ue)),
  sigla_uf           = UPPER(TRIM(@sigla_uf)),
  situacao_cadastral = UPPER(TRIM(@situacao_cadastral)),
  tipo_comite        = UPPER(TRIM(@tipo_comite)),
  tipo_receita       = UPPER(TRIM(@tipo_receita)),
  uf                 = UPPER(TRIM(@uf)),
  valor_receita      = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

SELECT 'Importando prestacoes de contas de 2006...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2006/prestacao_contas_2006/2006/Candidato/Receita/ReceitaCandidato.csv'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @sequencial_candidato,
  @nome_candidato,
  @cargo,
  @cod_cargo,
  @numero_candidato,
  @sigla_uf,
  @cnpj_prestador_conta,
  @numero_partido,
  @sigla_partido,
  @valor_receita,
  @data_receita,
  @tipo_receita,
  @cod_tipo_receita,
  @fonte_recurso,
  @cod_fonte_recurso,
  @nome_doador,
  @cpf_cnpj_doador,
  @sigla_uf_doador,
  @situacao_cadastral
)
SET
  ano                  = '2006',
  cargo                = UPPER(TRIM(@cargo)),
  cod_cargo            = UPPER(TRIM(@cod_cargo)),
  cod_fonte_recurso    = UPPER(TRIM(@cod_fonte_recurso)),
  cod_tipo_receita     = UPPER(TRIM(@cod_tipo_receita)),
  cpf_candidato        = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador      = UPPER(TRIM(@cpf_cnpj_doador)),
  data_receita         = UPPER(TRIM(@data_receita)),
  fonte_recurso        = UPPER(TRIM(@fonte_recurso)),
  nome_candidato       = UPPER(TRIM(@nome_candidato)),
  nome_doador          = UPPER(TRIM(@nome_doador)),
  numero_candidato     = UPPER(TRIM(@numero_candidato)),
  numero_partido       = UPPER(TRIM(@numero_partido)),
  sequencial_candidato = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido        = UPPER(TRIM(@sigla_partido)),
  sigla_uf_doador      = UPPER(TRIM(@sigla_uf_doador)),
  sigla_uf             = UPPER(TRIM(@sigla_uf)),
  situacao_cadastral   = UPPER(TRIM(@situacao_cadastral)),
  tipo_receita         = UPPER(TRIM(@tipo_receita)),
  valor_receita        = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;


LOAD DATA LOCAL INFILE 'fontes_tse/2006/prestacao_contas_2006/2006/Comitê/Receita/ReceitaComitê.CSV'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @tipo_comite,
  @numero_partido,
  @sigla_partido,
  @sigla_uf,
  @cnpj_prestador_conta,
  @valor_receita,
  @data_receita,
  @tipo_receita,
  @cod_tipo_receita,
  @fonte_recurso,
  @cod_fonte_recurso,
  @nome_doador,
  @cpf_cnpj_doador,
  @sigla_uf_doador,
  @situacao_cadastral
)
SET
  ano                  = '2006',
  cnpj_prestador_conta = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_fonte_recurso    = UPPER(TRIM(@cod_fonte_recurso)),
  cod_tipo_receita     = UPPER(TRIM(@cod_tipo_receita)),
  cpf_cnpj_doador      = UPPER(TRIM(@cpf_cnpj_doador)),
  data_receita         = UPPER(TRIM(@data_receita)),
  fonte_recurso        = UPPER(TRIM(@fonte_recurso)),
  nome_doador          = UPPER(TRIM(@nome_doador)),
  numero_partido       = UPPER(TRIM(@numero_partido)),
  sigla_partido        = UPPER(TRIM(@sigla_partido)),
  sigla_uf_doador      = UPPER(TRIM(@sigla_uf_doador)),
  sigla_uf             = UPPER(TRIM(@sigla_uf)),
  situacao_cadastral   = UPPER(TRIM(@situacao_cadastral)),
  tipo_comite          = UPPER(TRIM(@tipo_comite)),
  tipo_receita         = UPPER(TRIM(@tipo_receita)),
  valor_receita        = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));

SHOW WARNINGS;

SELECT 'Importando prestacoes de contas de 2008...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2008/prestacao_contas_2008/2008/Candidato/Receita/ReceitaCandidato.csv'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @sequencial_candidato,
  @nome_candidato,
  @sexo,
  @cargo,
  @cod_cargo,
  @numero_candidato,
  @sigla_uf,
  @uf,
  @sigla_ue,
  @numero_documento,
  @cpf_candidato,
  @cnpj_prestador_conta,
  @numero_partido,
  @sigla_partido,
  @valor_receita,
  @data_receita,
  @tipo_receita,
  @cod_tipo_receita,
  @fonte_recurso,
  @cod_fonte_recurso,
  @nome_doador,
  @cpf_cnpj_doador,
  @sigla_uf_doador,
  @uf_doador,
  @cod_municipio,
  @situacao_cadastral,
  @nome_adm_financeiro,
  @cpf_adm_financeiro
)
SET
  ano                  = '2008',
  cargo                = UPPER(TRIM(@cargo)),
  cnpj_prestador_conta = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_cargo            = UPPER(TRIM(@cod_cargo)),
  cod_fonte_recurso    = UPPER(TRIM(@cod_fonte_recurso)),
  sigla_ue             = UPPER(TRIM(@sigla_ue)),
  cod_tipo_receita     = UPPER(TRIM(@cod_tipo_receita)),
  cpf_adm_financeiro   = UPPER(TRIM(@cpf_adm_financeiro)),
  cpf_candidato        = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador      = UPPER(TRIM(@cpf_cnpj_doador)),
  data_receita         = UPPER(TRIM(@data_receita)),
  fonte_recurso        = UPPER(TRIM(@fonte_recurso)),
  nome_adm_financeiro  = UPPER(TRIM(@nome_adm_financeiro)),
  nome_candidato       = UPPER(TRIM(@nome_candidato)),
  nome_doador          = UPPER(TRIM(@nome_doador)),
  numero_candidato     = UPPER(TRIM(@numero_candidato)),
  numero_documento     = UPPER(TRIM(@numero_documento)),
  numero_partido       = UPPER(TRIM(@numero_partido)),
  sequencial_candidato = UPPER(TRIM(@sequencial_candidato)),
  sexo                 = UPPER(TRIM(@sexo)),
  sigla_partido        = UPPER(TRIM(@sigla_partido)),
  sigla_uf_doador      = UPPER(TRIM(@sigla_uf_doador)),
  sigla_uf             = UPPER(TRIM(@sigla_uf)),
  situacao_cadastral   = UPPER(TRIM(@situacao_cadastral)),
  tipo_receita         = UPPER(TRIM(@tipo_receita)),
  uf_doador            = UPPER(TRIM(@uf_doador)),
  uf                   = UPPER(TRIM(@uf)),
  valor_receita        = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2008/prestacao_contas_2008/2008/Comitê/Receita/ReceitaComitê.CSV'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @tipo_comite,
  @numero_partido,
  @sigla_partido,
  @sigla_uf,
  @uf,
  @cod_municipio,
  @cnpj_prestador_conta,
  @valor_receita,
  @data_receita,
  @tipo_receita,
  @cod_tipo_receita,
  @especie_recurso,
  @cod_especie_recurso,
  @nome_doador,
  @cpf_cnpj_doador,
  @sigla_uf_doador,
  @uf_doador,
  @sigla_ue_doador,
  @situacao_cadastral,
  @nome_presidente,
  @cpf_presidente
)
SET
  ano                  = '2008',
  cnpj_prestador_conta = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_especie_recurso  = UPPER(TRIM(@cod_especie_recurso)),
  cod_municipio        = UPPER(TRIM(@cod_municipio)),
  cod_tipo_receita     = UPPER(TRIM(@cod_tipo_receita)),
  cpf_cnpj_doador      = UPPER(TRIM(@cpf_cnpj_doador)),
  cpf_presidente       = UPPER(TRIM(@cpf_presidente)),
  data_receita         = UPPER(TRIM(@data_receita)),
  especie_recurso      = UPPER(TRIM(@especie_recurso)),
  nome_doador          = UPPER(TRIM(@nome_doador)),
  nome_presidente      = UPPER(TRIM(@nome_presidente)),
  numero_partido       = UPPER(TRIM(@numero_partido)),
  sigla_partido        = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador      = UPPER(TRIM(@sigla_ue_doador)),
  sigla_uf_doador      = UPPER(TRIM(@sigla_uf_doador)),
  sigla_uf             = UPPER(TRIM(@sigla_uf)),
  situacao_cadastral   = UPPER(TRIM(@situacao_cadastral)),
  tipo_comite          = UPPER(TRIM(@tipo_comite)),
  tipo_receita         = UPPER(TRIM(@tipo_receita)),
  uf_doador            = UPPER(TRIM(@uf_doador)),
  uf                   = UPPER(TRIM(@uf)),
  valor_receita        = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

SELECT 'Importando prestacoes de contas de 2010...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/AC/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/AL/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/AM/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/AP/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES

(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/BA/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/BR/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/CE/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/DF/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/ES/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/GO/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/MA/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/MG/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/MS/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/MT/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/PA/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/PB/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/PE/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/PI/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/PR/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/RJ/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/RN/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/RO/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/RR/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/RS/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/SC/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/SE/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/SP/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/candidato/TO/ReceitasCandidatos.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @entrega_conjunto,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                     = '2010',
  cargo                   = UPPER(TRIM(@cargo)),
  cpf_candidato           = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador         = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora               = UPPER(TRIM(@data_hora)),
  data_receita            = UPPER(TRIM(@data_receita)),
  descricao_receita       = UPPER(TRIM(@descricao_receita)),
  entrega_conjunto        = UPPER(TRIM(@entrega_conjunto)),
  especie_recurso         = UPPER(TRIM(@especie_recurso)),
  fonte_recurso           = UPPER(TRIM(@fonte_recurso)),
  nome_candidato          = UPPER(TRIM(@nome_candidato)),
  nome_doador             = UPPER(TRIM(@nome_doador)),
  numero_candidato        = UPPER(TRIM(@numero_candidato)),
  numero_documento        = UPPER(TRIM(@numero_documento)),
  numero_recibo_eleitoral = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato    = UPPER(TRIM(@sequencial_candidato)),
  sigla_partido           = UPPER(TRIM(@sigla_partido)),
  tipo_receita            = UPPER(TRIM(@tipo_receita)),
  uf                      = UPPER(TRIM(@uf)),
  valor_receita           = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/AC/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/AL/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/AM/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/AP/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/BA/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/BR/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/CE/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/DF/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/ES/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/GO/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/MA/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/MG/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/MS/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/MT/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/PA/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/PB/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/PE/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/PI/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/PR/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/RJ/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/RN/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/RO/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/RR/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/RS/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/SC/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/SE/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/SP/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/comite/TO/ReceitasComites.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_comite       = UPPER(TRIM(@tipo_comite)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/AC/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/AL/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/AM/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/AP/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/BA/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/BR/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/CE/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/DF/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/ES/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/GO/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/MA/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/MG/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/MS/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/MT/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/PA/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/PB/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/PE/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/PI/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/PR/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/RJ/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/RN/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/RO/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/RR/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/RS/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/SC/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/SE/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/SP/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2010/prestacao_contas_2010/partido/TO/ReceitasPartidos.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @data_hora,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano               = '2010',
  data_hora         = UPPER(TRIM(@data_hora)),
  uf                = UPPER(TRIM(@uf)),
  tipo_diretorio    = UPPER(TRIM(@tipo_diretorio)),
  sigla_partido     = UPPER(TRIM(@sigla_partido)),
  tipo_documento    = UPPER(TRIM(@tipo_documento)),
  numero_documento  = UPPER(TRIM(@numero_documento)),
  cpf_cnpj_doador   = UPPER(TRIM(@cpf_cnpj_doador)),
  nome_doador       = UPPER(TRIM(@nome_doador)),
  data_receita      = UPPER(TRIM(@data_receita)),
  valor_receita     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.')),
  tipo_receita      = UPPER(TRIM(@tipo_receita)),
  fonte_recurso     = UPPER(TRIM(@fonte_recurso)),
  especie_recurso   = UPPER(TRIM(@especie_recurso)),
  descricao_receita = UPPER(TRIM(@descricao_receita));
SHOW WARNINGS;

SELECT 'Importando prestacoes de contas de 2012...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2012/prestacao_final_2012/receitas_candidatos_2012_brasil.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @sequencial_candidato,
  @sigla_uf,
  @sigla_ue,
  @municipio,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @sigla_ue_doador,
  @numero_partido_doador,
  @numero_candidato_doador,
  @cod_setor_economico_doador,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                         = '2012',
  cod_eleicao                 = UPPER(TRIM(@cod_eleicao)),
  cargo                       = UPPER(TRIM(@cargo)),
  cod_setor_economico_doador  = UPPER(TRIM(@cod_setor_economico_doador)),
  cpf_candidato               = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador             = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora                   = UPPER(TRIM(@data_hora)),
  data_receita                = UPPER(TRIM(@data_receita)),
  desc_eleicao                = UPPER(TRIM(@desc_eleicao)),
  descricao_receita           = UPPER(TRIM(@descricao_receita)),
  especie_recurso             = UPPER(TRIM(@especie_recurso)),
  fonte_recurso               = UPPER(TRIM(@fonte_recurso)),
  nome_candidato              = UPPER(TRIM(@nome_candidato)),
  nome_doador_receita_federal = UPPER(TRIM(@nome_doador_receita_federal)),
  nome_doador                 = UPPER(TRIM(@nome_doador)),
  municipio                   = UPPER(TRIM(@municipio)),
  numero_candidato_doador     = UPPER(TRIM(@numero_candidato_doador)),
  numero_candidato            = UPPER(TRIM(@numero_candidato)),
  numero_documento            = UPPER(TRIM(@numero_documento)),
  numero_partido_doador       = UPPER(TRIM(@numero_partido_doador)),
  numero_recibo_eleitoral     = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato        = UPPER(TRIM(@sequencial_candidato)),
  setor_economico_doador      = UPPER(TRIM(@setor_economico_doador)),
  sigla_partido               = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador             = UPPER(TRIM(@sigla_ue_doador)),
  sigla_ue                    = UPPER(TRIM(@sigla_ue)),
  sigla_uf                    = UPPER(TRIM(@sigla_uf)),
  tipo_receita                = UPPER(TRIM(@tipo_receita)),
  valor_receita               = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2012/prestacao_final_2012/receitas_comites_2012_brasil.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @sequencial_comite,
  @uf,
  @sigla_ue,
  @municipio,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                         = '2012',
  cod_eleicao                 = UPPER(TRIM(@cod_eleicao)),
  cpf_cnpj_doador             = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora                   = UPPER(TRIM(@data_hora)),
  data_receita                = UPPER(TRIM(@data_receita)),
  desc_eleicao                = UPPER(TRIM(@desc_eleicao)),
  descricao_receita           = UPPER(TRIM(@descricao_receita)),
  especie_recurso             = UPPER(TRIM(@especie_recurso)),
  fonte_recurso               = UPPER(TRIM(@fonte_recurso)),
  municipio                   = UPPER(TRIM(@municipio)),
  nome_doador_receita_federal = UPPER(TRIM(@nome_doador_receita_federal)),
  nome_doador                 = UPPER(TRIM(@nome_doador)),
  numero_documento            = UPPER(TRIM(@numero_documento)),
  sequencial_comite           = UPPER(TRIM(@sequencial_comite)),
  setor_economico_doador      = UPPER(TRIM(@setor_economico_doador)),
  sigla_partido               = UPPER(TRIM(@sigla_partido)),
  sigla_ue                    = UPPER(TRIM(@sigla_ue)),
  tipo_comite                 = UPPER(TRIM(@tipo_comite)),
  tipo_documento              = UPPER(TRIM(@tipo_documento)),
  tipo_receita                = UPPER(TRIM(@tipo_receita)),
  uf                          = UPPER(TRIM(@uf)),
  valor_receita               = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2012/prestacao_final_2012/receitas_partidos_2012_brasil.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @sequencial_diretorio,
  @uf,
  @cod_municipio,
  @municipio,
  @tipo_diretorio,
  @sigla_partido,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @sigla_ue_doador,
  @numero_partido_doador,
  @numero_candidato_doador,
  @cod_setor_economico_doador,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita
)
SET
  ano                         = '2012',
  cod_eleicao                 = UPPER(TRIM(@cod_eleicao)),
  cod_setor_economico_doador  = UPPER(TRIM(@cod_setor_economico_doador)),
  cpf_cnpj_doador             = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora                   = UPPER(TRIM(@data_hora)),
  data_receita                = UPPER(TRIM(@data_receita)),
  desc_eleicao                = UPPER(TRIM(@desc_eleicao)),
  descricao_receita           = UPPER(TRIM(@descricao_receita)),
  especie_recurso             = UPPER(TRIM(@especie_recurso)),
  fonte_recurso               = UPPER(TRIM(@fonte_recurso)),
  municipio                   = UPPER(TRIM(@municipio)),
  nome_doador_receita_federal = UPPER(TRIM(@nome_doador_receita_federal)),
  nome_doador                 = UPPER(TRIM(@nome_doador)),
  numero_candidato_doador     = UPPER(TRIM(@numero_candidato_doador)),
  numero_documento            = UPPER(TRIM(@numero_documento)),
  numero_partido_doador       = UPPER(TRIM(@numero_partido_doador)),
  numero_recibo_eleitoral     = UPPER(TRIM(@numero_recibo_eleitoral)),
  cod_municipio               = UPPER(TRIM(@cod_municipio)),
  sequencial_diretorio        = UPPER(TRIM(@sequencial_diretorio)),
  setor_economico_doador      = UPPER(TRIM(@setor_economico_doador)),
  sigla_partido               = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador             = UPPER(TRIM(@sigla_ue_doador)),
  tipo_diretorio              = UPPER(TRIM(@tipo_diretorio)),
  tipo_receita                = UPPER(TRIM(@tipo_receita)),
  uf                          = UPPER(TRIM(@uf)),
  valor_receita               = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

SELECT 'Importando prestacoes de contas de 2014...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2014/prestacao_final_2014/receitas_candidatos_2014_brasil.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @cnpj_prestador_conta,
  @sequencial_candidato,
  @uf,
  @sigla_partido,
  @numero_candidato,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @sigla_ue_doador,
  @numero_partido_doador,
  @numero_candidato_doador,
  @cod_setor_economico_doador,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita,
  @cpf_cnpj_doador_originario,
  @nome_doador_originario,
  @tipo_doador_originario,
  @setor_economico_doador_originario,
  @nome_doador_originario_receita_federal
)
SET
  ano                                    = '2014',
  cargo                                  = UPPER(TRIM(@cargo)),
  cnpj_prestador_conta                   = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_eleicao                            = UPPER(TRIM(@cod_eleicao)),
  cod_setor_economico_doador             = UPPER(TRIM(@cod_setor_economico_doador)),
  cpf_candidato                          = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador_originario             = UPPER(TRIM(@cpf_cnpj_doador_originario)),
  cpf_cnpj_doador                        = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora                              = UPPER(TRIM(@data_hora)),
  data_receita                           = UPPER(TRIM(@data_receita)),
  desc_eleicao                           = UPPER(TRIM(@desc_eleicao)),
  descricao_receita                      = UPPER(TRIM(@descricao_receita)),
  especie_recurso                        = UPPER(TRIM(@especie_recurso)),
  fonte_recurso                          = UPPER(TRIM(@fonte_recurso)),
  nome_candidato                         = UPPER(TRIM(@nome_candidato)),
  nome_doador_originario                 = UPPER(TRIM(@nome_doador_originario)),
  nome_doador_originario_receita_federal = UPPER(TRIM(@nome_doador_originario_receita_federal)),
  nome_doador_receita_federal            = UPPER(TRIM(@nome_doador_receita_federal)),
  nome_doador                            = UPPER(TRIM(@nome_doador)),
  numero_candidato_doador                = UPPER(TRIM(@numero_candidato_doador)),
  numero_documento                       = UPPER(TRIM(@numero_documento)),
  numero_partido_doador                  = UPPER(TRIM(@numero_partido_doador)),
  numero_candidato                       = UPPER(TRIM(@numero_candidato)),
  numero_recibo_eleitoral                = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato                   = UPPER(TRIM(@sequencial_candidato)),
  setor_economico_doador_originario      = UPPER(TRIM(@setor_economico_doador_originario)),
  setor_economico_doador                 = UPPER(TRIM(@setor_economico_doador)),
  sigla_partido                          = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador                        = UPPER(TRIM(@sigla_ue_doador)),
  tipo_doador_originario                 = UPPER(TRIM(@tipo_doador_originario)),
  tipo_receita                           = UPPER(TRIM(@tipo_receita)),
  uf                                     = UPPER(TRIM(@uf)),
  valor_receita                          = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2014/prestacao_final_2014/receitas_comites_2014_brasil.txt'
INTO TABLE receitas_comites
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @cnpj_prestador_conta,
  @sequencial_comite,
  @uf,
  @tipo_comite,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @sigla_ue_doador,
  @numero_partido_doador,
  @numero_candidato_doador,
  @cod_setor_economico_doador,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita,
  @cpf_cnpj_doador_originario,
  @nome_doador_originario,
  @tipo_doador_originario,
  @setor_economico_doador_originario,
  @nome_doador_originario_receita_federal
)
SET
  ano                                    = '2014',
  cnpj_prestador_conta                   = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_eleicao                            = UPPER(TRIM(@cod_eleicao)),
  cod_setor_economico_doador             = UPPER(TRIM(@cod_setor_economico_doador)),
  cpf_cnpj_doador                        = UPPER(TRIM(@cpf_cnpj_doador)),
  cpf_cnpj_doador_originario             = UPPER(TRIM(@cpf_cnpj_doador_originario)),
  data_hora                              = UPPER(TRIM(@data_hora)),
  data_receita                           = UPPER(TRIM(@data_receita)),
  desc_eleicao                           = UPPER(TRIM(@desc_eleicao)),
  descricao_receita                      = UPPER(TRIM(@descricao_receita)),
  especie_recurso                        = UPPER(TRIM(@especie_recurso)),
  fonte_recurso                          = UPPER(TRIM(@fonte_recurso)),
  nome_doador                            = UPPER(TRIM(@nome_doador)),
  nome_doador_originario                 = UPPER(TRIM(@nome_doador_originario)),
  nome_doador_originario_receita_federal = UPPER(TRIM(@nome_doador_originario_receita_federal)),
  nome_doador_receita_federal            = UPPER(TRIM(@nome_doador_receita_federal)),
  numero_candidato_doador                = UPPER(TRIM(@numero_candidato_doador)),
  numero_documento                       = UPPER(TRIM(@numero_documento)),
  numero_partido_doador                  = UPPER(TRIM(@numero_partido_doador)),
  sequencial_comite                      = UPPER(TRIM(@sequencial_comite)),
  setor_economico_doador                 = UPPER(TRIM(@setor_economico_doador)),
  setor_economico_doador_originario      = UPPER(TRIM(@setor_economico_doador_originario)),
  sigla_partido                          = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador                        = UPPER(TRIM(@sigla_ue_doador)),
  tipo_comite                            = UPPER(TRIM(@tipo_comite)),
  tipo_doador_originario                 = UPPER(TRIM(@tipo_doador_originario)),
  tipo_documento                         = UPPER(TRIM(@tipo_documento)),
  tipo_receita                           = UPPER(TRIM(@tipo_receita)),
  uf                                     = UPPER(TRIM(@uf)),
  valor_receita                          = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2014/prestacao_final_2014/receitas_partidos_2014_brasil.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @cnpj_prestador_conta,
  @sequencial_diretorio,
  @uf,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @sigla_ue_doador,
  @numero_partido_doador,
  @numero_candidato_doador,
  @cod_setor_economico_doador,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita,
  @cpf_cnpj_doador_originario,
  @nome_doador_originario,
  @tipo_doador_originario,
  @setor_economico_doador_originario,
  @nome_doador_originario_receita_federal
)
SET
  ano                                    = '2014',
  cnpj_prestador_conta                   = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_eleicao                            = UPPER(TRIM(@cod_eleicao)),
  cod_setor_economico_doador             = UPPER(TRIM(@cod_setor_economico_doador)),
  cpf_cnpj_doador                        = UPPER(TRIM(@cpf_cnpj_doador)),
  cpf_cnpj_doador_originario             = UPPER(TRIM(@cpf_cnpj_doador_originario)),
  data_hora                              = UPPER(TRIM(@data_hora)),
  data_receita                           = UPPER(TRIM(@data_receita)),
  desc_eleicao                           = UPPER(TRIM(@desc_eleicao)),
  descricao_receita                      = UPPER(TRIM(@descricao_receita)),
  especie_recurso                        = UPPER(TRIM(@especie_recurso)),
  fonte_recurso                          = UPPER(TRIM(@fonte_recurso)),
  nome_doador                            = UPPER(TRIM(@nome_doador)),
  nome_doador_originario                 = UPPER(TRIM(@nome_doador_originario)),
  nome_doador_originario_receita_federal = UPPER(TRIM(@nome_doador_originario_receita_federal)),
  nome_doador_receita_federal            = UPPER(TRIM(@nome_doador_receita_federal)),
  numero_candidato_doador                = UPPER(TRIM(@numero_candidato_doador)),
  numero_documento                       = UPPER(TRIM(@numero_documento)),
  numero_partido_doador                  = UPPER(TRIM(@numero_partido_doador)),
  sequencial_diretorio                   = UPPER(TRIM(@sequencial_diretorio)),
  setor_economico_doador                 = UPPER(TRIM(@setor_economico_doador)),
  setor_economico_doador_originario      = UPPER(TRIM(@setor_economico_doador_originario)),
  sigla_partido                          = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador                        = UPPER(TRIM(@sigla_ue_doador)),
  tipo_diretorio                         = UPPER(TRIM(@tipo_diretorio)),
  tipo_doador_originario                 = UPPER(TRIM(@tipo_doador_originario)),
  tipo_documento                         = UPPER(TRIM(@tipo_documento)),
  tipo_receita                           = UPPER(TRIM(@tipo_receita)),
  uf                                     = UPPER(TRIM(@uf)),
  valor_receita                          = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

SELECT 'Importando prestacoes de contas de 2016...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2016/prestacao_contas_final_2016/receitas_candidatos_prestacao_contas_final_2016_brasil.txt'
INTO TABLE receitas_candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @cnpj_prestador_conta,
  @sequencial_candidato,
  @uf,
  @sigla_ue,
  @municipio,
  @sigla_partido,
  @numero_partido,
  @cargo,
  @nome_candidato,
  @cpf_candidato,
  @cpf_vice_suplente,
  @numero_recibo_eleitoral,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @sigla_ue_doador,
  @numero_partido_doador,
  @numero_candidato_doador,
  @cod_setor_economico_doador,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita,
  @cpf_cnpj_doador_originario,
  @nome_doador_originario,
  @tipo_doador_originario,
  @setor_economico_doador_originario,
  @nome_doador_receita_federal
)
SET
  ano                               = '2016',
  cargo                             = UPPER(TRIM(@cargo)),
  cnpj_prestador_conta              = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_eleicao                       = UPPER(TRIM(@cod_eleicao)),
  cod_setor_economico_doador        = UPPER(TRIM(@cod_setor_economico_doador)),
  cpf_candidato                     = UPPER(TRIM(@cpf_candidato)),
  cpf_cnpj_doador_originario        = UPPER(TRIM(@cpf_cnpj_doador_originario)),
  cpf_cnpj_doador                   = UPPER(TRIM(@cpf_cnpj_doador)),
  cpf_vice_suplente                 = UPPER(TRIM(@cpf_vice_suplente)),
  data_hora                         = UPPER(TRIM(@data_hora)),
  data_receita                      = UPPER(TRIM(@data_receita)),
  desc_eleicao                      = UPPER(TRIM(@desc_eleicao)),
  descricao_receita                 = UPPER(TRIM(@descricao_receita)),
  especie_recurso                   = UPPER(TRIM(@especie_recurso)),
  fonte_recurso                     = UPPER(TRIM(@fonte_recurso)),
  municipio                         = UPPER(TRIM(@municipio)),
  nome_candidato                    = UPPER(TRIM(@nome_candidato)),
  nome_doador_originario            = UPPER(TRIM(@nome_doador_originario)),
  nome_doador_receita_federal       = UPPER(TRIM(@nome_doador_receita_federal)),
  nome_doador_receita_federal       = UPPER(TRIM(@nome_doador_receita_federal)),
  nome_doador                       = UPPER(TRIM(@nome_doador)),
  numero_candidato_doador           = UPPER(TRIM(@numero_candidato_doador)),
  numero_documento                  = UPPER(TRIM(@numero_documento)),
  numero_partido_doador             = UPPER(TRIM(@numero_partido_doador)),
  numero_partido                    = UPPER(TRIM(@numero_partido)),
  numero_recibo_eleitoral           = UPPER(TRIM(@numero_recibo_eleitoral)),
  sequencial_candidato              = UPPER(TRIM(@sequencial_candidato)),
  setor_economico_doador_originario = UPPER(TRIM(@setor_economico_doador_originario)),
  setor_economico_doador            = UPPER(TRIM(@setor_economico_doador)),
  sigla_partido                     = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador                   = UPPER(TRIM(@sigla_ue_doador)),
  sigla_ue                          = UPPER(TRIM(@sigla_ue)),
  tipo_doador_originario            = UPPER(TRIM(@tipo_doador_originario)),
  tipo_receita                      = UPPER(TRIM(@tipo_receita)),
  uf                                = UPPER(TRIM(@uf)),
  valor_receita                     = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL INFILE 'fontes_tse/2016/prestacao_contas_final_2016/receitas_partidos_prestacao_contas_final_2016_brasil.txt'
INTO TABLE receitas_partidos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
  @cod_eleicao,
  @desc_eleicao,
  @data_hora,
  @cnpj_prestador_conta,
  @sequencial_diretorio,
  @uf,
  @sigla_ue,
  @municipio,
  @tipo_diretorio,
  @sigla_partido,
  @tipo_documento,
  @numero_documento,
  @cpf_cnpj_doador,
  @nome_doador,
  @nome_doador_receita_federal,
  @sigla_ue_doador,
  @numero_partido_doador,
  @numero_candidato_doador,
  @cod_setor_economico_doador,
  @setor_economico_doador,
  @data_receita,
  @valor_receita,
  @tipo_receita,
  @fonte_recurso,
  @especie_recurso,
  @descricao_receita,
  @cpf_cnpj_doador_originario,
  @nome_doador_originario,
  @tipo_doador_originario,
  @setor_economico_doador_originario,
  @nome_doador_originario_receita_federal
)
SET
  ano                                    = '2016',
  cnpj_prestador_conta                   = UPPER(TRIM(@cnpj_prestador_conta)),
  cod_eleicao                            = UPPER(TRIM(@cod_eleicao)),
  cod_setor_economico_doador             = UPPER(TRIM(@cod_setor_economico_doador)),
  cpf_cnpj_doador_originario             = UPPER(TRIM(@cpf_cnpj_doador_originario)),
  cpf_cnpj_doador                        = UPPER(TRIM(@cpf_cnpj_doador)),
  data_hora                              = UPPER(TRIM(@data_hora)),
  data_receita                           = UPPER(TRIM(@data_receita)),
  desc_eleicao                           = UPPER(TRIM(@desc_eleicao)),
  descricao_receita                      = UPPER(TRIM(@descricao_receita)),
  especie_recurso                        = UPPER(TRIM(@especie_recurso)),
  fonte_recurso                          = UPPER(TRIM(@fonte_recurso)),
  municipio                              = UPPER(TRIM(@municipio)),
  nome_doador_originario_receita_federal = UPPER(TRIM(@nome_doador_originario_receita_federal)),
  nome_doador_originario                 = UPPER(TRIM(@nome_doador_originario)),
  nome_doador_receita_federal            = UPPER(TRIM(@nome_doador_receita_federal)),
  nome_doador                            = UPPER(TRIM(@nome_doador)),
  numero_candidato_doador                = UPPER(TRIM(@numero_candidato_doador)),
  numero_documento                       = UPPER(TRIM(@numero_documento)),
  numero_partido_doador                  = UPPER(TRIM(@numero_partido_doador)),
  sequencial_diretorio                   = UPPER(TRIM(@sequencial_diretorio)),
  setor_economico_doador_originario      = UPPER(TRIM(@setor_economico_doador_originario)),
  setor_economico_doador                 = UPPER(TRIM(@setor_economico_doador)),
  sigla_partido                          = UPPER(TRIM(@sigla_partido)),
  sigla_ue_doador                        = UPPER(TRIM(@sigla_ue_doador)),
  sigla_ue                               = UPPER(TRIM(@sigla_ue)),
  tipo_diretorio                         = UPPER(TRIM(@tipo_diretorio)),
  tipo_doador_originario                 = UPPER(TRIM(@tipo_doador_originario)),
  tipo_documento                         = UPPER(TRIM(@tipo_documento)),
  tipo_receita                           = UPPER(TRIM(@tipo_receita)),
  uf                                     = UPPER(TRIM(@uf)),
  valor_receita                          = IF(TRIM(@valor_receita) = '', NULL, REPLACE(TRIM(@valor_receita), ',', '.'));
SHOW WARNINGS;

SELECT 'Fim das importações das receitas' AS '>';

SELECT 'Iniciando importações dos candidatos...' AS '>';

SELECT 'Importando candidatos de 1996...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/1996/consulta_cand_1996.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 1998...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/1998/consulta_cand_1998.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2000...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2000/consulta_cand_2000.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2002...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2002/consulta_cand_2002.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2004...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2004/consulta_cand_2004.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2006...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2006/consulta_cand_2006.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2008...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2008/consulta_cand_2008.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2010...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2010/consulta_cand_2010.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO
)
SET
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2012...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2012/consulta_cand_2012.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO,
  @NM_EMAIL
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NM_EMAIL                       = UPPER(TRIM(@NM_EMAIL)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2014...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2014/consulta_cand_2014.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_COR_RACA,
  @DESCRICAO_COR_RACA,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO,
  @NM_EMAIL
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_COR_RACA                = UPPER(TRIM(@CODIGO_COR_RACA)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_COR_RACA             = UPPER(TRIM(@DESCRICAO_COR_RACA)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NM_EMAIL                       = UPPER(TRIM(@NM_EMAIL)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Importando candidatos de 2016...' AS '>';

LOAD DATA LOCAL INFILE 'fontes_tse/2016/consulta_cand_2016.csv'
INTO TABLE candidatos
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
(
  @DATA_GERACAO,
  @HORA_GERACAO,
  @ANO_ELEICAO,
  @NUM_TURNO,
  @DESCRICAO_ELEICAO,
  @SIGLA_UF,
  @SIGLA_UE,
  @DESCRICAO_UE,
  @CODIGO_CARGO,
  @DESCRICAO_CARGO,
  @NOME_CANDIDATO,
  @SEQUENCIAL_CANDIDATO,
  @NUMERO_CANDIDATO,
  @CPF_CANDIDATO,
  @NOME_URNA_CANDIDATO,
  @COD_SITUACAO_CANDIDATURA,
  @DES_SITUACAO_CANDIDATURA,
  @NUMERO_PARTIDO,
  @SIGLA_PARTIDO,
  @NOME_PARTIDO,
  @CODIGO_LEGENDA,
  @SIGLA_LEGENDA,
  @COMPOSICAO_LEGENDA,
  @NOME_LEGENDA,
  @CODIGO_OCUPACAO,
  @DESCRICAO_OCUPACAO,
  @DATA_NASCIMENTO,
  @NUM_TITULO_ELEITORAL_CANDIDATO,
  @IDADE_DATA_ELEICAO,
  @CODIGO_SEXO,
  @DESCRICAO_SEXO,
  @COD_GRAU_INSTRUCAO,
  @DESCRICAO_GRAU_INSTRUCAO,
  @CODIGO_ESTADO_CIVIL,
  @DESCRICAO_ESTADO_CIVIL,
  @CODIGO_COR_RACA,
  @DESCRICAO_COR_RACA,
  @CODIGO_NACIONALIDADE,
  @DESCRICAO_NACIONALIDADE,
  @SIGLA_UF_NASCIMENTO,
  @CODIGO_MUNICIPIO_NASCIMENTO,
  @NOME_MUNICIPIO_NASCIMENTO,
  @DESPESA_MAX_CAMPANHA,
  @COD_SIT_TOT_TURNO,
  @DESC_SIT_TOT_TURNO,
  @NM_EMAIL
)
SET
  ANO_ELEICAO                    = UPPER(TRIM(@ANO_ELEICAO)),
  COD_GRAU_INSTRUCAO             = UPPER(TRIM(@COD_GRAU_INSTRUCAO)),
  COD_SIT_TOT_TURNO              = UPPER(TRIM(@COD_SIT_TOT_TURNO)),
  COD_SITUACAO_CANDIDATURA       = UPPER(TRIM(@COD_SITUACAO_CANDIDATURA)),
  CODIGO_CARGO                   = UPPER(TRIM(@CODIGO_CARGO)),
  CODIGO_COR_RACA                = UPPER(TRIM(@CODIGO_COR_RACA)),
  CODIGO_ESTADO_CIVIL            = UPPER(TRIM(@CODIGO_ESTADO_CIVIL)),
  CODIGO_LEGENDA                 = UPPER(TRIM(@CODIGO_LEGENDA)),
  CODIGO_MUNICIPIO_NASCIMENTO    = UPPER(TRIM(@CODIGO_MUNICIPIO_NASCIMENTO)),
  CODIGO_NACIONALIDADE           = UPPER(TRIM(@CODIGO_NACIONALIDADE)),
  CODIGO_OCUPACAO                = UPPER(TRIM(@CODIGO_OCUPACAO)),
  CODIGO_SEXO                    = UPPER(TRIM(@CODIGO_SEXO)),
  COMPOSICAO_LEGENDA             = UPPER(TRIM(@COMPOSICAO_LEGENDA)),
  CPF_CANDIDATO                  = UPPER(TRIM(@CPF_CANDIDATO)),
  DATA_GERACAO                   = UPPER(TRIM(@DATA_GERACAO)),
  DATA_NASCIMENTO                = UPPER(TRIM(@DATA_NASCIMENTO)),
  DES_SITUACAO_CANDIDATURA       = UPPER(TRIM(@DES_SITUACAO_CANDIDATURA)),
  DESC_SIT_TOT_TURNO             = UPPER(TRIM(@DESC_SIT_TOT_TURNO)),
  DESCRICAO_CARGO                = UPPER(TRIM(@DESCRICAO_CARGO)),
  DESCRICAO_COR_RACA             = UPPER(TRIM(@DESCRICAO_COR_RACA)),
  DESCRICAO_ELEICAO              = UPPER(TRIM(@DESCRICAO_ELEICAO)),
  DESCRICAO_ESTADO_CIVIL         = UPPER(TRIM(@DESCRICAO_ESTADO_CIVIL)),
  DESCRICAO_GRAU_INSTRUCAO       = UPPER(TRIM(@DESCRICAO_GRAU_INSTRUCAO)),
  DESCRICAO_NACIONALIDADE        = UPPER(TRIM(@DESCRICAO_NACIONALIDADE)),
  DESCRICAO_OCUPACAO             = UPPER(TRIM(@DESCRICAO_OCUPACAO)),
  DESCRICAO_SEXO                 = UPPER(TRIM(@DESCRICAO_SEXO)),
  DESCRICAO_UE                   = UPPER(TRIM(@DESCRICAO_UE)),
  DESPESA_MAX_CAMPANHA           = UPPER(TRIM(@DESPESA_MAX_CAMPANHA)),
  HORA_GERACAO                   = UPPER(TRIM(@HORA_GERACAO)),
  IDADE_DATA_ELEICAO             = UPPER(TRIM(@IDADE_DATA_ELEICAO)),
  NM_EMAIL                       = UPPER(TRIM(@NM_EMAIL)),
  NOME_CANDIDATO                 = UPPER(TRIM(@NOME_CANDIDATO)),
  NOME_LEGENDA                   = UPPER(TRIM(@NOME_LEGENDA)),
  NOME_MUNICIPIO_NASCIMENTO      = UPPER(TRIM(@NOME_MUNICIPIO_NASCIMENTO)),
  NOME_PARTIDO                   = UPPER(TRIM(@NOME_PARTIDO)),
  NOME_URNA_CANDIDATO            = UPPER(TRIM(@NOME_URNA_CANDIDATO)),
  NUM_TITULO_ELEITORAL_CANDIDATO = UPPER(TRIM(@NUM_TITULO_ELEITORAL_CANDIDATO)),
  NUM_TURNO                      = UPPER(TRIM(@NUM_TURNO)),
  NUMERO_CANDIDATO               = UPPER(TRIM(@NUMERO_CANDIDATO)),
  NUMERO_PARTIDO                 = UPPER(TRIM(@NUMERO_PARTIDO)),
  SEQUENCIAL_CANDIDATO           = UPPER(TRIM(@SEQUENCIAL_CANDIDATO)),
  SIGLA_LEGENDA                  = UPPER(TRIM(@SIGLA_LEGENDA)),
  SIGLA_PARTIDO                  = UPPER(TRIM(@SIGLA_PARTIDO)),
  SIGLA_UE                       = UPPER(TRIM(@SIGLA_UE)),
  SIGLA_UF_NASCIMENTO            = UPPER(TRIM(@SIGLA_UF_NASCIMENTO)),
  SIGLA_UF                       = UPPER(TRIM(@SIGLA_UF));
SHOW WARNINGS;

SELECT 'Fim das importações dos candidatos' AS '>';

SELECT 'Substituindo células vazias por NULLs...' AS '>';

UPDATE receitas_candidatos
SET ano = NULL
WHERE ano = '';

UPDATE receitas_candidatos
SET cargo = NULL
WHERE cargo = '';

UPDATE receitas_candidatos
SET cnpj_prestador_conta = NULL
WHERE cnpj_prestador_conta = '';

UPDATE receitas_candidatos
SET cod_cargo = NULL
WHERE cod_cargo = '';

UPDATE receitas_candidatos
SET cod_eleicao = NULL
WHERE cod_eleicao = '';

UPDATE receitas_candidatos
SET cod_fonte_recurso = NULL
WHERE cod_fonte_recurso = '';

UPDATE receitas_candidatos
SET cod_municipio = NULL
WHERE cod_municipio = '';

UPDATE receitas_candidatos
SET cod_setor_economico_doador = NULL
WHERE cod_setor_economico_doador = '';

UPDATE receitas_candidatos
SET cod_tipo_receita = NULL
WHERE cod_tipo_receita = '';

UPDATE receitas_candidatos
SET cpf_adm_financeiro = NULL
WHERE cpf_adm_financeiro = '';

UPDATE receitas_candidatos
SET cpf_candidato = NULL
WHERE cpf_candidato = '';

UPDATE receitas_candidatos
SET cpf_vice_suplente = NULL
WHERE cpf_vice_suplente = '';

UPDATE receitas_candidatos
SET cpf_cnpj_doador_originario = NULL
WHERE cpf_cnpj_doador_originario = '';

UPDATE receitas_candidatos
SET cpf_cnpj_doador = NULL
WHERE cpf_cnpj_doador = '';

UPDATE receitas_candidatos
SET data_hora = NULL
WHERE data_hora = '';

UPDATE receitas_candidatos
SET data_receita = NULL
WHERE data_receita = '';

UPDATE receitas_candidatos
SET desc_eleicao = NULL
WHERE desc_eleicao = '';

UPDATE receitas_candidatos
SET descricao_receita = NULL
WHERE descricao_receita = '';

UPDATE receitas_candidatos
SET entrega_conjunto = NULL
WHERE entrega_conjunto = '';

UPDATE receitas_candidatos
SET especie_recurso = NULL
WHERE especie_recurso = '';

UPDATE receitas_candidatos
SET fonte_recurso = NULL
WHERE fonte_recurso = '';

UPDATE receitas_candidatos
SET municipio = NULL
WHERE municipio = '';

UPDATE receitas_candidatos
SET nome_adm_financeiro = NULL
WHERE nome_adm_financeiro = '';

UPDATE receitas_candidatos
SET nome_candidato = NULL
WHERE nome_candidato = '';

UPDATE receitas_candidatos
SET nome_doador_originario_receita_federal = NULL
WHERE nome_doador_originario_receita_federal = '';

UPDATE receitas_candidatos
SET nome_doador_originario = NULL
WHERE nome_doador_originario = '';

UPDATE receitas_candidatos
SET nome_doador_receita_federal = NULL
WHERE nome_doador_receita_federal = '';

UPDATE receitas_candidatos
SET nome_doador = NULL
WHERE nome_doador = '';

UPDATE receitas_candidatos
SET numero_candidato_doador = NULL
WHERE numero_candidato_doador = '';

UPDATE receitas_candidatos
SET numero_candidato = NULL
WHERE numero_candidato = '';

UPDATE receitas_candidatos
SET numero_documento = NULL
WHERE numero_documento = '';

UPDATE receitas_candidatos
SET numero_partido_doador = NULL
WHERE numero_partido_doador = '';

UPDATE receitas_candidatos
SET numero_partido = NULL
WHERE numero_partido = '';

UPDATE receitas_candidatos
SET numero_recibo_eleitoral = NULL
WHERE numero_recibo_eleitoral = '';

UPDATE receitas_candidatos
SET sequencial_candidato = NULL
WHERE sequencial_candidato = '';

UPDATE receitas_candidatos
SET setor_economico_doador_originario = NULL
WHERE setor_economico_doador_originario = '';

UPDATE receitas_candidatos
SET setor_economico_doador = NULL
WHERE setor_economico_doador = '';

UPDATE receitas_candidatos
SET sexo = NULL
WHERE sexo = '';

UPDATE receitas_candidatos
SET sigla_partido = NULL
WHERE sigla_partido = '';

UPDATE receitas_candidatos
SET sigla_ue_doador = NULL
WHERE sigla_ue_doador = '';

UPDATE receitas_candidatos
SET sigla_ue = NULL
WHERE sigla_ue = '';

UPDATE receitas_candidatos
SET sigla_uf_doador = NULL
WHERE sigla_uf_doador = '';

UPDATE receitas_candidatos
SET sigla_uf = NULL
WHERE sigla_uf = '';

UPDATE receitas_candidatos
SET situacao_cadastral = NULL
WHERE situacao_cadastral = '';

UPDATE receitas_candidatos
SET tipo_doador_originario = NULL
WHERE tipo_doador_originario = '';

UPDATE receitas_candidatos
SET tipo_receita = NULL
WHERE tipo_receita = '';

UPDATE receitas_candidatos
SET uf_doador = NULL
WHERE uf_doador = '';

UPDATE receitas_candidatos
SET uf = NULL
WHERE uf = '';

UPDATE receitas_candidatos
SET valor_receita = NULL
WHERE valor_receita = '';

UPDATE receitas_comites
SET ano = NULL
WHERE ano = '';

UPDATE receitas_comites
SET cnpj_prestador_conta = NULL
WHERE cnpj_prestador_conta = '';

UPDATE receitas_comites
SET cod_eleicao = NULL
WHERE cod_eleicao = '';

UPDATE receitas_comites
SET cod_fonte_recurso = NULL
WHERE cod_fonte_recurso = '';

UPDATE receitas_comites
SET cod_municipio = NULL
WHERE cod_municipio = '';

UPDATE receitas_comites
SET cod_setor_economico_doador = NULL
WHERE cod_setor_economico_doador = '';

UPDATE receitas_comites
SET cod_tipo_receita = NULL
WHERE cod_tipo_receita = '';

UPDATE receitas_comites
SET cod_especie_recurso = NULL
WHERE cod_especie_recurso = '';

UPDATE receitas_comites
SET cpf_cnpj_doador_originario = NULL
WHERE cpf_cnpj_doador_originario = '';

UPDATE receitas_comites
SET cpf_cnpj_doador = NULL
WHERE cpf_cnpj_doador = '';

UPDATE receitas_comites
SET cpf_presidente = NULL
WHERE cpf_presidente = '';

UPDATE receitas_comites
SET data_hora = NULL
WHERE data_hora = '';

UPDATE receitas_comites
SET data_receita = NULL
WHERE data_receita = '';

UPDATE receitas_comites
SET desc_eleicao = NULL
WHERE desc_eleicao = '';

UPDATE receitas_comites
SET descricao_receita = NULL
WHERE descricao_receita = '';

UPDATE receitas_comites
SET especie_recurso = NULL
WHERE especie_recurso = '';

UPDATE receitas_comites
SET fonte_recurso = NULL
WHERE fonte_recurso = '';

UPDATE receitas_comites
SET municipio = NULL
WHERE municipio = '';

UPDATE receitas_comites
SET nome_doador_originario_receita_federal = NULL
WHERE nome_doador_originario_receita_federal = '';

UPDATE receitas_comites
SET nome_doador_originario = NULL
WHERE nome_doador_originario = '';

UPDATE receitas_comites
SET nome_doador_receita_federal = NULL
WHERE nome_doador_receita_federal = '';

UPDATE receitas_comites
SET nome_doador = NULL
WHERE nome_doador = '';

UPDATE receitas_comites
SET nome_presidente = NULL
WHERE nome_presidente = '';

UPDATE receitas_comites
SET numero_candidato_doador = NULL
WHERE numero_candidato_doador = '';

UPDATE receitas_comites
SET numero_documento = NULL
WHERE numero_documento = '';

UPDATE receitas_comites
SET numero_partido_doador = NULL
WHERE numero_partido_doador = '';

UPDATE receitas_comites
SET numero_partido = NULL
WHERE numero_partido = '';

UPDATE receitas_comites
SET sequencial_comite = NULL
WHERE sequencial_comite = '';

UPDATE receitas_comites
SET setor_economico_doador_originario = NULL
WHERE setor_economico_doador_originario = '';

UPDATE receitas_comites
SET setor_economico_doador = NULL
WHERE setor_economico_doador = '';

UPDATE receitas_comites
SET sigla_partido = NULL
WHERE sigla_partido = '';

UPDATE receitas_comites
SET sigla_ue_doador = NULL
WHERE sigla_ue_doador = '';

UPDATE receitas_comites
SET sigla_ue = NULL
WHERE sigla_ue = '';

UPDATE receitas_comites
SET sigla_uf_doador = NULL
WHERE sigla_uf_doador = '';

UPDATE receitas_comites
SET sigla_uf = NULL
WHERE sigla_uf = '';

UPDATE receitas_comites
SET situacao_cadastral = NULL
WHERE situacao_cadastral = '';

UPDATE receitas_comites
SET tipo_comite = NULL
WHERE tipo_comite = '';

UPDATE receitas_comites
SET tipo_doador_originario = NULL
WHERE tipo_doador_originario = '';

UPDATE receitas_comites
SET tipo_documento = NULL
WHERE tipo_documento = '';

UPDATE receitas_comites
SET tipo_receita = NULL
WHERE tipo_receita = '';

UPDATE receitas_comites
SET uf = NULL
WHERE uf = '';

UPDATE receitas_comites
SET uf_doador = NULL
WHERE uf_doador = '';

UPDATE receitas_comites
SET valor_receita = NULL
WHERE valor_receita = '';

UPDATE receitas_partidos
SET ano = NULL
WHERE ano = '';

UPDATE receitas_partidos
SET cnpj_prestador_conta = NULL
WHERE cnpj_prestador_conta = '';

UPDATE receitas_partidos
SET cod_eleicao = NULL
WHERE cod_eleicao = '';

UPDATE receitas_partidos
SET cod_municipio = NULL
WHERE cod_municipio = '';

UPDATE receitas_partidos
SET cod_setor_economico_doador = NULL
WHERE cod_setor_economico_doador = '';

UPDATE receitas_partidos
SET cpf_cnpj_doador_originario = NULL
WHERE cpf_cnpj_doador_originario = '';

UPDATE receitas_partidos
SET cpf_cnpj_doador = NULL
WHERE cpf_cnpj_doador = '';

UPDATE receitas_partidos
SET data_hora = NULL
WHERE data_hora = '';

UPDATE receitas_partidos
SET data_receita = NULL
WHERE data_receita = '';

UPDATE receitas_partidos
SET desc_eleicao = NULL
WHERE desc_eleicao = '';

UPDATE receitas_partidos
SET descricao_receita = NULL
WHERE descricao_receita = '';

UPDATE receitas_partidos
SET especie_recurso = NULL
WHERE especie_recurso = '';

UPDATE receitas_partidos
SET fonte_recurso = NULL
WHERE fonte_recurso = '';

UPDATE receitas_partidos
SET municipio = NULL
WHERE municipio = '';

UPDATE receitas_partidos
SET nome_doador_originario_receita_federal = NULL
WHERE nome_doador_originario_receita_federal = '';

UPDATE receitas_partidos
SET nome_doador_originario = NULL
WHERE nome_doador_originario = '';

UPDATE receitas_partidos
SET nome_doador_receita_federal = NULL
WHERE nome_doador_receita_federal = '';

UPDATE receitas_partidos
SET nome_doador = NULL
WHERE nome_doador = '';

UPDATE receitas_partidos
SET numero_candidato_doador = NULL
WHERE numero_candidato_doador = '';

UPDATE receitas_partidos
SET numero_documento = NULL
WHERE numero_documento = '';

UPDATE receitas_partidos
SET numero_partido_doador = NULL
WHERE numero_partido_doador = '';

UPDATE receitas_partidos
SET numero_recibo_eleitoral = NULL
WHERE numero_recibo_eleitoral = '';

UPDATE receitas_partidos
SET sequencial_diretorio = NULL
WHERE sequencial_diretorio = '';

UPDATE receitas_partidos
SET setor_economico_doador_originario = NULL
WHERE setor_economico_doador_originario = '';

UPDATE receitas_partidos
SET setor_economico_doador = NULL
WHERE setor_economico_doador = '';

UPDATE receitas_partidos
SET sigla_partido = NULL
WHERE sigla_partido = '';

UPDATE receitas_partidos
SET sigla_ue_doador = NULL
WHERE sigla_ue_doador = '';

UPDATE receitas_partidos
SET sigla_ue = NULL
WHERE sigla_ue = '';

UPDATE receitas_partidos
SET tipo_diretorio = NULL
WHERE tipo_diretorio = '';

UPDATE receitas_partidos
SET tipo_doador_originario = NULL
WHERE tipo_doador_originario = '';

UPDATE receitas_partidos
SET tipo_documento = NULL
WHERE tipo_documento = '';

UPDATE receitas_partidos
SET tipo_receita = NULL
WHERE tipo_receita = '';

UPDATE receitas_partidos
SET uf = NULL
WHERE uf = '';

UPDATE receitas_partidos
SET valor_receita = NULL
WHERE valor_receita = '';

UPDATE candidatos
SET id = NULL
WHERE id = '';

UPDATE candidatos
SET DATA_GERACAO = NULL
WHERE DATA_GERACAO = '';

UPDATE candidatos
SET HORA_GERACAO = NULL
WHERE HORA_GERACAO = '';

UPDATE candidatos
SET ANO_ELEICAO = NULL
WHERE ANO_ELEICAO = '';

UPDATE candidatos
SET NUM_TURNO = NULL
WHERE NUM_TURNO = '';

UPDATE candidatos
SET DESCRICAO_ELEICAO = NULL
WHERE DESCRICAO_ELEICAO = '';

UPDATE candidatos
SET SIGLA_UF = NULL
WHERE SIGLA_UF = '';

UPDATE candidatos
SET SIGLA_UE = NULL
WHERE SIGLA_UE = '';

UPDATE candidatos
SET DESCRICAO_UE = NULL
WHERE DESCRICAO_UE = '';

UPDATE candidatos
SET CODIGO_CARGO = NULL
WHERE CODIGO_CARGO = '';

UPDATE candidatos
SET DESCRICAO_CARGO = NULL
WHERE DESCRICAO_CARGO = '';

UPDATE candidatos
SET NOME_CANDIDATO = NULL
WHERE NOME_CANDIDATO = '';

UPDATE candidatos
SET SEQUENCIAL_CANDIDATO = NULL
WHERE SEQUENCIAL_CANDIDATO = '';

UPDATE candidatos
SET NUMERO_CANDIDATO = NULL
WHERE NUMERO_CANDIDATO = '';

UPDATE candidatos
SET CPF_CANDIDATO = NULL
WHERE CPF_CANDIDATO = '';

UPDATE candidatos
SET NOME_URNA_CANDIDATO = NULL
WHERE NOME_URNA_CANDIDATO = '';

UPDATE candidatos
SET COD_SITUACAO_CANDIDATURA = NULL
WHERE COD_SITUACAO_CANDIDATURA = '';

UPDATE candidatos
SET DES_SITUACAO_CANDIDATURA = NULL
WHERE DES_SITUACAO_CANDIDATURA = '';

UPDATE candidatos
SET NUMERO_PARTIDO = NULL
WHERE NUMERO_PARTIDO = '';

UPDATE candidatos
SET SIGLA_PARTIDO = NULL
WHERE SIGLA_PARTIDO = '';

UPDATE candidatos
SET NOME_PARTIDO = NULL
WHERE NOME_PARTIDO = '';

UPDATE candidatos
SET CODIGO_LEGENDA = NULL
WHERE CODIGO_LEGENDA = '';

UPDATE candidatos
SET SIGLA_LEGENDA = NULL
WHERE SIGLA_LEGENDA = '';

UPDATE candidatos
SET COMPOSICAO_LEGENDA = NULL
WHERE COMPOSICAO_LEGENDA = '';

UPDATE candidatos
SET NOME_LEGENDA = NULL
WHERE NOME_LEGENDA = '';

UPDATE candidatos
SET CODIGO_OCUPACAO = NULL
WHERE CODIGO_OCUPACAO = '';

UPDATE candidatos
SET DESCRICAO_OCUPACAO = NULL
WHERE DESCRICAO_OCUPACAO = '';

UPDATE candidatos
SET DATA_NASCIMENTO = NULL
WHERE DATA_NASCIMENTO = '';

UPDATE candidatos
SET NUM_TITULO_ELEITORAL_CANDIDATO = NULL
WHERE NUM_TITULO_ELEITORAL_CANDIDATO = '';

UPDATE candidatos
SET IDADE_DATA_ELEICAO = NULL
WHERE IDADE_DATA_ELEICAO = '';

UPDATE candidatos
SET CODIGO_SEXO = NULL
WHERE CODIGO_SEXO = '';

UPDATE candidatos
SET DESCRICAO_SEXO = NULL
WHERE DESCRICAO_SEXO = '';

UPDATE candidatos
SET COD_GRAU_INSTRUCAO = NULL
WHERE COD_GRAU_INSTRUCAO = '';

UPDATE candidatos
SET DESCRICAO_GRAU_INSTRUCAO = NULL
WHERE DESCRICAO_GRAU_INSTRUCAO = '';

UPDATE candidatos
SET CODIGO_ESTADO_CIVIL = NULL
WHERE CODIGO_ESTADO_CIVIL = '';

UPDATE candidatos
SET DESCRICAO_ESTADO_CIVIL = NULL
WHERE DESCRICAO_ESTADO_CIVIL = '';

UPDATE candidatos
SET CODIGO_COR_RACA = NULL
WHERE CODIGO_COR_RACA = '';

UPDATE candidatos
SET DESCRICAO_COR_RACA = NULL
WHERE DESCRICAO_COR_RACA = '';

UPDATE candidatos
SET CODIGO_NACIONALIDADE = NULL
WHERE CODIGO_NACIONALIDADE = '';

UPDATE candidatos
SET DESCRICAO_NACIONALIDADE = NULL
WHERE DESCRICAO_NACIONALIDADE = '';

UPDATE candidatos
SET SIGLA_UF_NASCIMENTO = NULL
WHERE SIGLA_UF_NASCIMENTO = '';

UPDATE candidatos
SET CODIGO_MUNICIPIO_NASCIMENTO = NULL
WHERE CODIGO_MUNICIPIO_NASCIMENTO = '';

UPDATE candidatos
SET NOME_MUNICIPIO_NASCIMENTO = NULL
WHERE NOME_MUNICIPIO_NASCIMENTO = '';

UPDATE candidatos
SET DESPESA_MAX_CAMPANHA = NULL
WHERE DESPESA_MAX_CAMPANHA = '';

UPDATE candidatos
SET COD_SIT_TOT_TURNO = NULL
WHERE COD_SIT_TOT_TURNO = '';

UPDATE candidatos
SET DESC_SIT_TOT_TURNO = NULL
WHERE DESC_SIT_TOT_TURNO = '';

UPDATE candidatos
SET NM_EMAIL = NULL
WHERE NM_EMAIL = '';

SELECT 'Substituíçõess de células vazias por NULLs finalizadas' AS '>';

SELECT 'FIM' AS '>';

