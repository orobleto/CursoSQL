/*  USAR BASE DE DATOS
	INSTRUCCION PARA QUE LOS SIGUIENTES
    SCRIPTS SE EJECUTEN EN LA MISMA BASE
*/
USE curso46594;

# CREAR TABLA EN BASE DE DATOS

CREATE TABLE  Clientes (
	#nombreCampo tipoCampo obligatoriedad -opcional
    TipoDocumento CHAR(3) NOT NULL,
    Documento	VARCHAR(15) NOT NULL,
    RazonSocial VARCHAR(50) NOT NULL,
    DireccionDomicilio TEXT NULL,
    Correo	VARCHAR(100) NULL,
    Activo BOOLEAN NOT NULL DEFAULT 1,
    FechaNacimiento DATE NOT NULL,
    FechaRegistro TIMESTAMP NOT NULL,
    Edad TINYINT NOT NULL
);

# CREAR TABLA EN BASE DE DATOS SI NO EXISTE

CREATE TABLE IF NOT EXISTS Clientes (
	#nombreCampo tipoCampo obligatoriedad -opcional
    TipoDocumento CHAR(3) NOT NULL,
    Documento	VARCHAR(15) NOT NULL,
    RazonSocial VARCHAR(50) NOT NULL,
    DireccionDomicilio TEXT NULL,
    Correo	VARCHAR(100) NULL,
    Activo BOOLEAN NOT NULL DEFAULT 1,
    FechaNacimiento DATE NOT NULL,
    FechaRegistro TIMESTAMP NOT NULL,
    Edad TINYINT NOT NULL,
    PRIMARY KEY(TipoDocumento,Documento)
);

# BORRAR TABLA DE LA BASE DE DATOS
DROP TABLE Clientes;

# BORRAR TABLA SI EXISTE DE LA BASE DE DATOS
DROP TABLE IF EXISTS Clientes;





