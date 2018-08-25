#!/usr/bin/env bash

INST_DIR="~/tmp/dotfiles"

# create base directories
echo "===> Creating base directories <==="
mkdir -p ~/projects
mkdir -p ~/projects/bitbucket
mkdir -p ~/projects/github.com
mkdir -p ~/projects/scratchpad

# ssh configuration
echo "===> INstalling ssh configuration <==="
mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch -p ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

cp "$INST_DIR/ssh_config" "~/.ssh/config"
chmod 600 "~/.ssh/config"


# vim
echo "===> INstalling vim configuration <==="
cp "$INST_DIR/.vimrc" "~/"
chmod 750 "~/.vimrc"

# zsh
echo "===> INstalling zsh configuration <==="
cp "$INST_DIR/.alias" "~/"
cp "$INST_DIR/.functions" "~/"
cp "$INST_DIR/.zshrc" "~/"
chmod 750 "~/.alias"
chmod 750 "~/.functions"
chmod 750 "~/.zshrc"

# postgres
echo "===> INstalling postgres configuration <==="
cp "$INST_DIR/.psqlrc" "~/"
chmod 750 "~/.psqlrc"

# mysql
echo "===> INstalling mysql configuration <==="
cp "$INST_DIR/ssh_config" "~/"
chmod 750 "~/.ssh/config"

# git
echo "===> INstalling git configuration <==="
cp "$INST_DIR/.gitconfig" "~/"
cp "$INST_DIR/.gitignore_global" "~/"
cp "$INST_DIR/.*.gitignore" "~/"
chmod 750 "~/.gitconfig"
chmod 750 "~/.gitignore_global"
chmod 750 "~/.*.gitignore"


