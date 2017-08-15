#!/usr/bin/env bash

brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
	echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
	chsh -s /usr/local/bin/bash;
fi;

brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/less
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install git-extras
brew install the_silver_searcher
brew install tree
brew install stow
brew install ssh-copy-id
brew install wifi-password
brew install ffmpeg
brew install wget --with-iri
brew install jq
brew install erlang
brew install ghc
brew install node
brew install flow
brew install yarn
brew install homebrew/php/php70
brew install homebrew/php/php70-xdebug
brew install homebrew/php/php70-pcntl
brew install homebrew/php/php70-memcached
brew install homebrew/php/php70-libsodium
brew install composer
brew install phpmd
brew install php-cs-fixer
brew install redis
brew install sassc
brew install gpg
brew install gnupg2
brew install gpg-agent
brew install pinentry-mac

brew cleanup
