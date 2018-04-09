#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

## Configures MariaDB repository
sudo echo '# MariaDB 10.2 CentOS repository list - created 2018-03-24 19:05 UTC
# http://downloads.mariadb.org/mariadb/repositories/
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.2/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1' | tee /etc/yum.repos.d/MariaDB.repo
echo -e $TEXT_YELLOW
echo 'MariaDB repository configured with success!'
echo -e $TEXT_RESET

## EPEL repository installation
sudo yum install -y -q https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
echo -e $TEXT_YELLOW
echo 'EPEL repository installed with success!'
echo -e $TEXT_RESET

## Webtatic repository installation
sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
echo -e $TEXT_YELLOW
echo 'Webtatic repository installed with success!'
echo -e $TEXT_RESET

## Update repos
sudo yum update -q
echo -e $TEXT_YELLOW
echo 'YUM updated with success!'
echo -e $TEXT_RESET

## Install net-tools and policycoreutils-python
sudo yum install -y -q net-tools policycoreutils-python
echo -e $TEXT_YELLOW
echo 'Net-tools and policycoreutils-python installed with success!'
echo -e $TEXT_RESET

## Install Apache HTTPD and MOD_SSL
sudo yum install -y -q httpd mod_ssl
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload
echo -e $TEXT_YELLOW
echo 'Apache installed with success!'
echo -e $TEXT_RESET

## Install PHP 7.1
sudo yum install -y -q php71w php71w-cli php71w-pdo php71w-odbc php71w-mysql php71w-mbstring php71w-process
echo -e $TEXT_YELLOW
echo 'PHP installed with success!'
echo -e $TEXT_RESET

## Install MariaDB 10.2
sudo yum install -y -q MariaDB-server MariaDB-client
echo -e $TEXT_YELLOW
echo 'MariaDB installed with success!'

echo '------------'
echo 'LAMP Stack installation completed!'
echo -e $TEXT_RESET





