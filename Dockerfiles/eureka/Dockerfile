FROM openjdk:11
VOLUME /tmp
EXPOSE 8761
ADD ./campus-ms-eureka-0.0.1-SNAPSHOT.jar eureka-server.jar
ENTRYPOINT ["java","-jar","/eureka-server.jar"]