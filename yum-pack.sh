#!/bin/bash
ansible all -m yum_repository -a'file=external_repo name=baseos baseurl=http://classroom.example.com/conetent/rhel8.0/x86_64/dvd/BaseOS/ description="Base OS Repo" gpgcheck=yes enabled=yes state=present gpgkey=http://classroom.example.com/conetent/rhel8.0/x86_64/dvd/RPM-GPG-KEY-redhat-release' -b
ansible all -m rpm_key -a'key=http://classroom.example.com/conetent/rhel8.0/x86_64/dvd/RPM-GPG-KEY-redhat-release state=present' -b
ansible all -m yum_repository -a'file=external_repo name=appstream baseurl=http://classroom.example.com/content/rhel8.0/x86_64/dvd/AppStream/
description="AppStream Repo" gpgcheck=yes gpgkey=http://classroom.example.com/conetent/rhel8.0/x86_64/dvd/RPM-GPG-KEY-redhat-release enabled=yes' -b
ansible all -m rpm_key -a'key=http://classroom.example.com/conetent/rhel8.0/x86_64/dvd/RPM-GPG-KEY-redhat-release  state=present' -b
