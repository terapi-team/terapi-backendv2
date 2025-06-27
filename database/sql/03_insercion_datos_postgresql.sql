---------------------------------
-- INSERCIÓN DE DATOS DE PRUEBA
---------------------------------

------------------------
-- [01] CLASES FUERTES
------------------------

-- USUARIOS
INSERT INTO Usuario (nombre, email, fechaNacimiento, password, telefono) VALUES
('Ana Torres', 'ana.torres@example.com', '1995-04-12', 'pass123', '987654321'),
('Luis Vega', 'luis.vega@example.com', '1988-09-23', 'pass456', '912345678'),
('Carla Ruiz', 'carla.ruiz@example.com', '1992-07-19', 'pass789', '998877665'),
('Mario Díaz', 'mario.diaz@example.com', '1985-02-10', 'mario123', '923456789'),
('Lucía Gómez', 'lucia.gomez@example.com', '1990-10-05', 'lucia456', '934567890'),
('José Rojas', 'jose.rojas@example.com', '1987-01-15', 'rojas123', '901234567'),
('Sofía Mendoza', 'sofia.mendoza@example.com', '1993-03-22', 'sofia456', '902345678'),
('Carlos López', 'carlos.lopez@example.com', '1990-11-30', 'carlos789', '903456789'),
('Valeria Salas', 'valeria.salas@example.com', '1989-08-25', 'valeria321', '904567890'),
('Diego Castro', 'diego.castro@example.com', '1985-06-12', 'diego654', '905678901'),
('Mariana León', 'mariana.leon@example.com', '1991-05-10', 'mariana111', '906789012'),
('Ricardo Paredes', 'ricardo.paredes@example.com', '1986-04-08', 'ricardo222', '907890123'),
('Elena Vargas', 'elena.vargas@example.com', '1994-02-18', 'elena333', '908901234'),
('Gabriela Huamán', 'gabriela.huaman@example.com', '1996-07-03', 'gabriela123', '909012345'),
('Tomás Villar', 'tomas.villar@example.com', '1984-12-14', 'tomas456', '910123456'),
('Rosa Peña', 'rosa.pena@example.com', '1992-11-29', 'rosa789', '911234567'),
('Julio Ramírez', 'julio.ramirez@example.com', '1983-03-05', 'julio123', '912345678'),
('Patricia Silva', 'patricia.silva@example.com', '1997-09-17', 'patricia456', '913456789'),
('Andrés Quispe', 'andres.quispe@example.com', '1990-08-01', 'andres789', '914567890'),
('Rocío Delgado', 'rocio.delgado@example.com', '1988-01-22', 'rocio321', '915678901'),
('Esteban Morales', 'esteban.morales@example.com', '1989-07-15', 'esteban123', '916789012'),
('Natalia Ponce', 'natalia.ponce@example.com', '1993-12-03', 'natalia456', '917890123'),
('Javier Cáceres', 'javier.caceres@example.com', '1986-05-27', 'javier789', '918901234'),
('Claudia Ramos', 'claudia.ramos@example.com', '1991-09-10', 'claudia321', '919012345'),
('Fernando Guzmán', 'fernando.guzman@example.com', '1984-10-18', 'fernando654', '920123456'),
('Tatiana Herrera', 'tatiana.herrera@example.com', '1995-03-30', 'tatiana111', '921234567'),
('Óscar Méndez', 'oscar.mendez@example.com', '1987-02-11', 'oscar222', '922345678'),
('Diana Flores', 'diana.flores@example.com', '1992-06-05', 'diana333', '923456789'),
('Álvaro Navarro', 'alvaro.navarro@example.com', '1989-04-07', 'alvaro444', '924567890'),
('Teresa Rivas', 'teresa.rivas@example.com', '1996-08-20', 'teresa555', '925678901'),
('Bruno Escobar', 'bruno.escobar@example.com', '1985-11-22', 'bruno123', '926789012'),
('Camila Torres', 'camila.torres@example.com', '1992-01-14', 'camila456', '927890123'),
('Renato Villanueva', 'renato.villanueva@example.com', '1988-09-30', 'renato789', '928901234'),
('Paola Mendoza', 'paola.mendoza@example.com', '1991-02-25', 'paola321', '929012345'),
('Héctor Gutiérrez', 'hector.gutierrez@example.com', '1986-06-19', 'hector654', '930123456'),
('Verónica Salazar', 'veronica.salazar@example.com', '1993-10-01', 'veronica111', '931234567'),
('Ignacio Campos', 'ignacio.campos@example.com', '1984-07-07', 'ignacio222', '932345678'),
('Lorena Palacios', 'lorena.palacios@example.com', '1990-03-18', 'lorena333', '933456789'),
('Sebastián Franco', 'sebastian.franco@example.com', '1987-12-09', 'sebastian444', '934567890'),
('Daniela Córdova', 'daniela.cordova@example.com', '1995-05-26', 'daniela555', '935678901');

---------------------------------------
-- [02] CLASES DEPENDIENTES - NIVEL 1
---------------------------------------

-- PACIENTE
INSERT INTO Paciente (usuario_id, fechaRegistro) VALUES
(1, '2024-06-20'),
(2, '2024-06-22'),
(3, '2024-06-23'),
(4, '2024-06-23'),
(5, '2024-06-24'),
(6, '2024-06-24'),
(7, '2024-06-24'),
(8, '2024-06-25'),
(9, '2024-06-25'),
(10, '2024-06-25'),
(11, '2024-06-25'),
(12, '2024-06-25'),
(13, '2024-06-25'),
(14, '2024-06-26'),
(15, '2024-06-26'),
(16, '2024-06-26'),
(17, '2024-06-26'),
(18, '2024-06-27'),
(19, '2024-06-27'),
(20, '2024-06-27');

-- TERAPEUTA
INSERT INTO Terapeuta (usuario_id, descripcion, experienciaAnios, calificacionPromedio, genero, pais, especialidades, idiomas) VALUES
(21, 'Terapia integrativa en adultos', 7, 4.8, 'Masculino', 'Perú', 'Psicologia', 'Español,Inglés'),
(22, 'Especialista en terapia de duelo', 9, 4.9, 'Femenino', 'Chile', 'Psicologia', 'Español'),
(23, 'Intervención temprana infantil', 4, 4.5, 'Masculino', 'Perú', 'Fisioterapia', 'Español'),
(24, 'Rehabilitación física post-accidente', 6, 4.6, 'Femenino', 'Argentina', 'Fisioterapia', 'Español,Inglés'),
(25, 'Terapias alternativas y mindfulness', 8, 4.7, 'Masculino', 'México', 'Psicologia', 'Español'),
(26, 'Psicoterapia humanista', 5, 4.3, 'Femenino', 'Perú', 'Psicologia', 'Español'),
(27, 'Apoyo emocional para adultos mayores', 11, 4.6, 'Masculino', 'Colombia', 'Psicologia', 'Español'),
(28, 'Logopedia para niños con dislexia', 3, 4.4, 'Femenino', 'Perú', 'Logopedia', 'Español'),
(29, 'Terapia ocupacional para movilidad', 7, 4.5, 'Masculino', 'Chile', 'TerapiaOcupacional', 'Español'),
(30, 'Terapia conductual en adolescentes', 6, 4.7, 'Femenino', 'Perú', 'Psicologia', 'Español,Inglés'),
(31, 'Atención psicológica para adultos', 8, 4.6, 'Masculino', 'Perú', 'Psicologia', 'Español'),
(32, 'Terapias de afrontamiento emocional', 5, 4.5, 'Femenino', 'México', 'Psicologia', 'Español,Inglés'),
(33, 'Rehabilitación motora infantil', 6, 4.7, 'Masculino', 'Chile', 'Fisioterapia', 'Español'),
(34, 'Terapia familiar y de pareja', 9, 4.8, 'Femenino', 'Perú', 'Psicologia', 'Español'),
(35, 'Psicoterapia individual adultos', 7, 4.6, 'Masculino', 'Colombia', 'Psicologia', 'Español'),
(36, 'Psicología educativa y vocacional', 4, 4.4, 'Femenino', 'Argentina', 'Psicologia', 'Español'),
(37, 'Intervención en crisis emocionales', 10, 4.7, 'Masculino', 'Perú', 'Psicologia', 'Español,Inglés'),
(38, 'Logopedia para niños con TEA', 3, 4.3, 'Femenino', 'Perú', 'Logopedia', 'Español'),
(39, 'Psicología ocupacional', 6, 4.5, 'Masculino', 'Chile', 'Psicologia', 'Español'),
(40, 'Orientación emocional para adolescentes', 5, 4.6, 'Femenino', 'Perú', 'Psicologia', 'Español');

---------------------------------------
-- [03] CLASES DEPENDIENTES - NIVEL 2
---------------------------------------

-- CITA
INSERT INTO Cita (paciente_id, terapeuta_id, fecha, hora, tipo, estado, tarifa, duracion, modalidad) VALUES
(1, 1, '2025-06-27', '09:00', 'Online', 'Agendada', 140.00, 50, 'Video'),
(1, 1, '2025-06-28', '10:00', 'Presencial', 'Confirmada', 140.00, 50, 'Audio'),
(1, 1, '2025-07-01', '11:30', 'Online', 'Completada', 140.00, 50, 'Chat'),
(1, 7, '2025-07-06', '15:00', 'Presencial', 'Cancelada', 150.00, 50, 'Chat'),
(1, 14, '2025-07-13', '11:30', 'Online', 'Confirmada', 150.00, 50, 'Video'),
(2, 1, '2025-07-02', '16:30', 'Presencial', 'Cancelada', 140.00, 50, 'Audio'),
(2, 2, '2025-06-30', '15:00', 'Online', 'Agendada', 160.00, 50, 'Video'),
(2, 8, '2025-07-07', '16:00', 'Online', 'Agendada', 140.00, 45, 'Video'),
(2, 13, '2025-07-12', '10:00', 'Online', 'Agendada', 140.00, 45, 'Chat'),
(3, 3, '2025-06-29', '10:00', 'Online', 'Confirmada', 150.00, 45, 'Video'),
(3, 4, '2025-07-01', '09:30', 'Presencial', 'Agendada', 155.00, 50, 'Audio'),
(3, 9, '2025-07-08', '10:30', 'Presencial', 'Confirmada', 155.00, 50, 'Audio'),
(3, 10, '2025-07-09', '12:00', 'Online', 'Completada', 150.00, 50, 'Chat'),
(4, 2, '2025-07-03', '14:30', 'Online', 'Agendada', 145.00, 50, 'Chat'),
(4, 5, '2025-07-02', '13:00', 'Online', 'Confirmada', 130.00, 40, 'Video'),
(4, 11, '2025-07-10', '14:00', 'Online', 'Agendada', 145.00, 50, 'Video'),
(5, 6, '2025-07-04', '08:00', 'Presencial', 'Agendada', 160.00, 60, 'Audio'),
(5, 6, '2025-07-05', '11:00', 'Online', 'Completada', 160.00, 60, 'Video'),
(5, 12, '2025-07-11', '09:00', 'Presencial', 'Confirmada', 160.00, 60, 'Audio'),
(5, 15, '2025-07-14', '13:30', 'Presencial', 'Agendada', 155.00, 50, 'Audio');

-- MÉTODOS DE PAGO
INSERT INTO MetodoPago (paciente_id, tipo, numeroTarjeta, vencimiento, nombreTitular, tipoDocumento, numeroDocumento) VALUES
(1, 'Visa', '4111111111111111', '2026-08-01', 'Ana Torres', 'DNI', '12345678'),
(1, 'Visa', '4000123412341234', '2027-02-01', 'Ana Torres', 'DNI', '12345678'),
(1, 'MasterCard', '5500000000001122', '2027-03-01', 'Ana Torres', 'DNI', '12345678'),
(1, 'American Express', '378282246310005', '2026-05-01', 'Ana Torres', 'DNI', '12345678'),
(2, 'Visa', '4111111111113344', '2026-06-01', 'Mario Díaz', 'DNI', '87654321'),
(2, 'Visa', '4111111111110000', '2027-09-01', 'Mario Díaz', 'DNI', '87654321'),
(2, 'MasterCard', '5500000000000004', '2027-01-01', 'Mario Díaz', 'DNI', '87654321'),
(2, 'MasterCard', '5105105105105100', '2025-08-01', 'Mario Díaz', 'DNI', '87654321'),
(3, 'Visa', '4111111111111234', '2026-12-01', 'Gabriela Huamán', 'DNI', '76543210'),
(3, 'Visa', '4012888888881881', '2026-12-01', 'Gabriela Huamán', 'Pasaporte', 'X7654321'),
(3, 'MasterCard', '5555555555554444', '2026-03-01', 'Gabriela Huamán', 'Pasaporte', 'P8888888'),
(3, 'MasterCard', '5555555555554445', '2026-11-01', 'Gabriela Huamán', 'Pasaporte', 'P9876543'),
(4, 'MasterCard', '5500000000005678', '2027-04-01', 'Tomás Villar', 'Pasaporte', 'X1234567'),
(4, 'American Express', '371449635398431', '2025-10-01', 'Tomás Villar', 'DNI', '19283746'),
(4, 'Visa', '4012888888889999', '2025-10-01', 'Tomás Villar', 'DNI', '11223344'),
(4, 'Visa', '4111111111112222', '2027-06-01', 'Tomás Villar', 'DNI', '99887766'),
(5, 'Visa', '4111111111119876', '2025-09-01', 'Rosa Peña', 'CarnetExtranjeria', 'CE876543'),
(5, 'Visa', '4012888888881881', '2026-01-01', 'Rosa Peña', 'CarnetExtranjeria', 'CE192837'),
(5, 'Visa', '4111111111114321', '2026-08-01', 'Rosa Peña', 'CarnetExtranjeria', 'CE654321'),
(5, 'MasterCard', '5105105105101234', '2025-07-01', 'Rosa Peña', 'CarnetExtranjeria', 'CE123123');

-- HORARIOS
INSERT INTO Horario (terapeuta_id, diaSemana, horaInicio, horaFin) VALUES
(1, 'Martes', '11:00', '14:00'),
(1, 'Jueves', '13:00', '16:00'),
(1, 'Viernes', '08:00', '12:00'),
(1, 'Sábado', '10:00', '13:00'),
(2, 'Lunes', '14:00', '17:00'),
(2, 'Miércoles', '10:00', '13:00'),
(2, 'Jueves', '14:00', '17:00'),
(2, 'Sábado', '09:00', '12:00'),
(3, 'Lunes', '08:00', '10:30'),
(3, 'Miércoles', '15:00', '18:00'),
(3, 'Domingo', '09:00', '11:00'),
(4, 'Martes', '09:00', '12:00'),
(4, 'Viernes', '08:00', '11:00'),
(4, 'Sábado', '10:00', '13:00'),
(5, 'Martes', '12:00', '14:00'),
(5, 'Jueves', '13:00', '15:00'),
(5, 'Viernes', '13:00', '16:00'),
(6, 'Miércoles', '10:00', '13:00'),
(6, 'Jueves', '07:00', '09:30'),
(6, 'Sábado', '10:00', '13:00'),
(7, 'Martes', '09:00', '11:30'),
(7, 'Viernes', '10:00', '13:00'),
(7, 'Domingo', '14:00', '17:00'),
(8, 'Lunes', '15:00', '17:00'),
(8, 'Jueves', '14:00', '17:00'),
(8, 'Sábado', '14:00', '16:00'),
(9, 'Lunes', '10:00', '13:00'),
(9, 'Martes', '09:00', '11:00'),
(10, 'Miércoles', '11:00', '13:00'),
(10, 'Viernes', '10:00', '12:00'),
(11, 'Jueves', '14:00', '17:00'),
(11, 'Viernes', '09:00', '12:00'),
(12, 'Viernes', '08:00', '10:00'),
(12, 'Sábado', '08:00', '11:00'),
(13, 'Sábado', '10:00', '12:00'),
(13, 'Domingo', '09:00', '11:00'),
(14, 'Miércoles', '12:00', '15:00'),
(14, 'Domingo', '11:00', '14:00'),
(15, 'Lunes', '12:00', '15:00'),
(15, 'Domingo', '13:00', '15:00');

-- RESEÑAS
INSERT INTO Resenia (paciente_id, terapeuta_id, puntaje, comentario, fecha) VALUES
(1, 1, 5, 'El doctor Esteban fue muy claro y paciente durante la sesión.', '2025-06-10'),
(2, 2, 4, 'La psicóloga Natalia me ayudó bastante a entender mis emociones.', '2025-06-12'),
(3, 3, 5, 'Muy profesional y directo. Me sentí cómodo desde el inicio.', '2025-06-13'),
(4, 4, 3, 'La atención fue buena, pero esperaba más dinamismo.', '2025-06-13'),
(5, 5, 5, 'Excelente guía en mindfulness, me ayudó mucho.', '2025-06-14'),
(6, 6, 4, 'La psicóloga fue muy empática y atenta en todo momento.', '2025-06-14'),
(7, 7, 5, 'El doctor Óscar fue claro, directo y muy profesional.', '2025-06-15'),
(8, 8, 4, 'Buena terapeuta, aunque me gustaría un enfoque más práctico.', '2025-06-15'),
(9, 9, 5, 'Muy comprometido y paciente, me sentí escuchado.', '2025-06-16'),
(10, 10, 5, 'Excelente trato y orientación con adolescentes.', '2025-06-16'),
(11, 2, 5, 'La doctora Natalia fue muy profesional y empática.', '2025-06-17'),
(12, 4, 4, 'Claudia explicó todo con mucha claridad y calma.', '2025-06-17'),
(13, 6, 5, 'Muy buena experiencia, me ayudó a ver otro enfoque.', '2025-06-18'),
(14, 8, 5, 'Gracias a la logopeda Diana, mi hijo ha mejorado notablemente.', '2025-06-18'),
(15, 1, 3, 'La sesión fue útil, pero esperaba más seguimiento.', '2025-06-19'),
(16, 5, 5, 'El terapeuta fue muy atento y me ayudó a centrarme.', '2025-06-19'),
(17, 7, 4, 'Óscar fue muy amable y profesional.', '2025-06-20'),
(18, 9, 5, 'Excelente trato en terapia ocupacional, muy agradecida.', '2025-06-20'),
(19, 10, 5, 'Gran enfoque con adolescentes, mi hijo salió motivado.', '2025-06-21'),
(20, 13, 5, 'Renato es un terapeuta muy atento y profesional.', '2025-06-21');

-- NOTIFICACIONES
INSERT INTO Notificacion (usuario_id, mensaje, fechaEnvio, vista) VALUES
(1, 'Tienes una nueva cita programada.', '2024-06-20', FALSE),
(2, 'Tu sesión ha sido confirmada.', '2024-06-21', TRUE),
(3, 'Recuerda que mañana tienes una cita.', '2024-06-22', FALSE),
(4, 'Tu cita ha sido reagendada.', '2024-06-23', TRUE),
(5, 'Nuevo mensaje de tu terapeuta.', '2024-06-24', FALSE),
(6, 'Tu método de pago ha sido actualizado.', '2024-06-24', TRUE),
(7, 'Tu sesión ha sido marcada como completada.', '2024-06-25', TRUE),
(8, 'Recibiste una nueva recomendación de terapeuta.', '2024-06-25', FALSE),
(9, 'Tu sesión fue cancelada por el terapeuta.', '2024-06-25', TRUE),
(10, 'Se actualizó la política de privacidad.', '2024-06-26', FALSE),
(11, 'Nueva función disponible: videollamadas HD.', '2024-06-26', FALSE),
(12, 'Tu cita con la terapeuta fue reprogramada.', '2024-06-27', TRUE),
(13, 'Recuerda calificar tu última sesión.', '2024-06-27', FALSE),
(14, 'Tu sesión de hoy ha sido confirmada.', '2024-06-28', TRUE),
(15, 'Cita agendada exitosamente.', '2024-06-28', TRUE),
(16, 'El terapeuta dejó una nota posterior a tu sesión.', '2024-06-28', FALSE),
(17, 'Recibiste una notificación de sistema.', '2024-06-29', FALSE),
(18, 'Actualización de términos y condiciones.', '2024-06-29', TRUE),
(19, 'Tu próxima cita es dentro de 24 horas.', '2024-06-30', FALSE),
(20, 'Tu terapeuta ha compartido recursos contigo.', '2024-06-30', FALSE);

---------------------------------------
-- [04] ENUMS
---------------------------------------

-- Enum_DiaSemana
INSERT INTO Enum_DiaSemana (nombre) VALUES
('Lunes'),
('Martes'),
('Miercoles'),
('Jueves'),
('Viernes'),
('Sabado'),
('Domingo');

-- Enum_TipoCita

INSERT INTO Enum_TipoCita (nombre) VALUES
('Online'),
('Presencial');

-- Enum_EstadoCita

INSERT INTO Enum_EstadoCita (nombre) VALUES
('Agendada'),
('Confirmada'),
('Cancelada'),
('Completada');

-- Enum_TipoDocumento

INSERT INTO Enum_TipoDocumento (nombre) VALUES
('DNI'),
('Pasaporte'),
('CarnetExtranjeria');

-- Enum_EstadoRevision

INSERT INTO Enum_EstadoRevision (nombre) VALUES
('Pendiente'),
('Aprobado'),
('Rechazado');

-- Enum_Genero

INSERT INTO Enum_Genero (nombre) VALUES
('Masculino'),
('Femenino'),
('Otro');

-- Enum_Modalidad

INSERT INTO Enum_Modalidad (nombre) VALUES
('Video'),
('Audio'),
('Chat');

-- Enum_Especialidad

INSERT INTO Enum_Especialidad (nombre) VALUES
('Psicologia'),
('Fisioterapia'),
('TerapiaOcupacional'),
('Logopedia');