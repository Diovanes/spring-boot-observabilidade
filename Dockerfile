FROM amazoncorretto:17
MAINTAINER Diovane S. <diovanes@gmail.com>

# Add the service itself
ADD target/spring-boot-jpa-postgresql*.jar /usr/share/api/app.jar

# FileBeat
ADD elastic/filebeat.yml /workspace/filebeat.yml
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.11.0-x86_64.rpm && yum install -y filebeat-8.11.0-x86_64.rpm

ADD start.sh /workspace/start.sh
RUN ["chmod", "+x", "/workspace/start.sh"]

# Startup service
ENTRYPOINT ["/workspace/start.sh"]

