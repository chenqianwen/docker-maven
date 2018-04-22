FROM openjdk:8-jre
EXPOSE 8080
ARG JAR_FILE
ADD ${JAR_FILE} /home/server.jar
ENV TZ "Asia/Shanghai"
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["sh","/usr/local/bin/docker-entrypoint.sh"]
