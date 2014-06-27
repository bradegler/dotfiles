#!/bin/sh
if [ $# -eq 1 ]; then
	echo Searching for files of type sql and java for expression $1
	find . -wholename '*/.svn/*' -prune -o \( -name '*.sql' -o -name '*.java' \) -exec grep -i "$1" {} \; -print
else
	echo Searching for files of type $1 for expression $2
	find . -wholename '*/.svn/*' -prune -o -name $1 -exec grep -i "$2" {} \; -print
fi
