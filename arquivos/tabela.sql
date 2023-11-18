
CREATE TABLE alocacao (
    id INTEGER PRIMARY KEY,
    area INTEGER,
    automovel INTEGER,
    concessionaria INTEGER,
    quantidade INTEGER
);

CREATE TABLE automoveis (
    id INTEGER PRIMARY KEY,
    modelo VARCHAR(255),
    preco VARCHAR(255)
);

CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE concessionarias (
    id INTEGER PRIMARY KEY,
    concessionaria VARCHAR(255)
);
 
ALTER TABLE alocacao ADD CONSTRAINT FK_alocacao_2
    FOREIGN KEY (automovel)
    REFERENCES automoveis (id);
 
ALTER TABLE alocacao ADD CONSTRAINT FK_alocacao_3
    FOREIGN KEY (concessionaria)
    REFERENCES concessionarias (id);