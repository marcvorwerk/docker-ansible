FROM python:3.9.13-buster

MAINTAINER Marc Vorwerk <marc+docker@marc-vorwerk.de>

RUN pip3 install pip --upgrade
RUN pip3 install ansible
RUN pip3 install ansible-lint junit-xml

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -qy install wget curl sshpass jq

WORKDIR /ansible

CMD ["ansible-playbook","--help"]
