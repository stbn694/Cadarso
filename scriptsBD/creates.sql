CREATE TABLE usuarios (
	nome varchar(500) NOT NULL,
	telefono varchar(9),
	email varchar(200) PRIMARY KEY,
	password varchar(500) NOT NULL
);

CREATE TABLE compras (
	id integer PRIMARY KEY,
	data timestamp NOT NULL,
	costeTotal float NOT NULL,
	email varchar(200) REFERENCES usuarios(email)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	direccion varchar(500) NOT NULL,
	localidade varchar(200) NOT NULL,
	codpostal varchar(5) NOT NULL
);

CREATE TABLE produtos (
	id integer PRIMARY KEY,
	nome varchar(500) NOT NULL,
	dataCreacion timestamp DEFAULT now(),
	descricion text NOT NULL,
	prezoUd float NOT NULL,
	stock integer NOT NULL,
	imaxe varchar(500) NOT NULL
);

CREATE TABLE terlineascompra (
	numUd integer NOT NULL,
	prezoUd float NOT NULL,
	idCompra integer REFERENCES compras(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	idProduto integer REFERENCES produtos(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	PRIMARY KEY (idCompra, idProduto)
);