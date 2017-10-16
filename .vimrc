set nocompatible
filetype off

" Vundle {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe {{{
Plugin 'Valloric/YouCompleteMe'

let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf='.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '%'
let g:ycm_warning_symbol = '%'
let g:ycm_max_diagnostics_to_display = 10000
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_filepath_completion_use_working_dir = 1

nnoremap <leader>yj :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>yg :YcmCompleter GoTo<CR>
nnoremap <leader>yi :YcmCompleter GoToImplementationElseDeclaration<CR>
nnoremap <leader>yt :YcmCompleter GetTypeImprecise<CR>
nnoremap <leader>yd :YcmCompleter GetDocImprecise<CR>
nnoremap <leader>yf :YcmCompleter FixIt<CR>
nnoremap <leader>yr :YcmCompleter GoToReferences<CR>
nnoremap <leader>ys :YcmDiags<CR>
nnoremap <leader>yD ::YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>yR :YcmRestartServer<CR>
nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F10> :YcmCompleter GetTypeImprecise<CR>
nnoremap <F9> :YcmCompleter GetDocImprecise<CR>
" }}}

" Snippets {{{
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" }}}

call vundle#end()

" }}}
" Pathogen {{{
execute pathogen#infect()
syntax on
filetype plugin indent on
" }}}
" Indents & Tabs {{{
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
" }}}
" Searching {{{
set incsearch     " search as characters are entered
" \<space>: toggle search highlight
nnoremap <leader><space> :set hlsearch!<CR>
" }}}
" UI improvements {{{
set wildmenu
set ruler number
set laststatus=2
set whichwrap=<,>,h,l,[,]
" }}}
" Colours {{{
set background=dark

hi LineNr ctermbg=234
hi LineNr ctermfg=243

hi YcmErrorSign ctermbg=88
hi YcmErrorSection ctermbg=88
hi YcmWarningSign ctermbg=58
hi YcmWarningSection ctermbg=58
" }}}
" Encodings {{{
" reopen with cp1251 as encoding
map <leader>rr :e ++enc=cp1251<CR>
" reopen with UTF-8 as encoding
map <leader>ru :e ++enc=utf-8<CR>
" }}}
" Folding {{{
hi folded ctermbg=NONE

set foldlevelstart=10

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window.
autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
autocmd InsertLeave * let &l:foldmethod=w:last_fdm
" }}}

set grepprg=grep\ -nH\ $*

let g:tex_flavor='latex'

map ; :

" vim:foldmethod=marker:foldlevel=0

