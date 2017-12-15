"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => misc stuff i added
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map Ctrl-p to fuzzyfinder and ignore misc dirs
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" close nerdtree if its the last buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden=1
" because really who wants a file tree on the right?
let g:NERDTreeWinPos = "left"
nmap <F5> :NERDTreeToggle<CR>

" great ctrl-s mapping
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
