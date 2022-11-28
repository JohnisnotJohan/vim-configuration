# Description

## Installation

1. Backup your .vimrc and .vim directory. Make sure there is no .vim directory in your home directory.

1. Clone this repository to your local machine  

        cd; git clone https://github.com/yuehan9527/vim-configuration.git

1. Move .vimrc file to your HOME directory

        cd vim-configuration
        mv .vimrc ~

1. Rename vim-configuration directory to .vim

        cd ..
        mv vim-configuration .vim

1. Launch vim and type `:PlugInstall` in the command mode. Then plugins will be downloaded in the `~/.vim/plugged` directory.

## Notes

1. I don't pay much attention to coc plugin for I recently using nvim-lsp.
