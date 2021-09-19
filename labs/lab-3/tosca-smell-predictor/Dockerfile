FROM tomcat:8.5.41-jre8-alpine

# Copy server binary
COPY ./bug-predictor-api.war /usr/local/tomcat/webapps/bug-predictor-api.war

# Setup environment variables
ENV graphdb=http://jads-delabs-sodalite-graphdb:7200

# Run server
ENTRYPOINT ["catalina.sh", "run"]
