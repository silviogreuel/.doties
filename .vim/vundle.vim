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
Plugin 'posva/vim-vue'

"Autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"Plugin 'SirVer/ultisnips'
Plugin 'SuperTab'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'fatih/vim-go'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'


"Misc
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-dispatch'
Plugin 'kien/ctrlp.vim'
Plugin 'kshenoy/vim-signature'

"Presentation
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

Plugin 'mhinz/vim-signify'
Plugin 'Shougo/unite.vim'
Plugin 'Kocha/vim-unite-tig'
"--------------------------


call vundle#end()
filetype plugin indent on
