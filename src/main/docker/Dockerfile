FROM amazoncorretto:8u392-al2023-jre
MAINTAINER Diovane S. <diovanes@gmail.com>

# Add the service itself
ADD target/spring-boot-jpa-postgresql*.jar /usr/share/api/app.jar

# Startup service
ENTRYPOINT ["java", "-jar", "/usr/share/api/app.jar", "-Djava.net.preferIPv4Stack=true"]

