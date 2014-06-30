docker-base--zookeeper
======================

A basic [Dockerfile](https://docker.io) for a raw [zookeeper](http://zookeeper.apache.org/) instance. Raw as in not minding getting dirty and having to /bin/bash in and run it manually.


Motivation
-----------

I am exploring several systems which interrelate with Zookeeper. My goal is to have each system in a Docker Container, communicating between each other. This is the Zookeeper container. THe idea is to spin up an image with `/bin/bash`, configure as needed, and then run `/root/zookeper/bin/zkServer.sh start`. Once going nicely, one can then commit that image, or apply the needed changes/config stuff into a new descendent Dockerfile.
