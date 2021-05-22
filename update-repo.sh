#!/bin/env zsh
REPO_NAME="archRepo"
cd x86_64
repo-add $REPO_NAME.db.tar.gz *.pkg.tar.zst
mv $REPO_NAME.db.tar.gz $REPO_NAME.db
mv $REPO_NAME.files.tar.gz $REPO_NAME.files
git add -u
git commit -m "repo updates"
git push -u
