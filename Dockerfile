FROM python:3.9.0-buster

MAINTAINER Marc Vorwerk <docker@marc-vorwerk.de>

RUN pip install pip --upgrade
RUN pip install ansible
RUN pip install ansible-lint junit-xml

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -qy install wget curl sshpass jq

WORKDIR /ansible

CMD ["ansible-playbook","--help"]
