#!/bin/sh

echo "Making symlinks to hooks..."

function create_link
{
	repo=$1
	echo " - $repo"
	cd $repo	
	ln -nfs ../../../../hooks/pre-commit pre-commit
	ln -nfs ../../../../hooks/post-commit post-commit
	ln -nfs ../../../../hooks/post-merge post-merge
	cd ../../../../
}

# loop through repos and create links
repos=($(find . -wholename "./projects/*/.git/hooks"))
for repo in ${repos[@]}
do
	create_link $repo
done

echo "...done"
