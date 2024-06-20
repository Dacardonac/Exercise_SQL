USE Colegio_Gates;

-- Insertar datos aleatorios en la tabla estudiantes
INSERT INTO estudiantes (nombre, apellido, fecha_nacimiento, direccion, telefono, email, año_academico)
VALUES
  ('Juan', 'Pérez', '2005-03-15', 'Calle 123, Ciudad', '555-1234', 'juan@example.com', '2024'),
  ('María', 'Gómez', '2006-07-22', 'Av. Principal, Pueblo', '555-5678', 'maria@example.com', '2024'),
  ('Pedro', 'Martínez', '2004-11-10', 'Carrera 45, Villa', '555-9876', 'pedro@example.com', '2024');

-- Insertar datos aleatorios en la tabla profesores
INSERT INTO profesores (nombre, apellido, asignatura, telefono, email)
VALUES
  ('Ana', 'López', 'Matemáticas', '555-1111', 'ana@example.com'),
  ('Luis', 'Rodríguez', 'Ciencias', '555-2222', 'luis@example.com'),
  ('Elena', 'Sánchez', 'Historia', '555-3333', 'elena@example.com');

-- Insertar datos aleatorios en la tabla asignaturas
INSERT INTO asignaturas (nombre_asignatura, id_curso)
VALUES
  ('Matemáticas', 1),
  ('Ciencias Naturales', 2),
  ('Historia', 3);

-- Insertar datos aleatorios en la tabla horarios
INSERT INTO horarios (fecha, dia, hora_inicio, hora_fin, id_asignatura, id_profesor)
VALUES
  ('2024-09-01', '2024-09-01', '08:00:00', '09:30:00', 1, 1),
  ('2024-09-01', '2024-09-01', '09:30:00', '11:00:00', 2, 2),
  ('2024-09-01', '2024-09-01', '11:00:00', '12:30:00', 3, 3);
