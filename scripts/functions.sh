#!/bin/sh

################################################################
#
#   log
#
#   logs a message to stdout by error code
#
#   arg1-code to determine error
#   arg2-message to log
#
################################################################
log()
{
case ${1} in
    0) echo "[ $(date '+%b %d %T') ] INFO: ${2}" ;;
    *) echo "[ $(date '+%b %d %T') ] WARNING: ${2}"
       exit ${1};;
esac
}

#####################################################################
#
#   isReadable
#
#   checks to see if a files exists
#   size is greater than zero
#   file is readable
#
#   args-filenames to check
#
#####################################################################
isReadable()
{
	local err=
	for i in "$@"
	do
	    if [ ! -f "$i" ]; then
	        err=true; break
	    fi
	    if [ ! -s "$i" ]; then
	        err=true; break
	    fi
	    if [ ! -r "$i" ]; then
	        err=true; break
	    fi
	done

	if $err; then
		return 1
	else
		return 0
	fi
}

################################################################
#
#   expandJarList
#
#   Creates a : delimited string from a list
#
#	arg1-directory
#   argn-list
#
################################################################
expandJarList()
{
	local temp=
	local i=
	for i in $@
	do
  		temp=$temp:$i
	done
	echo $temp
}

##################################################
# 
# readin()
#   Reads a value from standard input
#
#   arg1 - Variable name
#   arg2 - Prompt message
#
##################################################
readin()
{
  local local_var

  echo -n "$2 "
  eval 'echo -n "[$'$1'] "'
  read local_var
  [ -n "$local_var" ] && eval $1=\$local_var
}
