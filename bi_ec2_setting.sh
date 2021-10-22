#!/bin/bash -l

sudo yum update -y

sudo yum install git -y

sudo yum localinstall https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm -y

sudo yum-config-manager --disable mysql80-community > /dev/null

sudo yum-config-manager --enable mysql57-community > /dev/null

sudo yum install mysql-community-server -y

sudo systemctl start mysqld.service

sudo systemctl enable mysqld.service

sudo yum install docker -y

sudo systemctl start docker

sudo systemctl enable docker

sudo groupadd docker

docker_username=$(whoami)

sudo usermod -aG docker $docker_username

groups $docker_username
