FROM nginx:latest
LABEL "Maintainer.name" = "varisha karim P Md"
LABEL "Date" = "06-07-2020"
RUN apt update -y && \
    apt install git -y && \
    apt install python -y && \
    apt install nano -y 
# VOLUME [ "volume1" ]
# CMD [ "nginx" ]
EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 22/ssh
