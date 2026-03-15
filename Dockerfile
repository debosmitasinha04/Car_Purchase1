# Use Tomcat 10 with JDK 17
FROM tomcat:10-jdk17-openjdk-slim

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your 'webapp' content into Tomcat's webapps folder
# Change 'src/main/webapp' to just 'WebContent' if that is your folder name
COPY WebContent /usr/local/tomcat/webapps/ROOT

# Copy your compiled Java classes
# Eclipse usually puts these in 'build/classes' or 'bin'
COPY build/classes /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

# Copy your JAR files (like MySQL connector)
COPY lib/*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]
