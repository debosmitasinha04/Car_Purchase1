# Use Tomcat 10 with JDK 17
FROM tomcat:10-jdk17-openjdk-slim

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your web content (JSPs, CSS, etc.)
# Based on your Eclipse sidebar, the path is src/main/webapp
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT

# Copy your JAR files (MySQL connector, etc.)
COPY lib/*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/

# This line handles the Java classes
# Since Render can't find 'build/classes', we will look in 'bin' or 'target'
COPY bin /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

EXPOSE 8080
CMD ["catalina.sh", "run"]