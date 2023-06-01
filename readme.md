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
- run such command in shell
    - ``` sh
        git clone https://github.com/ericVLy/nvim_config.git ~/.config/nvim  # Linux
        git clone https://github.com/ericVLy/nvim_config.git ~\\AppData\\Local\\nvim  # Windows
        cd ~/.config/nvim  # Linux
        cd ~\\AppData\\Local\\nvim  # Windows
        python -m pip install -r requirements.txt
        git submodule init
        git submodule update
        ```