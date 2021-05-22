#!/bin/env zsh
cd x86_64
repo-add archRepo.db.tar.gz *.pkg.tar.zst
mv archRepo.db.tar.gz archRepo.db
mv archRepo.files.tar.gz archRepo.files
git add -u
git commit -m "repo updates"
git push -u
