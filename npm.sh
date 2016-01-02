# Load utility functions
source .functions

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if ! [ "$(program_is_installed npm)" ]; then
    echo_error "NPM is not installed!"
    exit
fi

npm install -g git-open \
               grunt \
               gulp \
               speed-test \
               tldr
