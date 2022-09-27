# dotfiles

## Setup

### Clone repo

### create base directories

'''shell
mkdir -p ~/git
mkdir -p ~/workspace
'''

### ssh configuration

'''shell
mkdir -p ~/.ssh && chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys
ln -s ~/.dotfiles/ssh/ssh_config ~/.ssh/config
chmod 600 ~/.ssh/config
'''

### vim

ln -s ~/.dotfile/vim/vimrc ~/.vimrc && chmod 750 ~/.vimrc

### zsh

#### install om-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh syntax highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

