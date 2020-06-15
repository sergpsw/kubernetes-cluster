#!/bin/bash

set -e

if [[ "ls -a  /etc/debian_version" ]]
  then
    if [ ! -z $(which python3) ]
      then
        echo "Python3 is available"
      else
        apt-get update
        apt-get install python3.6 -y
    fi
else
  if [ ! -z $(which python3) ]
    then
      echo "Python3 is available"
    else
      yum install epel-release -y
      yum update -y
      yum install python3.6 -y
  fi
fi
