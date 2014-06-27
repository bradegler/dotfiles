#!/bin/sh

if [ $# != 1 ]; then
    echo "Usage $0 <db sid>"
    echo "i.e. $0 txndcq16"
    exit 0
fi

cat $ORACLE_HOME/network/admin/tnsnames.ora | grep $1 | sed -e 's/.*HOST=//' -e 's/).*PORT=/:/' -e 's/).*SID=/:/' -e 's/).*$//'
