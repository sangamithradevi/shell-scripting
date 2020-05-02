#!/bin/bash

LOG=/tmp/stack.log
rm -f $LOG

## check if script is executed by the root user or not
USER_ID=$(id -u)
if [ $USER_ID -eq 0 ]; then
echo "you loged in as root user"
else
echo "login as root user or use sudo command to execute commands"
exit 1
fi


echo -e "\e[34mwebserver setup>>\e[0m"
echo -n -e "Install webserver : "
yum install httpd -y &>>$LOG
if [ $? -eq 0 ]; then
echo -e "\e[36msuccess\e[0m"
else
echo -e "\e[31mfailed\e[0m"
echo "check the log file :: $LOG for more information"
exit 1
fi
