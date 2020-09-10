FROM hollisho/centos:latest

MAINTAINER Hollis Ho "he_wenzhi@126.com"

WORKDIR /usr/local/src

COPY src/jdk-8u231-linux-x64.tar.gz ./jdk-8u231-linux-x64.tar.gz

RUN tar -zxvf jdk-8u231-linux-x64.tar.gz

RUN mv /usr/local/src/jdk1.8.0_231 /usr/local/jdk1.8

ENV JAVA_HOME /usr/local/jdk1.8

ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

ENV PATH $PATH:$JAVA_HOME/bin
