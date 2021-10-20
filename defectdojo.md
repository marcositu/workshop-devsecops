# Comandos para iniciar un contenedor de docker de DefectDojo 
`git clone https://github.com/DefectDojo/django-DefectDojo`
`cd django-DefectDojo`

Recomendamos modificar el puerto 8080 por 8082 como también agregar el parámetro "restart" dentro del archivo docker-compose.yml.
 
 *ports:
      - target: 8080
        published: ${DD_PORT:-8082}*

*restart: always*

`docker-compose build`

`docker-compose up -d`

`docker-compose logs initializer | grep "Admin password:"`
