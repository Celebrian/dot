" Start with plugins using vim-plug
call plug#begin('~/.vim/plugins')
" List of installed plugins
Plug 'pearofducks/ansible-vim'
Plug 'tpope/vim-sensible'
Plug 'Glench/Vim-Jinja2-Syntax'
call plug#end()
" Default stuff
colorscheme elflord
set smarttab
set autoindent
set expandtab
syntax on
" Set autoindent, tabstop, shiftwidth, expandtab and cursorcolumn in yaml files
autocmd FileType yaml setlocal ai ts=2 sw=2 et cuc
filetype plugin indent on
" Puppet validate on save
autocmd BufWritePost *.pp !puppet parser validate <afile>
" Puppet lint after save
autocmd BufWritePost *.pp !puppet-lint <afile>
" Python settings as dictated by PEP8
autocmd FileType python setlocal ts=4 sw=4

" Remap numpad to be numpad instead of application keypad
:inoremap <Esc>Oq 1
:inoremap <Esc>Or 2
:inoremap <Esc>Os 3
:inoremap <Esc>Ot 4
:inoremap <Esc>Ou 5
:inoremap <Esc>Ov 6
:inoremap <Esc>Ow 7
:inoremap <Esc>Ox 8
:inoremap <Esc>Oy 9
:inoremap <Esc>Op 0
:inoremap <Esc>On .
:inoremap <Esc>OQ /
:inoremap <Esc>OR *
:inoremap <Esc>Ol +
:inoremap <Esc>OS -
:inoremap <Esc>OM <Enter>
