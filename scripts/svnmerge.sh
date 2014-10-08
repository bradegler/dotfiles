#!/bin/sh

diff=diffmerge

base=$1
theirs=$2
mine=$3
merged=$4
wcpath=$5

$diff /merge /result=$merged /t1=$theirs /t2=$wcpath /t3=$mine $theirs $base $mine
