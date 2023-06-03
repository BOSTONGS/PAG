
/*CREATE TABLE PRODUCTO (
    codpro INT NOT NULL AUTO_INCREMENT,
    nompro VARCHAR(50) NULL,
    despro VARCHAR(100) NULL,
    prepro DECIMAL(6,2) NULL,
    estado INT NULL,
    rutimapro VARCHAR(100) NULL,
    CONSTRAINT pk_producto PRIMARY KEY (codpro)
);

-- Insertar datos en la tabla PRODUCTO
INSERT INTO PRODUCTO (nompro, despro, prepro, estado, rutimapro)
VALUES ('xbox one', 'descripcion', '14.99', 1, 'imagen');

-- Crear tabla USUARIO
CREATE TABLE USUARIO (
    codusu INT NOT NULL AUTO_INCREMENT,
    nomusu VARCHAR(50),
    apeusu VARCHAR(50),
    emausu VARCHAR(50) NOT NULL,
    pasusu VARCHAR(20) NOT NULL,
    estado INT NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (codusu)
);

-- Insertar datos en la tabla USUARIO
INSERT INTO USUARIO (nomusu, apeusu, emausu, pasusu, estado)
VALUES ('Usuario', 'Demo', 'correo@example.com', '123456', 1);

-- Crear tabla PEDIDO
CREATE TABLE PEDIDO (
    codped INT NOT NULL AUTO_INCREMENT,
    codusu INT NOT NULL,
    codpro INT NOT NULL,
    fecped DATETIME NOT NULL,
    estado INT NOT NULL,
    dirusuped VARCHAR(50) NOT NULL,
    telusuped VARCHAR(12) NOT NULL,
    token VARCHAR(30) NULL,
    PRIMARY KEY (codped)
); */


CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro numeric(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;

//insertar productos   si lleva acento coloca esto &oacute;
INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('xbox one', 'descripcion', '14.99', 1, 'imagen');

CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Usuario', 'Demo', 'correo@example.com', '123456', 1);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);
alter table PEDIDO add token varchar(30) null;

//insertar productos   si lleva acento coloca esto &oacute;
INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('xbox one','descripcion','14.99',1,'imagen');

/*insertar productos   si lleva acento coloca esto &oacute;
INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('xbox one','descripcion','15.99',1,'imagen');

//insertar productos   si lleva acento coloca esto &oacute;
INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('xbox one','descripcion','14.99',1,'imagen');*/