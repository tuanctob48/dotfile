set rtp+=/usr/share/powerline/bindings/vim/ 
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'morhetz/gruvbox'
Plugin 'veloce/vim-aldmeris'
Plugin 'JessicaKMcIntosh/Vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'w0ng/vim-hybrid'
Plugin  'ctrlpvim/ctrlp.vim'
Plugin  'scrooloose/syntastic'
Plugin  'davidhalter/jedi-vim'
Plugin  'majutsushi/tagbar'
Plugin  'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin  'godlygeek/tabular'
Plugin  'nathanaelkane/vim-indent-guides'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set encoding=utf-8
let g:airline_powerline_fonts = 1
set relativenumber 
set number          
set clipboard=unnamedplus
set background=dark
colorscheme PaperColor
"colorscheme monokai-chris
nmap <F8> :TagbarToggle<CR>
"colorscheme hybrid
"let g:gruvbox_termcolors=16
"colorscheme gruvbox
"colorscheme aldmeris
"let g:aldmeris_termcolors = "tango"
set t_ut=
"let g:airline_theme='papercolor'
let g:airline_theme='luna'
"copy and Paste
set list
set listchars=eol:¬,tab:⤑\ ,trail:·,nbsp:⎵
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
vmap <C-c> y:call system("xclip -i -selection clipboard",getreg("\""))<cr><cr>
"nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<cr>p
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;steelblue\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif
