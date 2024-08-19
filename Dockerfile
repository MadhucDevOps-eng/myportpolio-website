FROM ubuntu
RUN apt-get update -y && apt-get install apache2 -y
RUN apt install openjdk-17-jre-headless -y
RUN /var/run/apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/lib/apache/runtime
RUN rm -rf /var/lib/apt/list/*
COPY . /var/www/html
CMD [ "/usr/sbin/apache2","-D","FOREGROUND" ]
EXPOSE 80
