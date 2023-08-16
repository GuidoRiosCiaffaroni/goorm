sudo apt update
sudo apt upgrade -y

sudo sudo apt install sed -y

###########################################################################################################################################################
sudo apt install vim -y
cd ~
touch ~/.vimrc
echo " " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "set nocompatible " >> ~/.vimrc
echo "filetype off " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "set rtp+=~/.vim/bundle/Vundle.vim " >> ~/.vimrc
echo "call vundle#begin() " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "Plugin 'VundleVim/Vundle.vim' " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "call vundle#end() " >> ~/.vimrc
echo "filetype plugin indent on " >> ~/.vimrc
echo "filetype plugin on " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "set number " >> ~/.vimrc
echo "set autoindent " >> ~/.vimrc
echo "set expandtab " >> ~/.vimrc
echo "set encoding=utf-8 " >> ~/.vimrc
echo "set number " >> ~/.vimrc
echo "set numberwidth=1 " >> ~/.vimrc
echo "set mouse=r " >> ~/.vimrc
echo "set clipboard=unnamed " >> ~/.vimrc
echo "set showcmd " >> ~/.vimrc
echo "set ruler " >> ~/.vimrc
echo "set encoding=utf-8 " >> ~/.vimrc
echo "set showmatch " >> ~/.vimrc
echo "set sw=2 " >> ~/.vimrc
echo "set relativenumber " >> ~/.vimrc
echo "syntax enable " >> ~/.vimrc
echo "set tabstop=2 " >> ~/.vimrc
echo "set autoindent " >> ~/.vimrc
echo "set laststatus=2 " >> ~/.vimrc
echo "set bg=dark " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "call plug#begin('~/.vim/plugged') " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "Plug 'morhetz/gruvbox' " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "Plug 'easymotion/vim-easymotion' " >> ~/.vimrc
echo "Plug 'scrooloose/nerdtree' " >> ~/.vimrc
echo "Plug 'christoomey/vim-tmux-navigator' " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "call plug#end() " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "colorscheme gruvbox " >> ~/.vimrc
echo "let g:gruvbox_contrast_dark = "hard" " >> ~/.vimrc
echo "let NERDTreeQuitOnOpen=1 " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "let mapleader=" " " >> ~/.vimrc
echo " " >> ~/.vimrc
echo "nmap <Leader>s <Plug>(easymotion-s2) " >> ~/.vimrc
echo "nmap <Leader>nt :NERDTreeFind<CR> " >> ~/.vimrc
echo " " >> ~/.vimrc

##########################################################################################################################################################
cd ~
touch ~/.nanorc
echo " " >> ~/.nanorc
echo "set linenumbers " >> ~/.nanorc
echo "set autoindent " >> ~/.nanorc
echo "set mouse " >> ~/.nanorc
echo "set smooth " >> ~/.nanorc
echo "set tabsize 4 " >> ~/.nanorc

###########################################################################################################################################################

sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install pip3 -y
pip install mysql-connector-python



