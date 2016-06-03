FROM centos:7

####### MAINTAINER ############
MAINTAINER "Justin Holmes" "jholmes@redhat.com"

RUN yum install epel-release -y \
 && yum install python-pip libffi-devel python-devel openssl-devel gcc iproute git sshpass vim -y \
 && yum clean all

RUN pip install ansible==2.0.2.0

ADD ansible.cfg /etc/ansible/ansible.cfg
