set number 
set tabstop=2
set softtabstop=0 
set noexpandtab 
set shiftwidth=2
set backspace=2
set nowrap
"set completeopt=longest,menuone,preview
set completeopt-=preview
set previewheight=5

"Omnisharp
"
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_selector_ui = 'ctrlp'
let g:OmniSharp_server_use_mono = 1
"join([expand('~'), 'bin', 'OmniSharp'], '/') 
"'/usr/bin/OmniSharp' 
let g:OmniSharp_server_path = join([expand('~'), '.omnisharp', 'omnisharp-roslyn', 'OmniSharp.exe'], '/')
let g:OmniSharp_timeout=5

"Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources = {}
let g:deoplete#sources._=['buffer', 'ultisnips', 'file', 'dictionary']
let g:deoplete#sources.cs = ['cs', 'ultisnips', 'buffer']
let g:deoplete#sources.python = ['jedi', 'ultisnips', 'buffer']
let g:deoplete#sources.javascript = ['ternjs', 'ultisnips', 'buffer']
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.cs = ['\w*']
let g:deoplete#omni#input_patterns.rust = '[(\.)(::)]'
let g:deoplete#keyword_patterns = {}

"NERDTree
let g:NERDTreeWinSize=20

"tagbar
let g:tagbar_width=30

"vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts=1  "Mesloirline_powerline_fonts = 1

"vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
"deoplete-go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

"YouCompleteMe
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_auto_start_csharp_server=1
let g:ycm_auto_stop_csharp_server=1
let g:ycm_key_invoke_completion = '<c-Space>'
let g:ycm_semantic_triggers =  {
\   'c' : ['->', '.'],
\   'objc' : ['->', '.'],
\   'ocaml' : ['.', '#'],
\   'cpp,objcpp' : ['->', '.', '::'],
\   'perl' : ['->'],
\   'php' : ['->', '::'],
\   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
\   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
\   'ruby' : ['.', '::'],
\   'lua' : ['.', ':'],
\   'erlang' : [':'],
\   'css' : [':']
\ }



"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = " -std=c++14"
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']

"goyo
function! GoyoBefore()
	Limelight
endfunction

function! GoyoAfter()
	Limelight!
endfunction

let g:goyo_callbacks = [function("GoyoBefore"), function("GoyoAfter")]
