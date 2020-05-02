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

yum install httpd -y &>>$LOG
if [ $? -eq 0 ]; then
echo "command executed"
else
echo "command failed"
echo "check the log file :: $LOG for more information"
exit 1
fi
