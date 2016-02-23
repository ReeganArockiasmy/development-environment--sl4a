#! /bin/sh
set -e
if [ "$#" -ne 0 ];
then
    commit_message=$*
    echo OK
else
    echo FAIL Add commit message
    exit
fi

commit_file(){

    git commit -m "$commit_message"
    
    }

git add --all
echo "Do you wish to commit this file?"
git status

select yn in "Yes" "No"; do
    case $yn in
	Yes ) make install; break;;
	No ) exit;;
    esac
    done



git push origin master



