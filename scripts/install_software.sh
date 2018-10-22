#!/bin/bash
yum update
# install epel for nginx
yum install -y epel-release
yum install -y nginx vim lvm2 yum-utils device-mapper-persistent-data
# add the docker repo to yum
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# install the latest docker
yum install -y docker-ce
# start docker and enable the service to survive an reboot
systemctl start docker
systemctl enable docker
# check if it worked
docker version
