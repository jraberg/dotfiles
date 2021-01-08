# neovim

## Installing

Install the neovim package

```bash
sudo apt update && sudo apt install neovim && sudo autoremove
```

Create configuration files:

```bash
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/pack/bundle/start
mkdir -p ~/.local/share/nvim/undo
```


Add to your shell configuration
```bash
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
```
