set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'


"----------Plugins---------

"Colorschemes/Syntax
Plugin 'flazz/vim-colorschemes'
Plugin 'peterhoeg/vim-qml'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/MatchTagAlways'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'SyntaxComplete'
"Plugin 'sukima/xmledit'
Plugin 'ap/vim-css-color'

"Autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'

"Misc
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

"--------------------------


call vundle#end()
filetype plugin indent on
