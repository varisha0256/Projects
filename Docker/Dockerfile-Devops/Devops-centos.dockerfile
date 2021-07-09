FROM centos:latest
RUN sudo yum –y install openssh-server openssh-clients && \
    sudo systemctl start sshd

