FROM       antik486/centos71
MAINTAINER Kerim Bekberov <bekberovkerim@gmail.com>


# Add nginx repositary to yum
ADD nginx.repo /etc/yum.repos.d/


# User
USER root

RUN  yum update -y && \
     yum install -y nginx  && \
     yum clean all  && \
     rm -rf /var/tmp/*  && \
     echo "\ndaemon off;" >> /etc/nginx/nginx.conf   && \
     systemctl enable nginx


#RUN chown -R your-user:your-users-group /var/lib/nginx



# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]


EXPOSE 80
