-- Tabela Tipo
CREATE TABLE Tipo (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela Genero
CREATE TABLE Genero (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela Item
CREATE TABLE Item (
    id INT PRIMARY KEY,
    tipo ENUM('FILME', 'LIVRO', 'JOGO') NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    autor_diretor VARCHAR(255) NOT NULL,
    genero_id INT,
    ano INT NOT NULL,
    sinopse TEXT,
    FOREIGN KEY (genero_id) REFERENCES Genero(id)
);

-- Tabela Avaliacao
CREATE TABLE Avaliacao (
    id INT PRIMARY KEY,
    item_id INT NOT NULL,
    fonte VARCHAR(50) NOT NULL,
    valor FLOAT NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item(id)
);