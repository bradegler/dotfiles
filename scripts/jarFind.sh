#!/bin/sh

DIR=$1
SEARCH=$2

echo Searching $DIR for $SEARCH in:
for JAR in `find $DIR -name *.jar -print`
do
    echo --\> $JAR
    jar tf $JAR | grep -i $SEARCH
done
