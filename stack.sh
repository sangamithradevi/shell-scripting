#!/bin/bash
echo "hi"
LOG=/tmp/stack.log
rm -f $LOG
## check if script is executed by the root user ot not
yum install httpd -y &>>$LOG
if [$? -eq 0]; then
echo "command executed"
else
echo "command failed"
echo "check the log file :: $LOG for more information"
exit 1
fi
