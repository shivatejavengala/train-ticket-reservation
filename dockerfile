# Use official Tomcat 8 with Java 8
FROM tomcat:8-jre8

# Metadata
LABEL maintainer="sanjeev" \
      version="v1.0.0" \
      description="TrainBook Java Web Application"

# Remove default Tomcat applications (recommended for production)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file and deploy as ROOT application
COPY target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
