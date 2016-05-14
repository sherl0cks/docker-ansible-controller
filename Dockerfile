FROM centos:7

####### MAINTAINER ############
MAINTAINER "Justin Holmes" "jholmes@redhat.com"

RUN yum install epel-release -y \
 && yum install python-pip libffi-devel python-devel openssl-devel gcc iproute git sshpass -y \
 && pip install ansible==1.9.6 \
 && git config --global user.email "justinmichaelholmes@gmail.com" \
 && git config --global user.name "Justin Holmes"

ADD ansible.cfg /etc/ansible/ansible.cfg
