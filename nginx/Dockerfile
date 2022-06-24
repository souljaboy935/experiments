FROM centos:7.9.2009

RUN yum install -y httpd ; yum clean all

EXPOSE 8888 9999

ENTRYPOINT ["httpd", "-k", "start"]