FROM centos:7 #specify the base image

LABEL maintainer="Devops Engineer Kodjo" #add tag

RUN yum update && yum clean all #update package

RUN  yum install -y httpd #install apache

COPY index.html /var/www/html/ #copy the app inside the container

EXPOSE 3000 # expose the port the container should listen on

ENTRYPOINT ["/usr/sbin/httpd"]  #when container starts please start apache

CMD [ "-D", "FOREGROUND" ] #Keep the container running in the background