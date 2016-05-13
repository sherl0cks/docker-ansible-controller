FROM centos:7

####### MAINTAINER ############
MAINTAINER "Justin Holmes" "jholmes@redhat.com"

RUN yum install epel-release -y \
 && yum install python-pip libffi-devel python-devel openssl-devel gcc -y \
 && pip install ansible==1.9.6
