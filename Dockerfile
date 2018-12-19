FROM ubuntu:16.04
RUN \
    apt-get update && \
    apt-get upgrade -y && \ 
    apt-get install -y iputils-ping && \
    apt-get install -y vim && \
    apt-get install -y net-tools && \
    apt-get install -y tar wget git && \ 
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y autoconf libtool && \
    apt-get -y install build-essential python-dev python-six python-virtualenv libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev zlib1g-dev iputils-ping

#Install Maven 3
RUN wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    tar -xzvf apache-maven-3.3.9-bin.tar.gz

#install zookeper
RUN wget https://archive.apache.org/dist/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz && \
    tar -xvzf apache-maven-3.3.9-bin.tar.gz && \
    mv apache-maven-3.3.9 maven && \ 
   
 
RUN wget http://www.apache.org/dist/mesos/1.7.0/mesos-1.7.0.tar.gz && \
    tar -zxf mesos-1.7.0.tar.gz && \
    rm -rf apache-maven-3.3.9-bin.tar.gz 



