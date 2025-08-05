#!/bin/bash

sudo amazon-linux-extras enable corretto17
sudo yum install java-17-amazon-corretto -y
sudo yum install maven -y
sudo yum install git -y

git clone https://github.com/spring-guides/gs-spring-boot.git
cd gs-spring-boot/complete

mvn package

nohup java -jar target/*.jar > app.log 2>&1 &
