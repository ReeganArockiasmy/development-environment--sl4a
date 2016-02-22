#! /bin/sh
set -e
if [ "$#" -ne 0 ];
then
    commit_message=$*
    echo OK
else
    echo FAIL
    break
fi
# GIT=`which git`		      
git add --all
git commit -m "$commit_message"
git push origin master
