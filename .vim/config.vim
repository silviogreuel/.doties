set number 
set tabstop=2
set softtabstop=0 
set expandtab 
set shiftwidth=2
set backspace=2
set nowrap
set completeopt=menu,menuone,preview,noselect,noinsert
set completeopt-=preview
set previewheight=5
set mouse=a
set cursorcolumn
set cursorline
set showbreak=↪
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨,space:·
set list

" omnisharp
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_selector_ui = 'ctrlp'
let g:OmniSharp_server_use_mono = 1
"join([expand('~'), 'bin', 'OmniSharp'], '/') 
"'/usr/bin/OmniSharp' 
let g:OmniSharp_server_path = join([expand('~'), '.omnisharp', 'omnisharp-roslyn', 'OmniSharp.exe'], '/')
let g:OmniSharp_timeout=5

" deoplete
"if has('nvim')
"	let g:deoplete#enable_at_startup = 1
"endif
"let g:deoplete#enable_smart_case = 1
"let g:deoplete#sources = {}
""let g:deoplete#sources._=['buffer', 'ultisnips', 'file', 'dictionary']
""let g:deoplete#sources._ = ['neosnippet', 'buffer', 'file', 'dictionary']
"let g:deoplete#sources.cs = ['cs', 'ultisnips', 'buffer']
"let g:deoplete#sources.python = ['jedi', 'ultisnips', 'buffer']
"let g:deoplete#sources.javascript = ['ternjs', 'ultisnips', 'buffer']
"let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
"let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
"let g:deoplete#omni#input_patterns = {}
"let g:deoplete#omni#input_patterns.cs = ['\w*']
"let g:deoplete#omni#input_patterns.rust = '[(\.)(::)]'
"let g:deoplete#keyword_patterns = {}

" Shougo/neosnippet
let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory=['~/.vim/plugged/vim-snippets/snippets', '~/.vim/snippets']
let g:neosnippet#disable_runtime_snippets = {
    \ 'go': 1
\}

" nerdtree
let g:NERDTreeWinSize=20

" tagbar
let g:tagbar_width=30

" vim-airline
set laststatus=2
let g:airline_powerline_fonts=1  "Mesloirline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol="\uf05e:"
let g:airline#extensions#ale#warning_symbol="\uf071:"
let g:airline#extensions#ale#checking_symbol="\uf110"

" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_auto_type_info = 1
let g:go_gocode_autobuild = 1
let g:go_gocode_propose_builtins = 1
let g:go_test_show_name=1
let g:go_updatetime=500
let g:go_gocode_unimported_packages=1
let g:go_highlight_extra_types=1
let g:go_highlight_operators=1 
let g:go_highlight_functions=1

"YouCompleteMe
"let g:ycm_complete_in_comments=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_min_num_of_chars_for_completion=1
"let g:ycm_cache_omnifunc=1
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_auto_start_csharp_server=1
"let g:ycm_auto_stop_csharp_server=1
"let g:ycm_key_invoke_completion = '<c-Space>'
"let g:ycm_semantic_triggers =  {
"\   'c' : ['->', '.'],
"\   'objc' : ['->', '.'],
"\   'ocaml' : ['.', '#'],
"\   'cpp,objcpp' : ['->', '.', '::'],
"\   'perl' : ['->'],
"\   'php' : ['->', '::'],
"\   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"\   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
"\   'ruby' : ['.', '::'],
"\   'lua' : ['.', ':'],
"\   'erlang' : [':'],
"\   'css' : [':']
"\ }

" ale
let g:ale_completion_enabled = 1
highlight ALEWarning ctermbg=none cterm=reverse
highlight ALEError ctermbg=none cterm=reverse
highlight ALEInfo ctermbg=none cterm=reverse
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEInfoSign ctermbg=NONE ctermfg=blue
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_sign_info = 'ⓘ'
let g:ale_sign_style_error = '✘'
let g:ale_sign_style_warning = '⚠'
let g:ale_sign_style_info = 'ⓘ'
"let g:ale_sign_error = "\uf05e"
"let g:ale_sign_warning = "\uf071"
"let g:ale_sign_info = "\uf129"
"let g:ale_sign_style_error = "\uf05e"
"let g:ale_sign_style_warning = "\uf071"
"let g:ale_sign_style_info = "\uf129"
let g:ale_linters = {
\   'ruby': ['solargraph', 'reek', 'rubocop', 'brakeman']
\}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['eslint'],
\   'css': ['prettier']
\}
command! ALEToggleFixer execute "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_compiler = "g++"
"let g:syntastic_cpp_compiler_options = " -std=c++14"
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_vue_checkers = ['eslint']
"let g:syntastic_enable_highlighting = 0

" goyo
function! GoyoBefore()
	Limelight
endfunction

function! GoyoAfter()
	Limelight!
endfunction

let g:goyo_callbacks = [function("GoyoBefore"), function("GoyoAfter")]

" mattn/vim-emmet 
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" mattn/gist-vim
let g:gist_clip_command='xclip -selection clipboard'
let g:gist_detect_filetype=1
let g:gist_open_browser_after_post=1
let g:gist_post_private=1
