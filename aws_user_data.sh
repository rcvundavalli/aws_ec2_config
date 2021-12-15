#!/bin/bash
yum update -y
amazon-linux-extras install epel -y
yum install git -y
yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
# Add required dependencies for the jenkins package
yum install java-1.8* -y 
yum install jenkins -y
systemctl start jenkins
systemctl enable jenkins
