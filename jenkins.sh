#!/usr/bin/env bash
# This script install Jenkins in your Ubuntu System
sudo apt-get update -y 

sudo apt-get install openjdk-8-jdk -y

# Install Jenkins
## Before install is necessary to add Jenkins to trusted keys and source list
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
service jenkins start
service jenkins status
