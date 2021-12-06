FROM bitnami/python:3.10.1 as build

FROM bitnami/spark:3.1.1

COPY --from=build /opt/bitnami/python/ /opt/bitnami/python/

RUN mv /opt/bitnami/spark/jars/guava-14.0.1.jar /opt/bitnami/spark/jars/guava-14.0.1.jar.bak

COPY *.jar /opt/bitnami/spark/jars/
