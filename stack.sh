#!/bin/bash
## check if script is executed by the root user ot not
if(uid==0)
then 
echo "logged in as user"
else
echo "login as user to execute the script"