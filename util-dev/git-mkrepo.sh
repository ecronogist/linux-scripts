#!/bin/bash
#------------`
#git-mkrepo.sh|
#(interactively) makes a repository on github through curl

mkdir	-p ~/Git
echo -e	"New repository name: "
read	REPO
mkdir	-p ~/Git/${REPO}
cd		~/Git/${REPO}
git		init
echo -e	"\nGit Username: "
read	USER
echo -e	"\nRepository description: "
read	DESC
echo -e "\n"

curl -u ${USER} \
		https://api.github.com/user/repos -d \
		"{\"name\": \"${REPO}\", \
		\"description\": \"${DESC}\", \
		\"private\": false, \
		\"has_issues\": true,\
		\"has_downloads\": true, \
		\"has_wiki\": false}"
echo -e "\n"

git		remote add ${REPO} https://github.com/${USER}/${REPO}.git
touch	README.md
git		add *
git		commit -m "init commit"
git		push -u ${REPO} master
