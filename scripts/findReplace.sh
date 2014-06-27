#!/bin/sh


FILES=*.java
REGEX='s/\@Override//g;'
find . -name $FILES -print | xargs perl -pi -w -e $REGEX
