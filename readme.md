# A config for neovim

## requirements
- git
- lua
- python3
- neovim
- *for telescope:*
    - https://github.com/BurntSushi/ripgrep
    - https://github.com/sharkdp/fd

## Installing
1. run such command in shell
    - ``` sh
        git clone https://github.com/ericVLy/nvim_config.git ~/.config/nvim  # Linux
        git clone https://github.com/ericVLy/nvim_config.git ~\\AppData\\Local\\nvim  # Windows
        cd ~/.config/nvim  # Linux
        cd ~\\AppData\\Local\\nvim  # Windows
        python -m pip install -r requirements.txt
        git submodule init
        git submodule update
        ```
2. switch path:
    - lua/plugs.lua line 2 or 3:
        ```
        vim.call('plug#begin', '~\\AppData\\Local\\nvim\\plugged')  ## Windows
        vim.call('plug#begin', '~/.config/nvim/plugged')  ## Linux
        ```