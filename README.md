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
* **speedtest_cli** to test your internet connection.
* **ssh-copy-id** to copy your ssh key to a server.
* [dos2unix](http://www.linuxcommand.org/man_pages/dos2unix1.html) - DOS/MAC to UNIX text file format converter.
* [git-extras](https://github.com/tj/git-extras) - Repo summary, author commit percentages and more.

### Mac OS X Apps
* **alfred** Alfred is a productivity application for Mac OS X, which boosts your efficiency with hotkeys and keywords. Search your Mac and the web, and control your Mac using custom actions with the Powerpack.
* **dropbox** No description needed.
* **google-chrome** No description needed.
* **qlcolorcode** A Quick Look plugin for source code with syntax highlighting.
* **Screenflick** can tap into user events like key presses and mouse clicks and highlight them in the movies you create.
* **slack** No description needed.
* **AppCleaner** is a small application which allows you to thoroughly uninstall unwanted apps.
* **firefox** No description needed.
* **qlmarkdown** QuickLook generator for Markdown files.
* **Spotify** No description needed.
* **Vagrant** Create and configure lightweight, reproducible, and portable development environments.
* **iTerm2** is a replacement for Terminal and the successor to iTerm.
* **qlprettypatch** QuickLook generator for patch files.
* **Virtualbox** is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use. 
* **Atom** is a text editor that's modern, approachable, yet hackable to the core—a tool you can customize to do anything but also use productively without ever touching a config file.
* **f.lux** is free software that warms up your computer display at night, to match your indoor lighting.
* **qlstephen** A QuickLook plugin that lets you view plain text files without a file extension.
* **VLC** is a free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVDs, Audio CDs, VCDs, and various streaming protocols.
* **quicklook-json** QuickLook JSON is a useful quick look plugin to preview JSON files.
* **Skype** No description needed.
* **Transmission** A fast, easy and free bittorrent client.
* **Carthage** A simple, decentralized dependency manager for Cocoa.
* **Spectacle** Window control with simple and customizable keyboard shortcuts.
* **Caffeine** Caffeine is a tiny program that puts an icon in the right side of your menu bar. Click it to prevent your Mac from automatically going to sleep, dimming the screen or starting screen savers.

