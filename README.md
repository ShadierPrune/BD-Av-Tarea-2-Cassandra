Integrantes:

Nombre: Felipe Santiago Parra Díaz
Rol: 202373568-k

Nombre: Alonso Ignacio Mansilla Gutíerrez
Rol: 202373623-6

# Consideraciones

GITHUB: https://github.com/ShadierPrune/BD-Av-Tarea-2-Cassandra.git


# Instrucciones de ejecución

Primero que nada debe hallarse en la carpeta la cual tenga el docker-compose.yml y el schema.cql

Ejecutando los siguientes comandos en la terminal (PowerShell):

    docker compose up -d

//Con la aplicación de Docker Desktop, haga click en el botón de play para correr los contenedores

Luego espere un momento y ejecute:

    docker ps

Para revisar cassandra:

    docker exec -it cassandra1 nodetool status

Para acceder a cassandra:

    docker exec -it cassandra1 cqlsh

Para crear todo, datatable, tablas:

    cqlsh -f schema.cql
