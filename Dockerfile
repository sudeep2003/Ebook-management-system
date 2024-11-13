# Use an official Tomcat image as the base
FROM tomcat:9.0-jdk11

# Set environment variables for MySQL connection
ENV MYSQL_HOST=mysql
ENV MYSQL_PORT=3306
ENV MYSQL_DATABASE=ebookdb
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=my-secret-pw

# Copy your application WAR file or source files into the Tomcat webapps directory
COPY target/EBook-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/EBook.war

# Expose port 8080 for the application
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
