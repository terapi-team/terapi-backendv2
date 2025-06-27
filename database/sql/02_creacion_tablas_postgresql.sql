-----------------------------------------------------------------------
-- CREACIÓN DE TABLAS BASADAS EN LA VERSIÓN 02 DEL DIAGRAMA DE CLASES
-----------------------------------------------------------------------

------------------------
-- [01] CLASES FUERTES
------------------------

CREATE TABLE Usuario (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    fechaNacimiento DATE NOT NULL,
    password TEXT NOT NULL,
    telefono TEXT
);

CREATE INDEX idx_usuario_email ON Usuario(email);

---------------------------------------
-- [02] CLASES DEPENDIENTES - NIVEL 1
---------------------------------------

CREATE TABLE Paciente (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    fechaRegistro DATE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE
);

CREATE TABLE Terapeuta (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    descripcion TEXT,
    experienciaAnios INTEGER,
    calificacionPromedio DOUBLE PRECISION,
    genero TEXT,
    pais TEXT,
    especialidades TEXT,
    idiomas TEXT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE
);

---------------------------------------
-- [03] CLASES DEPENDIENTES - NIVEL 2
---------------------------------------

CREATE TABLE Cita (
    id SERIAL PRIMARY KEY,
    paciente_id INTEGER NOT NULL,
    terapeuta_id INTEGER NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    tipo TEXT NOT NULL,
    estado TEXT NOT NULL,
    tarifa DOUBLE PRECISION NOT NULL,
    duracion INTEGER NOT NULL,
    modalidad TEXT NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id) ON DELETE CASCADE,
    FOREIGN KEY (terapeuta_id) REFERENCES Terapeuta(id) ON DELETE CASCADE
);

CREATE INDEX idx_cita_fecha ON Cita(fecha);

CREATE TABLE MetodoPago (
    id SERIAL PRIMARY KEY,
    paciente_id INTEGER NOT NULL,
    tipo TEXT NOT NULL,
    numeroTarjeta TEXT NOT NULL,
    vencimiento DATE NOT NULL,
    nombreTitular TEXT NOT NULL,
    tipoDocumento TEXT NOT NULL,
    numeroDocumento TEXT NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id) ON DELETE CASCADE
);

CREATE TABLE Horario (
    id SERIAL PRIMARY KEY,
    terapeuta_id INTEGER NOT NULL,
    diaSemana TEXT NOT NULL,
    horaInicio TIME NOT NULL,
    horaFin TIME NOT NULL,
    FOREIGN KEY (terapeuta_id) REFERENCES Terapeuta(id) ON DELETE CASCADE
);

CREATE TABLE Resenia (
    id SERIAL PRIMARY KEY,
    paciente_id INTEGER NOT NULL,
    terapeuta_id INTEGER NOT NULL,
    puntaje INTEGER NOT NULL CHECK (puntaje BETWEEN 1 AND 5),
    comentario TEXT,
    fecha DATE NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id) ON DELETE CASCADE,
    FOREIGN KEY (terapeuta_id) REFERENCES Terapeuta(id) ON DELETE CASCADE
);

CREATE TABLE Notificacion (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    mensaje TEXT NOT NULL,
    fechaEnvio DATE NOT NULL,
    vista BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE
);

---------------
-- [04] ENUMS
---------------

CREATE TABLE Enum_DiaSemana (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE Enum_TipoCita (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE Enum_EstadoCita (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE Enum_TipoDocumento (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE Enum_EstadoRevision (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE Enum_Genero (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE Enum_Modalidad (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE Enum_Especialidad (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);
