
docker images

sudo service docker stop
sudo service docker start


#Laboratorios TESIS DE GRADO
docker network create springcloud
docker build -t ms-config-server:v1 .
docker build -t ms-eureka-server:v1 .
docker network create springcloud
docker run -d -p 8888:8888 --name config-server --network springcloud ms-config-server:v1
docker run -d -p 8761:8761 --name eureka-server --network springcloud ms-eureka-server:v1

docker pull mysql:8
docker run -d -p 3306:3306 --name mysql-server --network springcloud -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=db_springboot_micros mysql:8
docker pull postgres:12-alpine
docker run -d -p 5432:5432 --name postgres-server --network springcloud -e POSTGRES_PASSWORD=123456 -e POSTGRES_DB=db_springboot_micros postgres:12-alpine

docker build -t ms-productos:v1 .
docker run -d -P --network springcloud ms-productos:v1

docker build -t ms-zuul-server:v1 .
docker run -d -p 8090:8090 --name zuul-server --network springcloud ms-zuul-server:v1

docker build -t ms-usuarios:v1 .
docker run -d -P --network springcloud ms-usuarios:v1

docker build -t ms-oauth:v1 .
docker run -d -p 9100:9100 --name ms-oauth --network springcloud ms-oauth:v1

docker build -t ms-items:v1 .
docker run -d -p 8002:8002 --name ms-items --network springcloud ms-items:v1



#Laboratorio tesis de grado APP2

#docker build -t <usuario-docker-hub>/<repositorio>:<tag-versionamiento> .
docker build -t gardinsoft/tg-eureka:v1.0.0 .

docker build -t gardinsoft/tg-zuul:v1.0.0 .
docker build -t gardinsoft/tg-zuul:v1.0.1 .

docker build -t gardinsoft/tg-sconfig:v1.0.0 .
docker build -t gardinsoft/tg-cursos:v1.0.0 .
docker build -t gardinsoft/tg-examenes:v1.0.0 .
docker build -t gardinsoft/tg-respuestas:v1.0.0 .
docker build -t gardinsoft/tg-usuarios:v1.0.0 .
docker build -t gardinsoft/tg-usuarios:v1.0.0 .
docker build -t gardinsoft/tg-frontend:v1.0.0 .

#Subir imagenes a docker hub
docker login -u gardinsoft
#username:
#password:

docker push gardinsoft/tg-eureka:v1.0.0
docker push gardinsoft/tg-zuul:v1.0.1
docker push gardinsoft/tg-sconfig:v1.0.0
docker push gardinsoft/tg-cursos:v1.0.0
docker push gardinsoft/tg-examenes:v1.0.0
docker push gardinsoft/tg-respuestas:v1.0.0
docker push gardinsoft/tg-usuarios:v1.0.0
docker push gardinsoft/tg-frontend:v1.0.0