FROM tianon/centos:6.5
MAINTAINER Jasmine Hegman <jasmine@webpt.com>


# Install dependencies
RUN yum -y update
RUN yum -y install bridge-utils wget dnsmasq build-essential tar
RUN yum -y groupinstall "Development Tools"


# Install Zookeeper
RUN mkdir -p /root/zookeeper/
RUN cd /root/zookeeper/

RUN curl http://apache.osuosl.org/zookeeper/zookeeper-3.4.5/zookeeper-3.4.5.tar.gz -o zookeeper-3.4.5.tar.gz
RUN tar xzf zookeeper-3.4.5.tar.gz
RUN rm -rf zookeeper-3.4.5.tar.gz
RUN mv zookeeper-3.4.5/* ./
RUN rm -rf zookeeper-3.4.5

# Success
RUN echo "'/root/zookeeper/bin/zkServer.sh start' to start"
