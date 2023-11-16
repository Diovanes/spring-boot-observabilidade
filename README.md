# Spring Boot JPA PostgreSQL example with Maven

For build / package:
>  mvn clean package  -Pprod -Dmaven.test.skip=true -Dmaven.javadoc.skip=true

For build image:
>  docker build -t diovanes/spring-boot-jpa-postgresql:0.0.1-SNAPSHOT .

For run image:
> docker run -p 8080:8080 diovanes/spring-boot-jpa-postgresql:0.0.1-SNAPSHOT

## Run Spring Boot application
```
mvn spring-boot:run
```

