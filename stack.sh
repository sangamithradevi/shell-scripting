#!/bin/bash
LOG=/tmp/stack.log
rm -f $LOG
## check if script is executed by the root user ot not
yum install httpd -y &>>$LOG
if [$? -eq 0]; then
echo "command executed"
else
echo "command failed"
fi
