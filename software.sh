#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install findutils
brew install bash
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

brew install wget --with-iri
brew install imagemagick --with-webp

binaries=(
    graphicsmagick
    webkit2png
    rename
    zopfli
    ffmpeg
    python
    sshfs
    trash
    node
    tree
    ack
    hub
    git
    speedtest_cli
    ssh-copy-id
)

echo "installing binaries..."
brew install ${binaries[@]}

brew install caskroom/cask/brew-cask

# Apps
apps=(
    alfred
    dropbox
    google-chrome
    qlcolorcode
    screenflick
    slack
    appcleaner
    firefox
    qlmarkdown
    spotify
    vagrant
    flash
    iterm2
    qlprettypatch
    sublime-text3
    virtualbox
    atom
    flux
    qlstephen
    vlc
    quicklook-json
    skype
    transmission
    carthage
    spectacle
    caffeine
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install ${apps[@]}

# Install Mackup
pip install mackup

# Cleanup
brew cleanup

echo "That's it folks!"
