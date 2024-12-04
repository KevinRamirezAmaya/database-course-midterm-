-- Tabla Vehículo
CREATE TABLE Vehiculo (
    idVehiculo INT PRIMARY KEY NOT NULL,
    modelo VARCHAR(10),
    fecha DATE,
    capacidad INT,
    estado VARCHAR(10)
);

-- Tabla Trabajador
CREATE TABLE Trabajador (
    identificacion INT PRIMARY KEY NOT NULL,
    cargo VARCHAR(10),
    codigo INT,
    nombre VARCHAR(10),
    experiencia INT
);

-- Tabla Ruta
CREATE TABLE Ruta (
    idRuta INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(10),
    estaciones VARCHAR(50),
    tiempoProm FLOAT
);

-- Tabla Estación
CREATE TABLE Estacion (
    idEstacion INT PRIMARY KEY NOT NULL,
    maxPasajeros INT,
    nombreUbic VARCHAR(15),
    ubicacion VARCHAR(15)
);

-- Tabla Mantenimiento
CREATE TABLE Mantenimiento (
    idMantenimiento INT PRIMARY KEY NOT NULL,
    identificacion INT REFERENCES Trabajador(identificacion),
    tipo VARCHAR(15),
    descripcion VARCHAR(30),
    fecha DATE
);

-- Tabla Viaje
CREATE TABLE Viaje (
    idViaje INT PRIMARY KEY NOT NULL,
    idVehiculo INT REFERENCES Vehiculo(idVehiculo),
    busAsignado VARCHAR(10),
    fecha TIMESTAMP,
    estimacion INT
);

-- Tabla Mantenimiento_Vehiculo
CREATE TABLE Mantenimiento_Vehiculo (
    idMantenimiento INT,
    idVehiculo INT,
    PRIMARY KEY (idMantenimiento, idVehiculo),
    FOREIGN KEY (idMantenimiento) REFERENCES Mantenimiento(idMantenimiento),
    FOREIGN KEY (idVehiculo) REFERENCES Vehiculo(idVehiculo)
);

-- Tabla Mantenimiento_Estacion
CREATE TABLE Mantenimiento_Estacion (
    idMantenimiento INT,
    idEstacion INT,
    PRIMARY KEY (idMantenimiento, idEstacion),
    FOREIGN KEY (idMantenimiento) REFERENCES Mantenimiento(idMantenimiento),
    FOREIGN KEY (idEstacion) REFERENCES Estacion(idEstacion)
);
