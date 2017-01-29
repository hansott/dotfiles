# dotfiles

```sh
$ touch bash/.extra
```

```sh
# Git credentials
GIT_AUTHOR_NAME="Hans Ott"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="hansott@hotmail.be"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

```sh
$ ./install.sh
```
