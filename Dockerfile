FROM xqdocker/ubuntu-nginx

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

COPY . /var/www/html

RUN apt-get update
RUN apt-get install -y nodejs 
RUN apt-get install -y npm

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]