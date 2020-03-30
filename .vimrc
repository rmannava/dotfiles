" change startup directory to something useful
cd $HOME
" some editing improvements
syntax on
filetype plugin on
filetype indent on
colorscheme slate
" line numbers
set number
nnoremap <silent> <Leader>v :edit ~/.vimrc<CR>
" toggle folds
nnoremap <silent> <Space> za
" file system navigation
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f $V%zf
" map gundo to something useful
nnoremap <silent> <Leader>t :GundoToggle<CR>
" map goyo to something useful
nnoremap <silent> <Leader>g :Goyo<CR>
" jump between ale errors
nnoremap <silent> <C-j> :ALENext<CR>
nnoremap <silent> <C-k> :ALEPrevious<CR>
let g:tex_flavor = "latex"
" make gundo use python3
let g:gundo_prefer_python3 = 1
set incsearch
set autochdir
set backspace=eol,start
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set ignorecase
set smartcase
" reasonable size for this dpi
set guifont=Consolas:h10
set showmatch
set cursorline
set foldlevel=99
set textwidth=0
set wildmenu
set ruler
" vim-plug
call plug#begin('~/.vim/plugged')
" autocompletion
Plug 'valloric/youcompleteme'
" file system explorer
Plug 'scrooloose/nerdtree'
" vim latex support
Plug 'lervag/vimtex'
" move lines
Plug 'matze/vim-move'
" vim comments
Plug 'tpope/vim-commentary'
" remove distractions when writing
Plug 'junegunn/goyo.vim'
" undo tree
Plug 'sjl/gundo.vim'
" syntax checker
Plug 'dense-analysis/ale'
" statusline
Plug 'vim-airline/vim-airline'
" change surroundings
Plug 'tpope/vim-surround'
call plug#end()
" youcompleteme color fix
highlight Pmenu guifg=#ffffaf guibg=#000000
" vimtex ycm compatibility
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
  let g:ycm_semantic_triggers.tex = [
        \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
        \ 're!\\hyperref\[[^]]*',
        \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\(include(only)?|input){[^}]*',
        \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
        \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
        \ ]
" map escape sequences to alt combinations (enables alt keymaps)
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
" timeout for leader key
set timeout ttimeoutlen=50
" " ale error list
" let g:ale_open_list = 1
" " ale error list height
" let g:ale_list_window_size = 5
" airline disable whitespace
let g:airline#extensions#whitespace#enabled = 0
" disable vimtex quickfix window
let g:vimtex_quickfix_mode = 0
" set vimtex default pdf viewer
let g:vimtex_view_general_viewer = "evince"
" " ale lint on save
" let g:ale_lint_on_text_changed = 0
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_save = 1
" add commenting for matlab
autocmd FileType matlab setlocal commentstring=%\ %s
