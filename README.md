# Dotfiles

My configuration for OS X. Inspired by https://mths.be/dotfiles.

## Installing

1. `git clone https://github.com/hansott/dotfiles.git ~/dotfiles --recursive && cd ~/dotfiles && source update.sh`
2. Install the fonts in `init/`
3. Import `init/Solarized Dark ansi.terminal` in your terminal and set as default.
4. [Optional] Install software `./install-software`

## Updating

`cd ~/dotfiles && git pull origin master && source update.sh`

## Todo

* [x] List all required brew tools. ~> `./install-software`
* [x] List all required brew cask applications. ~> `./install-software`
* [x] Make custom oh-my-git theme to match solarized dark theme. ~> `init/Solarized Dark ansi.terminal`
