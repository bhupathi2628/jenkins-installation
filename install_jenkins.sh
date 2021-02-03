#!/bin/sh

#installing jenkins on amazon-linux 2

sudo amazon-linux-extras install java-openjdk11 -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

sudo yum install jenkins -y

sudo systemctl start jenkins

sudo systemctl enable jenkins

systemctl status jenkins
