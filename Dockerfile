# Use Tomcat 10 with JDK 17
FROM tomcat:10-jdk17-openjdk-slim

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your 'webapp' content into Tomcat's webapps folder
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT

# Copy your compiled Java classes
COPY build/classes /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

# Copy your JAR files (like MySQL connector)
COPY lib/*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]