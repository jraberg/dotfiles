#!/usr/bin/env bash
##############################################################################
#
# Setup of the environment
#
##############################################################################


export INST_DIR=~/tmp/dotfiles

#----------------------------------------------------------------------------
# create base directories
#----------------------------------------------------------------------------
echo "===> Creating base directories <==="
mkdir -p ~/projects
mkdir -p ~/projects/bitbucket
mkdir -p ~/projects/github.com
mkdir -p ~/projects/scratchpad

#----------------------------------------------------------------------------
# ssh configuration
#----------------------------------------------------------------------------
echo "===> Installing ssh configuration <==="
mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

cp $INST_DIR/ssh_config ~/.ssh/config
chmod 600 ~/.ssh/config

#----------------------------------------------------------------------------
# aws configuration
#----------------------------------------------------------------------------
echo "===> Creating empty AWS cli configuration <==="
mkdir -p ~/.aws
chmod 750 ~/.aws
cp  $INST_DIR/aws_credentials ~/.aws/credentials
chmod 600 ~/.aws/credentials
cp  $INST_DIR/aws_config ~/.aws/config
chmod 600 ~/.aws/config

#----------------------------------------------------------------------------
# vim
#----------------------------------------------------------------------------
echo "===> Installing vim configuration <==="
cp $INST_DIR/.vimrc ~/
chmod 750 ~/.vimrc

#----------------------------------------------------------------------------
# zsh
#----------------------------------------------------------------------------
echo "===> Installing zsh configuration <==="
cp $INST_DIR/.aliases ~/
cp $INST_DIR/.functions ~/
cp $INST_DIR/.zshrc ~/
chmod 750 ~/.aliases
chmod 750 ~/.functions
chmod 750 ~/.zshrc

#----------------------------------------------------------------------------
# postgres
#----------------------------------------------------------------------------
echo "===> Installing postgres configuration <==="
cp $INST_DIR/.psqlrc ~/
chmod 750 ~/.psqlrc

#----------------------------------------------------------------------------
# mysql
#----------------------------------------------------------------------------
echo "===> Installing mysql configuration <==="
cp $INST_DIR/ssh_config ~/
chmod 750 ~/.ssh/config

#----------------------------------------------------------------------------
# git
#----------------------------------------------------------------------------
echo "===> Installing git configuration <==="
cp $INST_DIR/.gitconfig ~/
cp $INST_DIR/.gitignore_global ~/
cp $INST_DIR/.*.gitignore ~/
chmod 750 ~/.gitconfig
chmod 750 ~/.gitignore_global
chmod 750 ~/.*.gitignore


