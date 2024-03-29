#!/bin/bash

function whou ()
{
who_i="$EUID"
if [[ "${who_i}" == 0 ]]
 then
  echo "You are root and can run this script!"
 else
  echo "You are not root and cannot run this script!"
exit
fi
}

function yupdate ()
{
yum update -y -q
exit_code=$?
if [[ ${exit_code} == '0' ]]
 then
  echo "update successful."
 else
  echo "update unsuccessful."
fi
}

function dockcheck
{
yum list installed | grep docker
echo $?
if [[ {echo $?} == "127"]]

 then echo "Docker is already installed"
 
if [[ {echo $?} == '1']]
}

function chperm ()
{
chmod 744 /home/tbash.sh
echo "Script permissions updated."
}

function selconfirm ()
{
se_get="$(getenforce)"

if [[ "${se_get}" == "Enforcing" ]]
 then
  echo "SElinux is "${se_get}"."
 else
  setenforce 1
  echo "Set SElinux to Enforcing."
fi
}

function etcperm ()
{
chmod -R 740 /etc
}

function permrootlog ()
{
sed -E -i 's/^(#)?PermitRootLogin.*/PermitRootLogin no/' /etc/sss/sshd_config
}

whou
sleep 1
yupdate
sleep 1
chperm
sleep 1
selconfirm
sleep 1
etcperm
sleep 1
