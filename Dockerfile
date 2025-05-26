FROM amazonlinux:latset
RUN touch abc
RUN mkdir /myfile
RUN yum update -y
RUN yum install httpd -y
RUN yum install wget -y
RUN yum install unzip -y
RUN yum install curl -y 
RUN cd /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page294/jobentry.zip
RUN unzip jobentry.zip
RUN cp -rvf /* .
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd" "-D" "FOREGROUND"]
