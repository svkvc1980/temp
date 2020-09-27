#!/bin/bash
n=$(cat /home/centos/project-war-file-location/increment-file.txt)
echo "Current-Number: $n"
m=$(( n + 1 ))
echo "Updated-Number: $m"
echo $m > /home/centos/project-war-file-location/increment-file.txt
