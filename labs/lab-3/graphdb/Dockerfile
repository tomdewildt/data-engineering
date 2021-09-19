FROM adoptopenjdk/openjdk11:alpine

# Arguments
ARG version=9.3.0
ARG edition=free

# Install bash
RUN apk add bash

# Install unzip
RUN apk add unzip

# Download graphdb
ADD http://160.40.52.200:8084/graph-db/graphdb-${edition}-${version}-dist.zip /tmp/graphdb.zip

# Make graphdb directory
RUN mkdir -p /opt/graphdb/home
WORKDIR /opt/graphdb

# Unarchive graphdb
RUN unzip /tmp/graphdb.zip

# Install graphdb
RUN mv graphdb-${edition}-${version} dist

# Run graphdb
ENTRYPOINT ["/opt/graphdb/dist/bin/graphdb"]
CMD ["-Dgraphdb.home=/opt/graphdb/home"]
