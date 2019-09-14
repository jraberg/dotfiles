#!/usr/bin/env bash
##############################################################################
#
# Setup of the environment
#
##############################################################################


export INST_DIR=~/github.com/dotfiles

#----------------------------------------------------------------------------
# create base directories
#----------------------------------------------------------------------------
echo "===> Creating base directories <==="
mkdir -p ~/projects
mkdir -p ~/bitbucket
mkdir -p ~/github.com
mkdir -p ~/scratchpad

#----------------------------------------------------------------------------
# ssh configuration
#----------------------------------------------------------------------------
echo "===> Installing ssh configuration <==="
mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

cp $INST_DIR/ssh/ssh_config ~/.ssh/config
chmod 600 ~/.ssh/config

#----------------------------------------------------------------------------
# aws configuration
#----------------------------------------------------------------------------
echo "===> Creating empty AWS cli configuration <==="
mkdir -p ~/.aws
chmod 750 ~/.aws
cp  $INST_DIR/aws/credentials  ~/.aws/credentials 
chmod 600 ~/.aws/credentials
cp  $INST_DIR/aws/config ~/.aws/config
chmod 600 ~/.aws/config

#----------------------------------------------------------------------------
# vim
#----------------------------------------------------------------------------
echo "===> Installing vim configuration <==="
cp $INST_DIR/vim/.vimrc ~/
chmod 750 ~/.vimrc

#----------------------------------------------------------------------------
# zsh
#----------------------------------------------------------------------------
echo "===> Installing zsh configuration <==="
cp $INST_DIR/zsh/.aliases ~/
cp $INST_DIR/zsh/.functions ~/
cp $INST_DIR/zsh/.zsh_local ~/
cp $INST_DIR/zsh/.zshrc ~/
chmod 750 ~/.aliases
chmod 750 ~/.functions
chmod 750 ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#----------------------------------------------------------------------------
# postgres
#----------------------------------------------------------------------------
echo "===> Installing postgres configuration <==="
cp $INST_DIR/psql/.psqlrc ~/
chmod 750 ~/.psqlrc

#----------------------------------------------------------------------------
# mysql
#----------------------------------------------------------------------------
echo "===> Installing mysql configuration <==="
cp $INST_DIR/ssh/ssh_config ~/
chmod 750 ~/.ssh/config

#----------------------------------------------------------------------------
# git
#----------------------------------------------------------------------------
echo "===> Installing git configuration <==="
cp $INST_DIR/git/.gitconfig ~/
cp $INST_DIR/git/.gitignore_global ~/
cp $INST_DIR/git/.*.gitignore ~/
chmod 750 ~/.gitconfig
chmod 750 ~/.gitignore_global
chmod 750 ~/.*.gitignore


