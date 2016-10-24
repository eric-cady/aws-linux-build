#!/bin/bash
clear
echo
echo "Hi from GitHub"
echo
echo "This Script will walk through some of the basic and tedious first steps with a new AWS Linux build."
echo "Let's start by doing some system software updates..."
sleep 10


#let's get the current version of Raspbian
current_ver=`uname -a`
echo
echo "Before we start, it looks like you're running:"
echo "  $current_ver"
echo
echo "  Installing updates, this may take some time..."
echo
sudo yum -y update
echo
sudo yum update -y aws-cfn-bootstrap
echo
echo "After the updates you're running:"
current_ver=`uname -a`
echo "  $current_ver"

echo
echo "Now that updates are done, let's install some software:"
echo "  Starting with pre-reqs for domain life..."
echo
sudo yum -y install sssd realmd krb5-workstation
echo
echo "  Now installing SNMP..."
echo
sudo yum -y install net-snmp net-snmp-libs net-snmp-utils
echo

