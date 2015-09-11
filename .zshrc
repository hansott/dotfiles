# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Paths to binaries
export PATH="$HOME/bin:$PATH";
export PATH="/usr/local/bin:$PATH";

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Show waiting dots
COMPLETION_WAITING_DOTS=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git laravel5 brew composer httpie urltools web-search)

# Bootstrap Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,aliases,functions,extra,mamp}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
