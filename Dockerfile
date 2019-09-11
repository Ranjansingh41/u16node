FROM ubuntu:16.04

ADD . /u16node

ADD git clone git@github.com:Ranjansingh41/u16cpp.git

RUN /u16cpp/install.sh && rm -rf /tmp && mkdir /tmp && chmod 1777 /tmp 

RUN /u16node/install.sh && rm -rf /tmp && mkdir /tmp && chmod 1777 /tmp

ENV BASH_ENV "/etc/drydock/.env"
