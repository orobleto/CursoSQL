
# CREAR TABLA EN LA BASE DE DATOS CON CLAVE PRIMARIA SIMPLE
CREATE TABLE IF NOT EXISTS Productos(
	 ID INT,
	 Descripcion VARCHAR(50) NOT NULL,
	 PRIMARY KEY (ID)
 );
 
 # CREAR TABLA EN LA BASE DE DATOS CON CLAVE COMPUESTA
 CREATE TABLE IF NOT EXISTS Profesores(
	TipoDocumento CHAR(3) NOT NULL,
    Documento VARCHAR(50) NOT NULL,
    RazonSocial VARCHAR(100) NOT NULL,
    PRIMARY KEY (TipoDocumento,Documento)
 );
 
 # CREAR TABLA EN LA BASE DE DATOS CON ID AUTONUMERICO
 CREATE TABLE IF NOT EXISTS Cursos
 (
	ID INT NOT NULL AUTO_INCREMENT,
    Descripcion VARCHAR(50) NOT NULL,
    PRIMARY KEY(ID)
 );
 
 # ALTERAR TABLA CURSOS
 ALTER TABLE Cursos
 ADD FechaCreacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
 
 
 # ALTERAR TABLA CURSOS
 ALTER TABLE Cursos
 ADD Categoria VARCHAR (10) NOT NULL DEFAULT 'PRINCIPAL';
 
 /*
 FECHAS FUNCION CURREN_TIMESTAMP
 CADENAS DE CARACTERES ENTRE COMILLAS SIMPLES ''
 NUMERICOS EL LITERAL SIN NINGUN SIMBOLO EJ: 2 - 2.6...ETC
 */
 
 
 CREATE TABLE IF NOT EXISTS Ventas
 (
	ProductoID INT NOT NULL,
    Fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(ProductoID) REFERENCES Productos (ID)
 );
 
 CREATE TABLE IF NOT EXISTS CursosClientes(
	TipoDocumento CHAR(3) NOT NULL,
    Documento VARCHAR(15) NOT NULL,
    CursoID INT,
    FOREIGN KEY (TipoDocumento,Documento) REFERENCES Clientes (TipoDocumento,Documento),
    FOREIGN KEY (CursoID) REFERENCES Cursos (ID),
    PRIMARY KEY(TipoDocumento,Documento,CursoID)
 );
 
 
 