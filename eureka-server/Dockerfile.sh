#Imagen base
FROM openjdk:11

#Creacion de volumen
VOLUME /tmp

#Indica los puertos TCP/IP para acceder a los servicios del contenedor
EXPOSE 8761

#Copiado de archivos
ADD ./campus-ms-eureka-0.0.1-SNAPSHOT.jar eureka-server.jar

#Comando por defecto del contenedor
ENTRYPOINT ["java","-jar","/eureka-server.jar"]