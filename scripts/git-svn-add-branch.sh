#!/bin/sh

base_repo=$1
branch=$2

git config --add svn-remote."${branch}".url "${base_repo}"/"${branch}"
git config --add svn-remote."${branch}".fetch :refs/remotes/"${branch}"
git svn fetch "${branch}"
git branch head/"${branch}" remotes/"${branch}"
git svn rebase "${branch}"
