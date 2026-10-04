CREATE KEYSPACE actors
WITH replication = {
'class': 'NetworkTopologyStrategy',
'datacenter1': 3
};
USE actors;

// creo que esto va acá, creacion tablas
CREATE TABLE actors.actores_por_nacionalidad(
    id_nacionalidad int,
    nacionalidad text,
    id_actor int,
    nombre_actor text,
    fecha_de_nacimiento date,
    edad int,
    patrimonio int,
    idiomas set <text>,
    PRIMARY KEY ((id_nacionalidad),id_actor,edad)
) WITH comment = 'Responde a Q2'
AND CLUSTERING ORDER BY (id_actor ASC, edad ASC);

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
    PRIMARY KEY((id_actor),id_personaje,rol,cantidad_de_apariciones)
) WITH comment = 'Responde a Q3'
AND CLUSTERING ORDER BY (id_actor ASC, rol ASC, cantidad_de_apariciones DESC);

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


