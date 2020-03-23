FROM openjdk:8-jre-slim

WORKDIR /srv/
ENV CTAKES_HOME=/srv/apache-ctakes-3.2.2
ADD apache-ctakes-3.2.2-bin.tar.gz .
COPY ctakes-resources-3.2.1.1-bin.zip ./apache-ctakes-3.2.2/
RUN apt-get update &&\
    apt-get install -y unzip &&\
    cd ./apache-ctakes-3.2.2/ &&\
    unzip -o ctakes-resources-3.2.1.1-bin.zip
COPY ./ctakes-config ./ctakes-config
COPY ./tika-server-1.24.jar ./tika-server-1.24.jar
COPY ./run-tika.sh ./run-tika.sh

ENTRYPOINT [ "/srv/run-tika.sh" ]