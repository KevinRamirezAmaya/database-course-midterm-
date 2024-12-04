
--Insertar 5 vehiculos
INSERT INTO Vehiculo (idVehiculo, modelo, fecha, capacidad, estado)
VALUES
(1, 'ModeloA', '2022-01-10', 40, 'Bueno'),
(2, 'ModeloA', '2022-05-15', 35, 'Bueno'),
(3, 'ModeloB', '2023-02-20', 50, 'Regular'),
(4, 'ModeloA', '2021-11-11', 45, 'Malo'),
(5, 'ModeloB', '2020-09-05', 60, 'Bueno');

--Insertar 3 conductores
INSERT INTO Trabajador (identificacion, cargo, codigo, nombre, experiencia)
VALUES
(101, 'Conductor', 1001, 'Juan Amaya', 5),
(102, 'Conductor', 1002, 'Kevin Ramirez', 3),
(103, 'Conductor', 1003, 'Carlos Diaz', 4);


--Insertar 3 Operarios
INSERT INTO Trabajador (identificacion, cargo, codigo, nombre, experiencia)
VALUES
(201, 'Operario', 2001, 'Luis Diaz', 6),
(202, 'Operario', 2002, 'John Quiceno', 7),
(203, 'Operario', 2003, 'Andrey Ramos', 2);

--Insertar 5 estaciones
INSERT INTO Estacion (idEstacion, maxPasajeros, nombreUbic, ubicacion)
VALUES
(1, 200, 'Capri', 'Sur'),
(2, 250, 'Melendez', 'Sur'),
(3, 180, 'Buitrera', 'Sur'),
(4, 220, 'Universidades', 'Sur'),
(5, 300, 'Lido', 'Sur');


--Insertar 6 mantenimientos
INSERT INTO Mantenimiento (idMantenimiento, identificacion, tipo, descripcion, fecha)
VALUES
(1, 201, 'Vehiculo', 'Cambio de aceite', '2024-12-01'),
(2, 202, 'Vehiculo', 'Revisión general', '2024-12-02'),
(3, 203, 'Estacion', 'Reparación eléctrica', '2024-12-02'),
(4, 201, 'Estacion', 'Limpieza', '2024-12-01'),
(5, 202, 'Vehiculo', 'Cambio de frenos', '2024-12-03'),
(6, 203, 'Estacion', 'Revisión estructural', '2024-12-03');

--Insertar 3 rutas
INSERT INTO Ruta (idRuta, nombre, estaciones, tiempoProm)
VALUES
(1, 'Ruta1', '1,2,3', 35.5),
(2, 'Ruta2', '2,4,5', 40.0),
(3, 'Ruta3', '1,3,5', 50.0);

--Insertar 6 viajes
INSERT INTO Viaje (idViaje, busAsignado, fecha, estimacion)
VALUES
(1,  'E21', '2024-12-03 07:30:00', 40),
(2,  'T31', '2024-12-03 09:00:00', 35),
(3, 'E27', '2024-12-03 10:45:00', 50),
(4,  'P62A', '2024-12-03 13:20:00', 45),
(5,  'T52', '2024-12-03 15:10:00', 38),
(6,  'E21', '2024-12-03 17:00:00', 25);

--consulta
SELECT * FROM Viaje ORDER BY idViaje LIMIT 5;