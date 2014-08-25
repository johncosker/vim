syntax on
filetype plugin indent on
execute pathogen#infect()
set number
set guifont=Consolas_for_Powerline_FixedD:h10:cANSI
set t_Co=256
set encoding=utf-8
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab    
set autochdir
set smartcase
set backspace=2
set laststatus=2
autocmd VimEnter * wincmd p
filetype plugin on
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
colorscheme slate
set background=light
set background=dark
let g:indentLine_char = '|'
let python_highlight_all = 1
let g:rainbow_active = 1
let g:Powerline_symbols = "fancy"
highlight LineNr guifg=gold
"Toggle search highlight
noremap <CR> :set hlsearch! hlsearch?<CR>
"Delete blank lines
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
"Add blank lines
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
"Remove trailing spaces and extra lines
nnoremap <leader><leader>s mz:%s/\s*$//g<CR>:%s#\($\n\s*\)*\%$##<CR>'zzz
nmap <Space> \\
vmap <Space> \\
nnoremap <leader><leader>l :Limelight!! .5<CR>
"Scrolling
nnoremap J <C-e>
nnoremap K <C-y>
nnoremap <2-LeftMouse> *``:set hlsearch<CR>

" nnoremap <C-x> cc<Esc>

nnoremap <leader>l :set cursorline!<CR>
nnoremap <leader>c :set cursorcolumn!<CR>


nnoremap zZ zz<C-D>H
" " -----------------
" " Vim latex stuff
" " -----------------
" " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on
"
" " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" " can be called correctly.
" set shellslash
"
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
" set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: This enables automatic indentation as you type.
" filetype indent on
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
" let g:tex_flavor='latex'

" Underline the current line with dashes in normal mode
nmap <F5> yyp<c-v>$r-gcc

" Underline the current line with dashes in insert mode
imap <F5> <Esc>yyp<c-v>$r-gccA

hi def link User1 DiffAdd
hi def link User2 DiffDelete

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

""""""""""""""""""""
"EasyMotion
""""""""""""""""""""

""""""""""""""""""""
"Syntastic
""""""""""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_balons = 1

""""""""""""""""""""
"Python
""""""""""""""""""""
autocmd FileType python set foldmethod=indent
autocmd FileType python set foldnestmax=2
""""""""""""""""""""
"Powerline Stuff
""""""""""""""""""""
""""""""""""""""""""
"NERDTree Stuff
""""""""""""""""""""


syntax on
