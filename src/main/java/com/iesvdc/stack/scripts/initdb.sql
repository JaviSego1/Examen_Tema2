CREATE DATABASE IF NOT EXISTS `reservas`;

USE `reservas`;

CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    user_name VARCHAR(50),
    password VARCHAR(65),
    email VARCHAR(80)
);

INSERT INTO Usuarios (id, user_name, password, email) VALUES (2, 'pepillo', 'secreto', 'pepe@gmail.com');
INSERT INTO Usuarios (id, user_name, password, email) VALUES (5, 'admin', 'admin', 'admin@correo.com');
INSERT INTO Usuarios (id, user_name, password, email) VALUES (7, 'obijuan', 'starwars', 'darkside@starwars.com');
INSERT INTO Usuarios (id, user_name, password, email) VALUES (13, 'gerente', 'password1234', 'gerencia@vdc.com');

CREATE TABLE Instalacion (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

INSERT INTO Instalacion (id, nombre) VALUES (7, 'tenis arriba');
INSERT INTO Instalacion (id, nombre) VALUES (8, 'tenis césped artificial');
INSERT INTO Instalacion (id, nombre) VALUES (9, 'fútbol');
INSERT INTO Instalacion (id, nombre) VALUES (10, 'baloncesto');
INSERT INTO Instalacion (id, nombre) VALUES (11, 'squash');
INSERT INTO Instalacion (id, nombre) VALUES (13, 'sauna mujeres');
INSERT INTO Instalacion (id, nombre) VALUES (14, 'pista de pádel');
INSERT INTO Instalacion (id, nombre) VALUES (16, 'sauna caballeros');

CREATE TABLE Horario (
    id INT PRIMARY KEY,
    instalaciones INT,
    inicio VARCHAR(10),
    fin VARCHAR(10)
);

INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (1, 7, '08:00:00', '09:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (2, 7, '09:00:00', '10:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (3, 7, '10:00:00', '11:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (4, 7, '11:00:00', '12:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (5, 7, '12:00:00', '13:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (6, 7, '13:00:00', '14:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (7, 7, '14:00:00', '15:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (8, 7, '15:00:00', '16:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (9, 7, '16:00:00', '17:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (10, 7, '17:00:00', '18:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (11, 7, '18:00:00', '19:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (12, 7, '19:00:00', '20:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (13, 7, '20:00:00', '21:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (14, 7, '21:00:00', '22:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (15, 7, '22:00:00', '23:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (16, 8, '08:00:00', '09:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (17, 8, '09:00:00', '10:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (18, 8, '10:00:00', '11:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (19, 8, '11:00:00', '12:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (20, 8, '12:00:00', '13:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (21, 8, '13:00:00', '14:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (22, 8, '14:00:00', '15:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (23, 8, '15:00:00', '16:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (24, 8, '16:00:00', '17:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (25, 8, '17:00:00', '18:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (26, 8, '18:00:00', '19:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (27, 8, '19:00:00', '20:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (28, 8, '20:00:00', '21:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (29, 8, '21:00:00', '22:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (30, 8, '22:00:00', '23:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (31, 9, '08:00:00', '09:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (32, 9, '09:30:00', '11:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (33, 9, '11:00:00', '12:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (34, 9, '12:30:00', '14:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (35, 9, '14:00:00', '15:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (36, 9, '15:30:00', '17:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (37, 9, '17:00:00', '18:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (38, 9, '18:30:00', '20:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (39, 9, '20:00:00', '21:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (40, 9, '21:30:00', '23:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (41, 9, '23:00:00', '00:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (42, 10, '08:00:00', '09:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (43, 10, '09:00:00', '10:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (44, 10, '10:00:00', '11:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (45, 10, '11:00:00', '12:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (46, 10, '12:00:00', '13:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (47, 10, '13:00:00', '14:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (48, 10, '14:00:00', '15:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (49, 10, '15:00:00', '16:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (50, 10, '16:00:00', '17:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (51, 10, '17:00:00', '18:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (52, 10, '18:00:00', '19:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (53, 10, '19:00:00', '20:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (54, 10, '20:00:00', '21:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (55, 10, '21:00:00', '22:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (56, 10, '22:00:00', '23:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (57, 11, '08:00:00', '08:45:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (58, 11, '08:45:00', '09:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (59, 11, '09:30:00', '10:15:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (60, 11, '10:15:00', '11:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (61, 11, '11:00:00', '11:45:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (62, 11, '11:45:00', '12:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (63, 11, '12:30:00', '13:15:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (64, 11, '13:15:00', '14:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (65, 11, '14:00:00', '14:45:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (66, 11, '14:45:00', '15:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (67, 11, '15:30:00', '16:15:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (68, 11, '16:15:00', '17:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (69, 11, '17:00:00', '17:45:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (70, 11, '17:45:00', '18:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (71, 11, '18:30:00', '19:15:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (72, 11, '19:15:00', '20:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (73, 11, '20:00:00', '20:45:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (74, 11, '20:45:00', '21:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (75, 11, '21:30:00', '22:15:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (103, 13, '09:00:00', '09:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (104, 13, '09:30:00', '10:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (105, 13, '10:00:00', '10:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (106, 13, '10:30:00', '11:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (107, 13, '11:00:00', '11:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (108, 13, '11:30:00', '12:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (109, 13, '12:00:00', '12:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (110, 13, '12:30:00', '13:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (111, 13, '13:00:00', '13:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (112, 13, '13:30:00', '14:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (113, 13, '14:00:00', '14:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (114, 13, '14:30:00', '15:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (115, 13, '15:00:00', '15:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (116, 13, '15:30:00', '16:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (117, 13, '16:00:00', '16:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (118, 13, '16:30:00', '17:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (119, 13, '17:00:00', '17:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (120, 13, '17:30:00', '18:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (121, 13, '18:00:00', '18:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (122, 13, '18:30:00', '19:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (123, 13, '19:00:00', '19:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (124, 13, '19:30:00', '20:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (125, 13, '20:00:00', '20:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (126, 13, '20:30:00', '21:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (127, 13, '21:00:00', '21:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (128, 13, '21:30:00', '22:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (129, 13, '22:00:00', '22:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (130, 14, '08:00:00', '09:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (131, 14, '09:30:00', '11:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (132, 14, '11:00:00', '12:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (133, 14, '12:30:00', '14:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (134, 14, '14:00:00', '15:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (135, 14, '15:30:00', '17:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (136, 14, '17:00:00', '18:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (137, 14, '18:30:00', '20:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (138, 14, '20:00:00', '21:30:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (139, 14, '21:30:00', '23:00:00');
INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (140, 14, '23:00:00', '00:30:00');

CREATE TABLE Reserva (
    id INT PRIMARY KEY,
    usuario INT,
    horario INT,
    fecha DATE
);

INSERT INTO Reserva (id, usuario, horario, fecha) VALUES (1, 2, 130, 'Sun Nov 17 00:00:00 CET 2024');
INSERT INTO Reserva (id, usuario, horario, fecha) VALUES (2, 2, 130, 'Mon Nov 18 00:00:00 CET 2024');
INSERT INTO Reserva (id, usuario, horario, fecha) VALUES (4, 7, 120, 'Thu Nov 14 00:00:00 CET 2024');
INSERT INTO Reserva (id, usuario, horario, fecha) VALUES (5, 7, 130, 'Fri Nov 15 00:00:00 CET 2024');
