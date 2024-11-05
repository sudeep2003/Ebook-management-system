# Use an official Tomcat image with Java pre-installed
FROM tomcat:9-jdk11

# Copy the specific WAR file from the target directory to Tomcat's webapps directory
COPY target/EBook-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose port 8080 to access the application
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
