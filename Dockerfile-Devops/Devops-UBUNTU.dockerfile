FROM ubuntu:latest
RUN sudo apt-get install openssh-server && \
    sudo service ssh start

