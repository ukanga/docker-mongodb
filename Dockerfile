FROM ubuntu

MAINTAINER Ukang'a Dickson

RUN apt-get update
RUN apt-get install -y vim-nox wget dialog net-tools
RUN apt-get install -y mongodb

# Cleanup
RUN apt-get clean

ADD start /start
RUN chmod 0755 /start
RUN mkdir -p /data/db

VOLUME ["/data"]

EXPOSE 27017

CMD ["/start"]
