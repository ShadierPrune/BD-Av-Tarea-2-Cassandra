// keyspace

CREATE KEYSPACE actors
WITH replication = {
	’class’: ’NetworkTopologyStrategy’,
	’datacenter1’: 3
};
USE actors;

// creación de tablas
CREATE TABLE actors.actores_por_nacionalidad(
    nacionalidad text,
    id_actor int,
    nombre_actor text,
    fecha_de_nacimiento date,
    edad int,
    patrimonio int,
    idiomas set <text>,
    PRIMARY KEY ((nacionalidad), edad, id_actor)
) WITH comment = 'Responde a Q2'
AND CLUSTERING ORDER BY (edad ASC, id_actor ASC);

CREATE TABLE actors.personajes_de_actor_por_rol_y_apariciones(
    id_actor int,
    nombre_actor text,
    id_personaje int,
    nombre_personaje text,
    titulo_obra text,
    produccion text,
    tipo_de_produccion text,
    rol text,
    cantidad_de_apariciones int,
    generos set <text>,
    PRIMARY KEY((id_actor),rol,cantidad_de_apariciones,id_personaje)
) WITH comment = 'Responde a Q3'
AND CLUSTERING ORDER BY (rol ASC, cantidad_de_apariciones DESC, id_personaje ASC);

CREATE TABLE actors.actor(
    id_actor int,
    nombre_actor text,
    nacionalidad text,
    fecha_de_nacimiento date,
    edad int,
    patrimonio int,
    idiomas set<text>,
    PRIMARY KEY (id_actor)
) WITH comment = 'Responde a Q1';

// población de datos

INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000001, 'Pedro Silva', 'Chile', '2006-03-15', 20, 50000, {'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Chile', 10000001, 'Pedro Silva', '2006-03-15', 20, 50000, {'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000001, 'Pedro Silva', 101, 'Héroe Azul', 'Cielo Rojo', 'Animex', 'profesional', 'principal', 50, {'Acción'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000001, 'Pedro Silva', 102, 'Chico Genio', 'La Escuela', 'Canal 13', 'profesional', 'secundario', 30, {'Comedia'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000002, 'Sofía Vargas', 'Chile', '2001-05-10', 25, 120000, {'español', 'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Chile', 10000002, 'Sofía Vargas', '2001-05-10', 25, 120000, {'español', 'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000002, 'Sofía Vargas', 103, 'Detective Pistas', 'Casos Difíciles', 'Estudio B', 'independiente', 'principal', 20, {'Misterio'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000003, 'Matías González', 'Chile', '1994-08-20', 32, 250000, {'español', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Chile', 10000003, 'Matías González', '1994-08-20', 32, 250000, {'español', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000003, 'Matías González', 104, 'Samurai Vengador', 'Katana Sangrienta', 'Toei Latam', 'profesional', 'principal', 100, {'Acción', 'Drama'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000004, 'Camila Rojas', 'Chile', '1981-11-01', 45, 800000, {'español', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Chile', 10000004, 'Camila Rojas', '1981-11-01', 45, 800000, {'español', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000004, 'Camila Rojas', 105, 'Madre Tierra', 'Planeta Verde', 'EcoFilms', 'independiente', 'secundario', 15, {'Documental'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000005, 'Luis Sepúlveda', 'Chile', '1971-02-28', 55, 1000000, {'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Chile', 10000005, 'Luis Sepúlveda', '1971-02-28', 55, 1000000, {'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000005, 'Luis Sepúlveda', 106, 'Anciano Sabio', 'El Viaje', 'Cine Arte', 'profesional', 'episódico', 3, {'Aventura'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000006, 'Mateo Blanco', 'Argentina', '2004-01-10', 22, 60000, {'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Argentina', 10000006, 'Mateo Blanco', '2004-01-10', 22, 60000, {'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000006, 'Mateo Blanco', 107, 'Goleador', 'Fútbol Total', 'Deportes TV', 'profesional', 'principal', 80, {'Deporte', 'Drama'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000007, 'Valentina Rossi', 'Argentina', '1998-04-12', 28, 150000, {'español', 'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Argentina', 10000007, 'Valentina Rossi', '1998-04-12', 28, 150000, {'español', 'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000007, 'Valentina Rossi', 108, 'Princesa Mágica', 'Reino de Luz', 'Animar Studios', 'profesional', 'principal', 45, {'Fantasía'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000008, 'Lucas Martínez', 'Argentina', '1991-09-09', 35, 400000, {'español', 'inglés', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Argentina', 10000008, 'Lucas Martínez', '1991-09-09', 35, 400000, {'español', 'inglés', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000008, 'Lucas Martínez', 109, 'Villano Oscuro', 'Sombras del Mal', 'Dark Productions', 'independiente', 'secundario', 25, {'Terror'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000009, 'Martina Fernández', 'Argentina', '1979-12-05', 47, 750000, {'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Argentina', 10000009, 'Martina Fernández', '1979-12-05', 47, 750000, {'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000009, 'Martina Fernández', 110, 'Inspectora Jefa', 'Crimen en la Ciudad', 'Policiales BA', 'profesional', 'secundario', 60, {'Suspenso'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000010, 'Diego López', 'Argentina', '1966-06-15', 60, 1200000, {'español', 'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Argentina', 10000010, 'Diego López', '1966-06-15', 60, 1200000, {'español', 'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000010, 'Diego López', 111, 'Rey Caído', 'Tronos de Hierro', 'Epic Series', 'profesional', 'episódico', 5, {'Fantasía', 'Drama'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000011, 'Alejandro Juárez', 'México', '2003-07-22', 23, 70000, {'español', 'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('México', 10000011, 'Alejandro Juárez', '2003-07-22', 23, 70000, {'español', 'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000011, 'Alejandro Juárez', 112, 'Luchador Enmascarado', 'Ring de Fuego', 'Lucha Libre Corp', 'profesional', 'principal', 150, {'Acción', 'Deporte'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000012, 'María Hernández', 'México', '1996-10-30', 30, 200000, {'español', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('México', 10000012, 'María Hernández', '1996-10-30', 30, 200000, {'español', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000012, 'María Hernández', 113, 'Cantante Pop', 'Sueños de Estrellas', 'Televisa', 'profesional', 'principal', 200, {'Musical', 'Drama'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000013, 'Carlos Rodríguez', 'México', '1989-01-18', 37, 350000, {'español', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('México', 10000013, 'Carlos Rodríguez', '1989-01-18', 37, 350000, {'español', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000013, 'Carlos Rodríguez', 114, 'Piloto Rebelde', 'Guerra Estelar', 'Galaxia Films', 'independiente', 'principal', 35, {'Ciencia Ficción'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000014, 'Fernanda Gómez', 'México', '1976-03-25', 50, 900000, {'español', 'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('México', 10000014, 'Fernanda Gómez', '1976-03-25', 50, 900000, {'español', 'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000014, 'Fernanda Gómez', 115, 'Reina Alienígena', 'Invasión', 'SciFi Channel', 'profesional', 'secundario', 40, {'Ciencia Ficción'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000015, 'Roberto Pérez', 'México', '1964-08-08', 62, 1500000, {'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('México', 10000015, 'Roberto Pérez', '1964-08-08', 62, 1500000, {'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000015, 'Roberto Pérez', 116, 'Abuelo Cuentacuentos', 'Historias de Familia', 'Canal Cultural', 'independiente', 'episódico', 10, {'Comedia', 'Familiar'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000016, 'John Smith', 'Estados Unidos', '2001-12-12', 25, 100000, {'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Estados Unidos', 10000016, 'John Smith', '2001-12-12', 25, 100000, {'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000016, 'John Smith', 117, 'Superhéroe Águila', 'Vengadores Alados', 'Marvelous', 'profesional', 'principal', 110, {'Acción'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000016, 'John Smith', 118, 'Ciudadano 4', 'La Invasión', 'SciFi Channel', 'profesional', 'episódico', 1, {'Ciencia Ficción'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000017, 'Emily Davis', 'Estados Unidos', '1993-02-14', 33, 300000, {'inglés', 'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Estados Unidos', 10000017, 'Emily Davis', '1993-02-14', 33, 300000, {'inglés', 'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000017, 'Emily Davis', 119, 'Hacker Maestra', 'Cyber Red', 'TechMedia', 'profesional', 'principal', 75, {'Ciencia Ficción', 'Suspenso'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000018, 'Michael Brown', 'Estados Unidos', '1986-06-20', 40, 600000, {'inglés', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Estados Unidos', 10000018, 'Michael Brown', '1986-06-20', 40, 600000, {'inglés', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000018, 'Michael Brown', 120, 'Vaquero Solitario', 'Oeste Salvaje', 'Western Bros', 'independiente', 'principal', 20, {'Western', 'Aventura'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000019, 'Sarah Wilson', 'Estados Unidos', '1974-09-15', 52, 1100000, {'inglés', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Estados Unidos', 10000019, 'Sarah Wilson', '1974-09-15', 52, 1100000, {'inglés', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000019, 'Sarah Wilson', 121, 'Doctora Curación', 'Hospital Central', 'MedTV', 'profesional', 'secundario', 250, {'Drama'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000020, 'David Miller', 'Estados Unidos', '1961-11-20', 65, 2000000, {'inglés', 'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Estados Unidos', 10000020, 'David Miller', '1961-11-20', 65, 2000000, {'inglés', 'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000020, 'David Miller', 122, 'Fantasma Antiguo', 'La Mansión Embrujada', 'HorrorInc', 'independiente', 'episódico', 4, {'Terror', 'Misterio'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000021, 'James Taylor', 'Canadá', '1999-04-05', 27, 120000, {'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Canadá', 10000021, 'James Taylor', '1999-04-05', 27, 120000, {'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000021, 'James Taylor', 123, 'Leñador Valiente', 'Bosques Fríos', 'NorthWoods', 'profesional', 'principal', 50, {'Aventura'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000022, 'Emma Anderson', 'Canadá', '1992-07-08', 34, 280000, {'inglés', 'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Canadá', 10000022, 'Emma Anderson', '1992-07-08', 34, 280000, {'inglés', 'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000022, 'Emma Anderson', 124, 'Hada del Hielo', 'Magia Invernal', 'SnowAnimation', 'profesional', 'principal', 90, {'Fantasía'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000023, 'William Thomas', 'Canadá', '1984-10-10', 42, 500000, {'inglés', 'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Canadá', 10000023, 'William Thomas', '1984-10-10', 42, 500000, {'inglés', 'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000023, 'William Thomas', 125, 'Agente Secreto', 'Espías en la Sombra', 'CovertOps', 'independiente', 'secundario', 30, {'Acción', 'Misterio'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000024, 'Olivia Jackson', 'Canadá', '1972-12-30', 54, 950000, {'inglés', 'japonés', 'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Canadá', 10000024, 'Olivia Jackson', '1972-12-30', 54, 950000, {'inglés', 'japonés', 'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000024, 'Olivia Jackson', 126, 'Consejera Real', 'Castillo de Cartas', 'DramaQueen', 'profesional', 'secundario', 60, {'Drama'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000025, 'Robert White', 'Canadá', '1959-01-25', 67, 1800000, {'inglés', 'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Canadá', 10000025, 'Robert White', '1959-01-25', 67, 1800000, {'inglés', 'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000025, 'Robert White', 127, 'Capitán Pirata', 'Mares Bravos', 'Ocean Studios', 'independiente', 'episódico', 2, {'Aventura', 'Acción'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000026, 'Hiroshi Tanaka', 'Japón', '1998-03-03', 28, 150000, {'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Japón', 10000026, 'Hiroshi Tanaka', '1998-03-03', 28, 150000, {'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000026, 'Hiroshi Tanaka', 128, 'Ninja Veloz', 'Aldea Oculta', 'Shonen Jump Anim', 'profesional', 'principal', 300, {'Acción', 'Animación'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000026, 'Hiroshi Tanaka', 129, 'Estudiante', 'Romance Escolar', 'Shojo Studio', 'independiente', 'secundario', 12, {'Romance'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000027, 'Yuki Sato', 'Japón', '1991-05-15', 35, 350000, {'japonés', 'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Japón', 10000027, 'Yuki Sato', '1991-05-15', 35, 350000, {'japonés', 'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000027, 'Yuki Sato', 130, 'Guerrera Mágica', 'Luz de Luna', 'Shojo Studio', 'profesional', 'principal', 150, {'Fantasía', 'Animación'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000028, 'Kenji Suzuki', 'Japón', '1982-08-22', 44, 700000, {'japonés', 'español'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Japón', 10000028, 'Kenji Suzuki', '1982-08-22', 44, 700000, {'japonés', 'español'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000028, 'Kenji Suzuki', 131, 'Robot Gigante', 'Mecha Wars', 'Gundam Works', 'profesional', 'secundario', 80, {'Ciencia Ficción', 'Acción'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000029, 'Aiko Takahashi', 'Japón', '1971-10-11', 55, 1200000, {'japonés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Japón', 10000029, 'Aiko Takahashi', '1971-10-11', 55, 1200000, {'japonés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000029, 'Aiko Takahashi', 132, 'Diosa del Sol', 'Mitos Antiguos', 'Nihon Films', 'independiente', 'secundario', 12, {'Fantasía', 'Histórico'});


INSERT INTO actors.actor (id_actor, nombre_actor, nacionalidad, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES (10000030, 'Taro Watanabe', 'Japón', '1956-02-18', 70, 2500000, {'japonés', 'inglés'});

INSERT INTO actors.actores_por_nacionalidad (nacionalidad, id_actor, nombre_actor, fecha_de_nacimiento, edad, patrimonio, idiomas) 
VALUES ('Japón', 10000030, 'Taro Watanabe', '1956-02-18', 70, 2500000, {'japonés', 'inglés'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) 
VALUES (10000030, 'Taro Watanabe', 133, 'Maestro de Artes Marciales', 'El Último Dragón', 'Kyoto Arts', 'profesional', 'episódico', 8, {'Artes Marciales', 'Drama'});

// más personajes

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000001, 'Pedro Silva', 201, 'Capitán Estrella', 'Galaxy', 'SpaceX Films', 'profesional', 'principal', 100, {'Ciencia Ficción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000001, 'Pedro Silva', 202, 'Banquero', 'El Atraco', 'Crime Studios', 'independiente', 'secundario', 15, {'Acción'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000002, 'Sofía Vargas', 203, 'Reina del Mar', 'Océanos', 'Blue Water', 'profesional', 'principal', 120, {'Aventura'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000002, 'Sofía Vargas', 204, 'Socia Comercial', 'Negocios', 'Capital Corp', 'independiente', 'secundario', 25, {'Drama'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000003, 'Matías González', 205, 'Sargento Furia', 'Guerra Total', 'Action Bros', 'profesional', 'principal', 80, {'Acción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000003, 'Matías González', 206, 'Tabernero', 'Reino Mágico', 'Fantasy Inc', 'profesional', 'secundario', 40, {'Fantasía'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000004, 'Camila Rojas', 207, 'Madre Naturaleza', 'Planeta Vivo', 'EcoDocs', 'independiente', 'principal', 30, {'Documental'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000004, 'Camila Rojas', 208, 'Enfermera Jefa', 'Hospital Central', 'MedTV', 'profesional', 'secundario', 60, {'Drama'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000005, 'Luis Sepúlveda', 209, 'Dios del Viento', 'Mitos', 'Historias', 'profesional', 'principal', 150, {'Fantasía'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000005, 'Luis Sepúlveda', 210, 'Viejo Gruñón', 'La Vecindad', 'Comedy Arts', 'profesional', 'secundario', 70, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000006, 'Mateo Blanco', 211, 'Piloto de Fórmula 1', 'Velocidad', 'Racing Films', 'profesional', 'principal', 90, {'Deporte'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000006, 'Mateo Blanco', 212, 'Mecánico 2', 'Taller', 'Indie Cars', 'independiente', 'secundario', 20, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000007, 'Valentina Rossi', 213, 'Hada Oscura', 'Bosque Encantado', 'Animar Studios', 'profesional', 'principal', 55, {'Fantasía'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000007, 'Valentina Rossi', 214, 'Vecina Chismosa', 'Mi Barrio', 'TV Local', 'independiente', 'secundario', 12, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000008, 'Lucas Martínez', 215, 'Agente Doble', 'Traición', 'Spy Corp', 'profesional', 'principal', 200, {'Suspenso'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000008, 'Lucas Martínez', 216, 'Vendedor', 'Calles', 'Urban Prods', 'independiente', 'secundario', 35, {'Drama'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000009, 'Martina Fernández', 217, 'Científica Loca', 'Experimento X', 'SciFi Channel', 'profesional', 'principal', 65, {'Ciencia Ficción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000009, 'Martina Fernández', 218, 'Profesora', 'Clases', 'Educa TV', 'profesional', 'secundario', 80, {'Familiar'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000010, 'Diego López', 219, 'Juez Implacable', 'Tribunal', 'Law Series', 'profesional', 'principal', 150, {'Drama'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000010, 'Diego López', 220, 'Vigilante', 'Prisión', 'Lockup', 'independiente', 'secundario', 18, {'Acción'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000011, 'Alejandro Juárez', 221, 'Samurai Ronin', 'Honor', 'Bushido', 'independiente', 'principal', 40, {'Histórico'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000011, 'Alejandro Juárez', 222, 'Pasajero 3', 'Vuelo 45', 'Action Bros', 'profesional', 'episódico', 2, {'Suspenso'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000012, 'María Hernández', 223, 'Chef Maestra', 'Cocina Al Rojo', 'FoodTV', 'profesional', 'principal', 100, {'Drama'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000012, 'María Hernández', 224, 'Camarera', 'Cafetería', 'Indie Eats', 'independiente', 'episódico', 4, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000013, 'Carlos Rodríguez', 225, 'Comandante Espacial', 'Neo Galaxia', 'SciFi Channel', 'profesional', 'principal', 130, {'Ciencia Ficción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000013, 'Carlos Rodríguez', 226, 'Guardia de Puerta', 'El Castillo', 'Fantasy Inc', 'profesional', 'episódico', 1, {'Fantasía'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000014, 'Fernanda Gómez', 227, 'Diosa Griega', 'Olimpo', 'Mitos', 'independiente', 'principal', 25, {'Histórico'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000014, 'Fernanda Gómez', 228, 'Señora del Parque', 'Un Día', 'Urban Prods', 'independiente', 'episódico', 3, {'Drama'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000015, 'Roberto Pérez', 229, 'Capo de la Mafia', 'La Familia', 'Crime Studios', 'profesional', 'principal', 110, {'Drama'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000015, 'Roberto Pérez', 230, 'Cartero', 'Vecinos', 'TV Local', 'profesional', 'episódico', 2, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000016, 'John Smith', 231, 'Héroe de Fuego', 'Llamas', 'Marvelous', 'profesional', 'principal', 95, {'Acción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000016, 'John Smith', 232, 'Taxista Aterrado', 'Monstruo', 'HorrorInc', 'independiente', 'episódico', 1, {'Terror'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000017, 'Emily Davis', 233, 'Espía Maestra', 'Sin Rastro', 'CovertOps', 'profesional', 'principal', 140, {'Acción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000017, 'Emily Davis', 234, 'Víctima 1', 'CSI', 'Law Series', 'profesional', 'episódico', 1, {'Suspenso'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000018, 'Michael Brown', 235, 'Comisario del Pueblo', 'Ley Seca', 'Westerns', 'independiente', 'principal', 30, {'Western'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000018, 'Michael Brown', 236, 'Transeúnte', 'New York', 'Urban Prods', 'independiente', 'episódico', 3, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000019, 'Sarah Wilson', 237, 'Presidenta', 'Gabinete', 'Capital Corp', 'profesional', 'principal', 160, {'Drama'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000019, 'Sarah Wilson', 238, 'Dueña del Perro', 'Parque', 'Familiar TV', 'profesional', 'episódico', 4, {'Familiar'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000020, 'David Miller', 239, 'Mago Supremo', 'Ilusión', 'Magic Studios', 'profesional', 'principal', 210, {'Fantasía'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000020, 'David Miller', 240, 'Anciano Asustado', 'Invasores', 'SciFi Channel', 'independiente', 'episódico', 2, {'Ciencia Ficción'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000021, 'James Taylor', 241, 'Secuaz del Villano', 'Héroes', 'Marvelous', 'profesional', 'secundario', 40, {'Acción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000021, 'James Taylor', 242, 'Leñador 2', 'Bosque', 'NorthWoods', 'independiente', 'episódico', 2, {'Aventura'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000022, 'Emma Anderson', 243, 'Hermana Menor', 'Familia', 'Familiar TV', 'profesional', 'secundario', 70, {'Familiar'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000022, 'Emma Anderson', 244, 'Chica en el Bar', 'Noches', 'Urban Prods', 'independiente', 'episódico', 5, {'Romance'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000023, 'William Thomas', 245, 'Investigador Privado', 'Noir', 'Crime Studios', 'independiente', 'secundario', 25, {'Misterio'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000023, 'William Thomas', 246, 'Repartidor de Pizza', 'Comedia', 'Comedy Arts', 'profesional', 'episódico', 4, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000024, 'Olivia Jackson', 247, 'Tía Rica', 'Herencia', 'DramaQueen', 'profesional', 'secundario', 55, {'Drama'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000024, 'Olivia Jackson', 248, 'Pasajera de Tren', 'Destino', 'TravelTV', 'independiente', 'episódico', 3, {'Aventura'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000025, 'Robert White', 249, 'Contramaestre', 'Navío', 'Ocean Studios', 'profesional', 'secundario', 45, {'Acción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000025, 'Robert White', 250, 'Vagabundo', 'Ciudad Oscura', 'Urban Prods', 'independiente', 'episódico', 1, {'Drama'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000026, 'Hiroshi Tanaka', 251, 'Rival de la Escuela', 'Torneo', 'Shonen Jump Anim', 'profesional', 'secundario', 120, {'Acción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000026, 'Hiroshi Tanaka', 252, 'Cliente de Tienda', 'Vida Diaria', 'Slice of Life', 'independiente', 'episódico', 6, {'Comedia'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000027, 'Yuki Sato', 253, 'Mejor Amiga', 'Romance', 'Shojo Studio', 'profesional', 'secundario', 90, {'Romance'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000027, 'Yuki Sato', 254, 'Fans #1', 'Idols', 'MusicTV', 'independiente', 'episódico', 2, {'Musical'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000028, 'Kenji Suzuki', 255, 'Ingeniero Jefe', 'Estación', 'Gundam Works', 'profesional', 'secundario', 75, {'Ciencia Ficción'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000028, 'Kenji Suzuki', 256, 'Soldado Herido', 'Frente', 'War Films', 'independiente', 'episódico', 1, {'Drama'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000029, 'Aiko Takahashi', 257, 'Espíritu Guía', 'Cuentos', 'Nihon Films', 'profesional', 'secundario', 30, {'Fantasía'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000029, 'Aiko Takahashi', 258, 'Anciana del Pueblo', 'Época', 'Histórico TV', 'independiente', 'episódico', 4, {'Histórico'});

INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000030, 'Taro Watanabe', 259, 'Concejal Corrupto', 'Ciudad Neón', 'Kyoto Arts', 'profesional', 'secundario', 40, {'Suspenso'});
INSERT INTO actors.personajes_de_actor_por_rol_y_apariciones (id_actor, nombre_actor, id_personaje, nombre_personaje, titulo_obra, produccion, tipo_de_produccion, rol, cantidad_de_apariciones, generos) VALUES (10000030, 'Taro Watanabe', 260, 'Transeúnte 4', 'Calles de Tokyo', 'Urban Prods', 'independiente', 'episódico', 2, {'Drama'});