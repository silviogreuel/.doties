set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'


"----------Plugins---------
"Planning to use vim-plug
"- adding ahead some options like go

"Colorschemes/Syntax
Plugin 'flazz/vim-colorschemes'
Plugin 'clinstid/eink.vim' 
Plugin 'peterhoeg/vim-qml'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/MatchTagAlways'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'
"Plugin 'SyntaxComplete'
"Plugin 'sukima/xmledit'
Plugin 'ap/vim-css-color'
Plugin 'posva/vim-vue'
"Plugin 'sekel/vim-vue-syntastic'
Plugin 'zefei/vim-colortuner'

"Autocomplete
if has('nvim')
	Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plugin 'roxma/nvim-yarp'
	Plugin 'roxma/vim-hug-neovim-rpc'
endif

" golang
Plugin 'zchee/deoplete-go', { 'do': 'make' }
Plugin 'fatih/vim-go', { 'do': 'GoInstallBinaries' }
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" chsarp
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'OmniSharp/omnisharp-roslyn'
Plugin 'cyansprite/deoplete-omnisharp' , {'do': './install.sh'}

" octave/matlab
Plugin 'jvirtanen/vim-octave'


"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"Plugin 'SirVer/ultisnips'
Plugin 'SuperTab'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'sheerun/vim-polyglot'

"Misc
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-dispatch'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'

"Presentation
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'ryanoasis/vim-devicons'

Plugin 'mhinz/vim-signify'
Plugin 'Shougo/unite.vim'
Plugin 'Kocha/vim-unite-tig'
"--------------------------


call vundle#end()
filetype plugin indent on
