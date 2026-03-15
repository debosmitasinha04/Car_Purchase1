# Use Tomcat 10 with JDK 17
FROM tomcat:10-jdk17-openjdk-slim

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# 1. Copy web content (JSPs, etc.)
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT

# 2. Copy compiled classes

COPY src/main/webapp/WEB-INF/classes /usr/local/tomcat/webapps/ROOT/WEB-INF/classes
# 3. Copy MySQL connector from the ROOT folder (where it is on GitHub)
COPY mysql-connector-j-9.6.0.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]
