set number 
set tabstop=4
set softtabstop=0 
set noexpandtab 
set shiftwidth=4
set backspace=2
set nowrap

"NERDTree
let g:NERDTreeWinSize=20

"tagbar
let g:tagbar_width=30

"vim-airline
set laststatus=2

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
