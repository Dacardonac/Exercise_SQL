CREATE DATABASE Colegio_Gates;
USE Colegio_Gates;
-- Tabla de Estudiantes
CREATE TABLE estudiantes (
  id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  apellido VARCHAR(255) NOT NULL,
  fecha_nacimiento DATE,
  direccion VARCHAR(255),
  telefono VARCHAR(255),
  email VARCHAR(255),
  año_academico YEAR,
  UNIQUE KEY UQ_email (email)
);

-- Tabla de Inscripciones
CREATE TABLE inscripciones (
  id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
  fecha_de_inscripcion DATE,
  id_estudiante INT,
  id_asignatura INT,
  id_grupo INT,
  FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
  KEY NN_inscripciones (id_inscripcion, fecha_de_inscripcion)
);

-- Tabla de Pagos
CREATE TABLE pagos (
  id_pago INT AUTO_INCREMENT PRIMARY KEY,
  monto INT,
  fecha_pago DATE,
  id_estudiante INT,
  FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
  KEY NN_pagos (id_pago, monto, fecha_pago)
);

-- Tabla de Cursos
CREATE TABLE cursos (
  id_curso INT AUTO_INCREMENT PRIMARY KEY,
  nombre_curso VARCHAR(255),
  descripcion TEXT
);

-- Crear la tabla grupos
CREATE TABLE grupos (
  id_grupo INT AUTO_INCREMENT PRIMARY KEY,
  nombre_grupo VARCHAR(255),
  id_curso INT,
  FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
  KEY NN_grupos (id_grupo, nombre_grupo)
);

-- Crear la tabla estudiantes_grupos
CREATE TABLE estudiantes_grupos (
  id_estudiante INT,
  id_grupo INT,
  PRIMARY KEY (id_estudiante, id_grupo),
  FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
  FOREIGN KEY (id_grupo) REFERENCES grupos(id_grupo)
);


-- Tabla de Asignaturas
CREATE TABLE asignaturas (
  id_asignatura INT AUTO_INCREMENT PRIMARY KEY,
  nombre_asignatura VARCHAR(255),
  id_curso INT,
  FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
  KEY NN_asignaturas (id_asignatura, nombre_asignatura)
);

-- Tabla de Horarios
CREATE TABLE horarios (
  id_horario INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE,
  dia DATE,
  hora_inicio TIME,
  hora_fin TIME,
  id_asignatura INT,
  id_profesor INT,
  FOREIGN KEY (id_asignatura) REFERENCES asignaturas(id_asignatura)
);

-- Tabla de Grupo_Jornada (Relación muchos a muchos entre grupos y jornadas)
CREATE TABLE grupo_jornada (
  id_grupo INT,
  id_jornada INT,
  PRIMARY KEY (id_grupo, id_jornada),
  FOREIGN KEY (id_grupo) REFERENCES grupos(id_grupo),
  FOREIGN KEY (id_jornada) REFERENCES jornada(id_jornada)
);

-- Tabla de Jornadas
CREATE TABLE jornada (
  id_jornada INT AUTO_INCREMENT PRIMARY KEY,
  nombre_jornada VARCHAR(255),
  hora_inicio TIME,
  hora_fin TIME,
  UNIQUE KEY UQ_jornada (nombre_jornada, hora_inicio, hora_fin)
);

-- Tabla de Profesores
CREATE TABLE profesores (
  id_profesor INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  asignatura VARCHAR(255),
  telefono VARCHAR(255),
  email VARCHAR(255),
  UNIQUE KEY UQ_email_profesor (email)
);

show tables