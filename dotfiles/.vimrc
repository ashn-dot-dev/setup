""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" GENERAL CONFIGURATION SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

color desert
syntax enable

filetype plugin on
filetype indent on

set encoding=utf-8
set spell spelllang=en_us

" Show line numbers by default.
set number
" Turn off wrapping by default.
set nowrap
" Turn off spellchecking by default.
set nospell
" Do not insert two spaces after a period when joining separate lines with gq.
set nojoinspaces
" Highlight matching parentheses, braces, and brackets by default.
set showmatch
" Show an 81 column magenta colorcolumn by default.
" Text left of the colorcolum is less than or equal to an 80 column width.
set colorcolumn=81
highlight ColorColumn ctermbg=DarkMagenta guibg=DarkMagenta

" TABS   : >---
" EOL SP : •
set listchars=tab:>-,trail:•
set list

" Set 6 lines to the cursor - when moving vertically using j/k.
set so=6

" Copy indent from the current line when starting a new line.
set autoindent

" Render tabs with 4 space width.
set tabstop=4
" <Tab>, '<', '>', and autoindent use spaces.
set expandtab
" <Tab>, '<', and '>', insert four spaces.
set shiftwidth=4

" Ignore case when searching.
set ignorecase
" Highlight results when searching.
set hlsearch
" Begin searching as characters are entered.
set incsearch

" Change default temp file directories to avoid clutter.
set backupdir=~//
set directory=~//
set undodir=~//

" Lisp style preferences.
autocmd FileType lisp,scheme setlocal tabstop=2 shiftwidth=2 expandtab
" HTML/JavaScript/CSS style preferences.
autocmd FileType html,javascript,json,css setlocal ts=2 sw=2 expandtab
autocmd BufNewFile,BufRead *.ts setlocal syntax=javascript ts=2 sw=2 expandtab
" Markdown style preferences.
autocmd BufNewFile,BufRead *.md setlocal ts=2 sw=2 expandtab

" Linux Kernel style preferences.
function s:SetLinuxKernelStyleConfig()
    setlocal tabstop=8
    setlocal shiftwidth=8
    setlocal noexpandtab
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" KEY BINDINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leader
let mapleader = " "

" Arrow keys are for wusses.
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
vnoremap <up>    <nop>
vnoremap <down>  <nop>
vnoremap <left>  <nop>
vnoremap <right> <nop>

" Remove misc commands that I never use.
nnoremap <F> <nop>
nnoremap <M> <nop>
nnoremap <S-L> <nop>
nnoremap <T> <nop>
nnoremap <U> <nop>
nnoremap <C-Y> <nop>
nnoremap <S-J> <nop>
nnoremap <S-k> <nop>
"" <S-L> does not play nice with `set so=<NUMBER>`.
nnoremap <S-L> <nop>
"" <S-M> does not play nice with `set so=<NUMBER>`.
nnoremap <S-M> <nop>
"" <S-Q> is bound to ex mode for historical compatibility.
"" It has only ever been an annoyance.
nnoremap <S-Q> <nop>

" Bash-like backspace and delete.
inoremap <C-H> <bs>
inoremap <C-D> <del>

" More natural splits.
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab navigation.
nnoremap <C-n> :tabnext<Return>
nnoremap <C-m> :tabprevious<Return>
nnoremap <C-t> :tabnew<Return>

" Backtab with <shift>+<tab> in insert mode.
inoremap <S-Tab> <C-d>

" Turn off search highlight.
nnoremap <leader><space> :nohlsearch<Return>

" Toggle spellchecking.
function s:ToggleSpellCheck()
    set spell!
    if &spell
        echo "Spellcheck ON"
    else
        echo "Spellcheck OFF"
    endif
endfunction
nnoremap <silent><Leader>sp :call <SID>ToggleSpellCheck()<Return>

" Alternative write-file command.
nnoremap <leader>w :w<Return>

" Insert empty lines without entering insert mode.
nnoremap <leader>o o<Esc>^d$
nnoremap <leader>O O<Esc>^d$

" Explore bindings.
let g:netrw_liststyle=0
nnoremap <leader>ex  :Explore<Return>
nnoremap <leader>tex :Texplore<Return>
nnoremap <leader>vex :Vexplore!<Return>
nnoremap <leader>sex :Sexplore<Return>

" <F1> => Toggle number.
" NOTE: GNOME Terminal will intercept <F1> before vim.
nnoremap <silent><F1> :set number!<Return>

" <F2> => Switch color column between 80 columns, 72 columns, and off.
function s:SwitchColorColumn()
    if &colorcolumn == 81
        set colorcolumn=73
    elseif &colorcolumn == 73
        set colorcolumn=0
    else
        set colorcolumn=81
    endif
endfunction

nnoremap <silent><F2> :call <SID>SwitchColorColumn()<Return>
inoremap <silent><F2> :call <SID>SwitchColorColumn()<Return>
vnoremap <silent><F2> :call <SID>SwitchColorColumn()<Return>

" <F3> => Toggle between 'insert' and 'insert (paste)' modes.
set pastetoggle=<F3>

" <F4> => Toggle word wrap.
nnoremap <silent><F4> :set wrap!<Return>

" <F5> => Switch to Linux Kernel Editing
nnoremap <silent><F5> :call <SID>SetLinuxKernelStyleConfig()<Return>
