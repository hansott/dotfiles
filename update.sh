#!/usr/bin/env bash

# Load utility functions
source .functions

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
    git submodule foreach git pull origin master
    rsync --exclude ".git/" \
          --exclude ".DS_Store" \
          --exclude ".idea/" \
          --exclude "assets/" \
          --exclude "bitbar/"
          --exclude "update.sh" \
          --exclude "sublime.sh" \
          --exclude "README.md" \
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
        echo_warning "Remember to source ~./zshrc"
    fi;
fi;
unset doIt;
