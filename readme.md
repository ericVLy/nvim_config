# A config for neovim

## requirements
- git
- lua
- python3
- neovim

## for Windows10 run such command in Powershell
``` sh
git clone https://github.com/ericVLy/nvim_config.git ~\\AppData\\Local\\nvim
cd ~\\AppData\\Local\\nvim
python -m pip install -r requirements.txt
git submodule init
git submodule update
```

## for Linux
1. run such command in shell
    - ``` sh
        git clone https://github.com/ericVLy/nvim_config.git ~/.config/nvim
        cd ~/.config/nvim
        python -m pip install -r requirements.txt
        git submodule init
        git submodule update
        ```
2. replace:
    - lua/plugs.lua line 2 to:
        ```
        vim.call('plug#begin', '~/.config/nvim/plugged')
        ```