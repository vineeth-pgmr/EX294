#!/bin/bash

ansible all -m yum_repository -a "name=AppStream baseurl=ftp://192.168.56.115/rhel8/AppStream description='yum for AppStream' gpgcheck=yes gpgkey=ftp://192.168.56.115/rhel8/RPM-GPG-KEY-redhat-release enabled=yes"

ansible all -m yum_repository -a "name=BaseOS baseurl=ftp://192.168.56.115/rhel8/BaseOS description='yum for BaseOS' gpgcheck=yes gpgkey=ftp://192.168.56.115/rhel8/RPM-GPG-KEY-redhat-release enabled=yes" 
