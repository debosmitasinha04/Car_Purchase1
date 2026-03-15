# Use Tomcat 10 with JDK 17
FROM tomcat:10-jdk17-openjdk-slim

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# 1. Copy web content (JSPs, etc.) from src/main/webapp
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT

# 2. Copy compiled classes from build/classes 
# If 'build' is missing on GitHub, we will use 'bin'
COPY build/classes /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

# 3. Copy your MySQL connector from the 'lib' folder
COPY lib/*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]