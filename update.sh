#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
    git submodule foreach git pull origin master
    rsync --exclude ".git/" \
          --exclude ".idea/" \
          --exclude ".DS_Store" \
          --exclude "update.sh" \
          --exclude "README.md" \
          --exclude "assets/" \
          --exclude "sublime.sh" \
          --exclude "software.sh" \
          -avh \
          --no-perms \
          . ~;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
