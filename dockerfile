FROM tomcat:9.0

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps directory
COPY JavaStatickWebsite.war /usr/local/tomcat/webapps/

# Expose port 8085
EXPOSE 8080

CMD ["catalina.sh", "run"]
