# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load rbenv if available
if command -v rbenv >/dev/null; then
    eval "$(rbenv init - --no-rehash)"
fi

# Composer
PATH="$HOME/.composer/vendor/bin:$PATH"

export -U PATH

# The GOPATH environment variable specifies the location of your workspace.
export GOPATH="$HOME/.go"
