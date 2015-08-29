# Dotfiles

My configuration for OS X.

![Sublime](/assets/img/sublime.png)
![Terminal](/assets/img/terminal.png)

## Installing

1. `git clone https://github.com/hansott/dotfiles.git ~/dotfiles --recursive && cd ~/dotfiles && source update.sh`
2. Install the fonts in `/fonts`
3. Install terminal themes:
    * Terminal.app: `assets/terminal/solarized-dark-terminal-app.terminal`
    * iTerm: `assets/terminal/solarized-dark-iterm2.itermcolors`
4. (Optional) Install software:
    `source software.sh`
5. (Optional) Install sublime and configure it:
    `source sublime.sh`

## Updating

`cd ~/dotfiles && git pull origin master && source update.sh`
