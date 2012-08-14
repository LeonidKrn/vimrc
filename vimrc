call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

set history=1000

set showcmd

set showmode

set incsearch
set hlsearch

set statusline=%f

set guioptions-=T

set mouse=a
set ttymouse=xterm2

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
silent! nmap <silent> <F4> :GundoToggle<CR>
nnoremap <leader>b :BufExplorer<cr>

set nu
set sw=2
set sts=2
let g:fuzzy_ignore = "gems/*"
set guifont =\ Monospace\ Bold\ 10
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    colorscheme railscasts
    set guitablabel=%M%t
    set lines=40
    set columns=115

    if has("gui_gnome")
        set term=gnome-256color
        colorscheme railscasts
        set guifont=Monospace\ Bold\ 12
    endif
else
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1

    "set railscasts colorscheme when running vim in gnome terminal
    if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
        colorscheme railscasts
    else
        colorscheme default
    endif
endif
