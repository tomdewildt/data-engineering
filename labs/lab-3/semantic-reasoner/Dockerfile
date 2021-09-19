FROM tomcat:9.0.20-jre8-alpine

# Copy server binary
COPY ./reasoner-api.war /usr/local/tomcat/webapps/reasoner-api.war

# Create ansible directory
RUN mkdir -p /usr/local/tomcat/webapps/ansibles

# Setup environment variables
ENV ansiblePath=/usr/local/tomcat/webapps/ansibles/
ENV bugPredictorServer=http://jads-delabs-sodalite-tosca-smell:9090
ENV reasonerServer=http://jads-delabs-sodalite-semantic:8080
ENV graphdb=http://jads-delabs-sodalite-graphdb:7200
ENV environment=docker

# Run server
ENTRYPOINT ["catalina.sh", "run"]
