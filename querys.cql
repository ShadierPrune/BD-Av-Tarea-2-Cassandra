// query 1
SELECT nombre_actor, nacionalidad, edad, idiomas
FROM actors.actor
WHERE id_actor = 10000001
LIMIT 10;

// query 2
SELECT nombre_actor, id_actor, nacionalidad, edad, patrimonio
FROM actors.actores_por_nacionalidad
WHERE nacionalidad = 'Chile'
	AND id_actor > 10000000
	AND edad > 19
ORDER BY edad ASC
LIMIT 10;

// query 3
SELECT nombre_actor, id_actor, nombre_personaje, titulo_obra, cantidad_de_apariciones
FROM actors.personajes_de_actor_por_rol_y_apariciones
WHERE rol = 'principal'
	AND id_actor = 10000001
ORDER BY cantidad_de_apariciones DESC
LIMIT 10;

// query 4
SELECT nombre_actor, id_actor, nacionalidad
FROM actors.actores_por_nacionalidad
ORDER BY id_actor ASC
LIMIT 5;
