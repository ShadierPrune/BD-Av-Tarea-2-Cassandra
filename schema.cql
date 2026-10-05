SELECT data_center FROM system.local;
CREATE KEYSPACE actors
WITH replication = {
'class': 'NetworkTopologyStrategy',
'datacenter1': 3
};
USE actors;

// aquí va la creación de tablas
CREATE TABLE actors.actores_por_nacionalidad(
    id_nacionalidad int,
    nacionalidad text,
    id_actor int,
    nombre_actor text,
    fecha_de_nacimiento date,
    edad int,
    patrimonio int,
    idiomas set <text>,
    PRIMARY KEY ((id_nacionalidad), edad, id_actor)
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


