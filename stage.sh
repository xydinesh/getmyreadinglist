#!/bin/bash
roots compile
if [ "$1" = "upload" ]; then
   aws s3 cp public s3://getmyreadinglist --recursive --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
fi
