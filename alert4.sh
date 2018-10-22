#!/bin/bash
src=`wget $1 -O -|grep $2`
tf=$?
if test 0 -eq $tf
then
 echo $1|mail -s $3 -r $3 $4
fi

