set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'


"----------Plugins---------

"Colorschemes/Syntax
Plugin 'flazz/vim-colorschemes'
Plugin 'peterhoeg/vim-qml'

"Autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Misc
Plugin 'scrooloose/nerdtree'



"--------------------------


call vundle#end()
filetype plugin indent on
