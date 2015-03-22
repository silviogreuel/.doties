#!/bin/bash

message=""
if [ -z "$1" ]; then
	message="Automatic Update"
else
	message=$1
fi

git add --all;
git commit -m "$message";
git push github master;
git bust bitbucket master;
