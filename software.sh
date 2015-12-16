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
echo "Updating Homebrew..."
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

#
# Given a list of desired items and installed items, return a list
# of uninstalled items. Arrays in bash are insane (not in a good way).
# Credit: https://github.com/cowboy/dotfiles
#
function to_install() {
    local debug desired installed i desired_s installed_s remain
    if [[ "$1" == 1 ]]; then debug=1; shift; fi
        # Convert args to arrays, handling both space- and newline-separated lists.
        read -ra desired < <(echo "$1" | tr '\n' ' ')
        read -ra installed < <(echo "$2" | tr '\n' ' ')
        # Sort desired and installed arrays.
        unset i; while read -r; do desired_s[i++]=$REPLY; done < <(
            printf "%s\n" "${desired[@]}" | sort
        )
        unset i; while read -r; do installed_s[i++]=$REPLY; done < <(
            printf "%s\n" "${installed[@]}" | sort
        )
        # Get the difference. comm is awesome.
        unset i; while read -r; do remain[i++]=$REPLY; done < <(
            comm -13 <(printf "%s\n" "${installed_s[@]}") <(printf "%s\n" "${desired_s[@]}")
        )
    [[ "$debug" ]] && for v in desired desired_s installed installed_s remain; do
        echo "$v ($(eval echo "\${#$v[*]}")) $(eval echo "\${$v[*]}")"
    done
    echo "${remain[@]}"
}

#
# The homebrew packages to install.
#
packages=(
    wget
    imagemagick
    graphicsmagick
    webkit2png
    ffmpeg
    python
    trash
    node
    tree
    ack
    git
    speedtest_cli
    ssh-copy-id
    dos2unix
    git-extras
    carthage
)

echo "Installing homebrew packages..."
list="$(to_install "${packages[*]}" "$(brew list)")"
if [[ "$list" ]]; then
    for item in ${list[@]}
        do
            echo "$item is not installed."
            brew install $item
        done
else
    echo "All homebrew packages are installed."
fi

#
# Homebrew casks
#
if test ! $(which brew); then
    echo "Installing homebrew cask..."
    brew install caskroom/cask/brew-cask
fi
casks=(
    alfred
    dropbox
    google-chrome
    qlcolorcode
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
    flux
    qlstephen
    vlc
    quicklook-json
    skype
    transmission
    spectacle
    caffeine
)
# Install casks to /Applications
echo "Installing homebrew casks..."
list="$(to_install "${casks[*]}" "$(brew cask list)")"
if [[ "$list" ]]; then
    for item in ${list[@]}
        do
            echo "Cask $item is not installed."
            brew cask install $item
        done
else
    echo "All homebrew casks are installed."
fi

# Cleanup
brew cleanup
brew-cask cleanup
echo "Done."
