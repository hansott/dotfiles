#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew, install if we don't have it.
if test ! $(which brew); then
    echo ">> Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Homebrew Cask
echo '>> Installing Homebrew Cask...'
brew install caskroom/cask/brew-cask

# Tap versions
echo '>> Tap versions...'
brew tap caskroom/versions

# Install sublime-text3
echo '>> Installing Sublime Text 3...'
brew cask install sublime-text3

# Install Predawn theme
echo '>> Installing Predawn theme...'
git clone https://github.com/jamiewilson/predawn.git ~/Library/Application\ Support/Sublime\ Text*/Packages/predawn 2> /dev/null
cd ~/Library/Application\ Support/Sublime\ Text*/Packages/predawn && git pull origin master

# Copy Sublime settings
echo '>> Copying Sublime Text settings...'
cp -r assets/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Preferences.sublime-settings 2> /dev/null

echo '>> Sublime Text is installed and configured.'