FROM ubuntu
RUN apt-get update -y && apt-get install apache2 -y
ENV APACHE_RUN_DIR /var/lib/apache/runtime
RUN mkdir -p ${APACHE_RUN_DIR}
RUN rm -rf /var/lib/apt/list/*
COPY index.html /var/www/html
CMD [ "/usr/sbin/apache2","-D","FOREGROUND" ]
