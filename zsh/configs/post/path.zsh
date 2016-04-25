# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load rbenv if available
if command -v rbenv >/dev/null; then
    eval "$(rbenv init - --no-rehash)"
fi

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Add composer path
PATH="$HOME/.composer/vendor/bin:$PATH"

export -U PATH

# The GOPATH environment variable specifies the location of your workspace.
export GOPATH="$HOME/.go"
