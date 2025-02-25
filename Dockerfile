FROM ubuntu:latest
LABEL name=NginxUbuntu
RUN apt update -y && apt-get install -y git nginx nano
RUN /usr/bin/git clone https://github.com/nitindixit030795/test1.git /var/www/html2
RUN cd /var/www/html2/
RUN mv /var/www/html2/* /var/www/html/
WORKDIR /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
