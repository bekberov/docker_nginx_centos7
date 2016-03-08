# docker_nginx_centos7
nginx


VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]


docker run -d --name nginx_centos7 -p 80:80 -v /nginx/sites-enabled:/etc/nginx/sites-enabled -v /nginx/certs:/etc/nginx/certs  -v /nginx/conf.d:/etc/nginx/conf.d -v /nginx/log:/var/log/nginx -v /nginx/project:/var/www/html bekberov/nginx_centos7







mkdir /nginx

mkdir /nginx/sites-enabled

mkdir /nginx/certs

mkdir /nginx/conf.d

mkdir /nginx/log

mkdir /nginx/project
