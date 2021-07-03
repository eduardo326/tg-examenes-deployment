FROM openjdk:11
VOLUME /tmp
EXPOSE 8888
ADD ./campus-ms-config-0.0.1-SNAPSHOT.jar sconfig.jar
ENTRYPOINT ["java","-jar","/sconfig.jar"]