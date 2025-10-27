-- Script SQL para crear las tablas del Data Warehouse SIGESEC en PostgreSQL

-- Crear tabla dwContribuyentes
CREATE TABLE dwContribuyentes (
    id integer PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Crear tabla dwTiempos
CREATE TABLE dwTiempos (
    id integer PRIMARY KEY,
    mes VARCHAR(20) NOT NULL,
    anio VARCHAR(10) NOT NULL
);

-- Crear tabla dwEstudios
CREATE TABLE dwEstudios (
    id integer PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- Crear tabla dwSueldos
CREATE TABLE dwSueldos (
    id integer PRIMARY KEY,
    dwTiempo_id VARCHAR(50) NOT NULL,
    dwContribuyente_id integer NOT NULL,
    cantEmpleados INTEGER NOT NULL,
    
    -- Definir claves foráneas
    
);
