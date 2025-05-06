CREATE TABLE produto(
    idproduto INT PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    quant INT NOT NULL,
    valorunidade FLOAT(6,2) NOT NULL,
    data_insercao DATE DEFAULT  CURRENT_DATE,
    data_alteracao DATE DEFAULT CURRENT_DATE );
 
CREATE TABLE simulacao(
idsimulacao INT PRIMARY KEY AUTO_INCREMENT,
quant INT NOT NULL,
id_produto INT,
FOREIGN KEY(id_produto) REFERENCES produto(idproduto)
);
 
CREATE TABLE Pagamento(
   idvenda INT PRIMARY KEY AUTO_INCREMENT,
   quant INT NOT NULL,
   id_produto INT,
   FOREIGN KEY(id_produto) REFERENCES produto(idproduto) ON DELETE CASCADE,
   nomeproduto VARCHAR(100) NOT NULL,
   valortotal FLOAT NOT NULL,
   valorcomdesconto FLOAT NOT NULL,
   pagtipo VARCHAR(10) NOT NULL,
   datacompra DATETIME DEFAULT CURRENT_DATE,
   id_simulacao INT,
   FOREIGN KEY(id_simulacao)  REFERENCES simulacao(idsimulacao)
   );