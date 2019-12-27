#!/bin/bash
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm;
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm;
yum -y install php72w php72w-cli php72w-common php72w-devel php72w-mysqlnd php72w-gd php72w-imap php72w-ldap php72w-odbc php72w-pear php72w-xml php72w-xmlrpc;
yum -y install httpd;
yum -y install nscd;
service nscd start;
systemctl enable nscd.service;
systemctl stop firewalld.service;
systemctl disable firewalld.service;
yum -y install screen;
