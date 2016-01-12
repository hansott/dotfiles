#!/usr/bin/env bash

# Load utility functions
source .functions

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Source Code Pro font
echo_warning "Installing font..."
cp -r ~/dotfiles/assets/fonts/SourceCodePro-regular.otf ~/Library/Fonts/SourceCodePro-regular.otf

# Install Predawn theme
echo_warning "Installing Predawn theme..."
git clone https://github.com/jamiewilson/predawn.git ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/predawn
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/predawn && git pull origin master

# Copy Sublime settings
echo_warning "Copying Sublime Text settings..."
cp -r ~/dotfiles/assets/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
cp -r ~/dotfiles/assets/sublime/Markdown.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown.sublime-settings

echo_success "Done"
