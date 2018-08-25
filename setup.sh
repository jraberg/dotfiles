#!/usr/bin/env bash

INST_DIR="~/tmp/dotfiles"

# create base directories
mkdir -p ~/projects
mkdir -p ~/projects/bitbucket
mkdir -p ~/projects/github.com
mkdir -p ~/projects/scratchpad

# ssh configuration
mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch -p ~/.ssh/authorized
chmod 600
cp "$INST_DIR/ssh_config" "~/.ssh/config"
chmod 600 "~/.ssh/config"

# vim

# zsh

# postgres

# mysql

# git
