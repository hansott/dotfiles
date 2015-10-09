# Dotfiles

This is my configuration for OS X.

## Terminal

### Installing

1. Install Oh My Zsh (Optional, but recommended):  
    `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
2. Install dotfiles:  
    `git clone https://github.com/hansott/dotfiles.git ~/dotfiles && cd ~/dotfiles && source update.sh`
3. Install the terminal theme:  
    * Terminal.app: `assets/terminal/solarized-dark-terminal-app.terminal`
    * iTerm (Recommended): `assets/terminal/solarized-dark-iterm2.itermcolors`

### Updating

`cd ~/dotfiles && git pull origin master && source update.sh`

## Sublime

Run `./sublime.sh` to make your sublime look like this:

![](assets/img/sublime.png)

## Software

Run `./software.sh` to install the software.

### Command Line Tools
* **wget** to download files from the command line
* imagemagick
* graphicsmagick
* webkit2png
* rename
* zopfli
* **httpie** to test http requests
* ffmpeg
* sshfs
* trash
* node.js
* tree
* ack
* hub
* git
* **speedtest_cli** to test your internet connection
* **ssh-copy-id** to copy your ssh key to a server
* [dos2unix](http://www.linuxcommand.org/man_pages/dos2unix1.html) - DOS/MAC to UNIX text file format converter.
* [git-extras](https://github.com/tj/git-extras) - Repo summary, author commit percentages and more.

### Mac OS X Apps
* alfred
* dropbox
* google-chrome
* qlcolorcode
* screenflick
* slack
* **appcleaner** to uninstall applications
* firefox
* qlmarkdown
* spotify
* vagrant
* flash
* iterm2
* qlprettypatch
* sublime-text3
* virtualbox
* atom
* flux
* qlstephen
* vlc
* quicklook-json
* skype
* transmission
* carthage
* spectacle
* caffeine
* **asepsis** to remove those annoying .DS_Store files

