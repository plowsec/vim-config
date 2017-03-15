execute pathogen#infect()
set cpt-=t
filetype plugin on

filetype indent on
syntax on
" Moving a whole line or line block using ctrl+[up/down]
nnoremap <C-Up> mz:m-2<cr>`z
nnoremap <C-Down> mz:m+<cr>`z
inoremap <C-Up> <Esc>mz:m-2<cr>`z
inoremap <C-Down> <Esc>mz:m+<cr>`zi
vnoremap <C-Down> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <C-Up> :m'<-2<cr>`>my`<mzgv`yo`z

"Insert blank lines in normal mode
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

augroup filetypedetect
    au BufRead,BufNewFile *.S set filetype=nasm
augroup END

map <C-C> :s:^://<CR>
map <C-T> :s:^//<CR>

" Configure syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++1y -stdlib=libc++'
let g:syntastic_use_quickfix_lists = 1

"Configure ycm
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_filepath_completion_use_working_dir = 1
" Search for selection
vnoremap // y/<C-R>"<CR>


"Limelight
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

let g:tex_flavor='latex'
let g:nerdtree_tabs_open_on_console_startup=1
let g:airline_powerline_fonts = 1
set grepprg=grep\ -nH\ $*
set iskeyword+=:
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nofoldenable
set cindent
"set spell
"setlocal spell spelllang=fr
nnoremap <F5> :silent update<Bar>silent !firefox %:p &<CR>
" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" ESC insert mode with jj
inoremap jj <ESC>
" Improve navigation between windows
noremap rj <C-w>j
noremap rk <C-w>k
noremap rh <C-w>h
noremap rl <C-w>l
noremap rc <C-w>c
noremap rs <C-w>s
noremap ro <C-w>o
noremap r<SPACE> :split<CR>
noremap r<CR> :vsplit<CR>
"noremap r <C-w>

" Disable reading of .vimrc in current directory
set noexrc

" Arrow keys are evil :)
"nnoremap <Left> :echoe "Use h, you moron..."<CR>
"nnoremap <Right> :echoe "Use l, you moron..."<CR>
"nnoremap <Up> :echoe "Use k, you moron..."<CR>
"nnoremap <Down> :echoe "Use j, you moron..."<CR>
"javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:JavaComplete_ClosingBrace = 1
