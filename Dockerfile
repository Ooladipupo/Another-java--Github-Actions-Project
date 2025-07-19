FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

RUN ls

# Setting an environment variable for a path to be used as our WORKDIR
ENV APP_HOME /usr/src/app

#copying our jar file to the workdir path, as you will see in line 13
COPY ./*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
