DROP TABLE IF EXISTS departamentos CASCADE;

CREATE TABLE departamentos (
    id bigserial PRIMARY KEY,
    codigo numeric(2) NOT NULL UNIQUE,
    denominacion varchar(255) NOT NULL
);

-- Fixtures:
INSERT INTO
    departamentos (codigo, denominacion)
VALUES
    (10, 'Informática'),
    (20, 'Administrativo'),
    (30, 'Prevención'),
    (40, 'Laboratorio'),
    (50, 'Automoción');

DROP TABLE IF EXISTS empleados CASCADE;

CREATE TABLE empleados (
    id bigserial PRIMARY KEY,
    numero numeric(2) NOT NULL UNIQUE,
    nombre varchar(25) NOT NULL,
    salario numeric(7, 2) NOT NULL,
    fecha_nac timestamp NOT NULL,
    departamento_id bigint NOT NULL REFERENCES departamentos(id)
);

INSERT INTO
    empleados (
        numero,
        nombre,
        salario,
        fecha_nac,
        departamento_id
    )
VALUES
    (15, 'Javier', 1800, '06/01/1997', 1),
    (16, 'Julio', 1750, '04/01/2001', 2);