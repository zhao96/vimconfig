
filetype plugin indent on

let mapleader = ","
let maplocalleader = ","

" vim-polyglot
" https://github.com/sheerun/vim-polyglot
" let g:polyglot_disabled = ['css']

" ale
" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_cpp_ccls_init_options = {
\   'cache': {
\       'directory': './.ccls-cache'
\   }
\ }

" tagbar
let g:tagbar_autofocusa = 1
let g:tagbar_autoclose = 1


" disable plugins
let g:pathogen_disabled = []

call add(g:pathogen_disabled, 'coc.nvim')
call add(g:pathogen_disabled, 'fzf.vim')
"call add(g:pathogen_disabled, 'ale')

" ale.vim
" call add(g:pathogen_disabled, 'ale')
let g:ale_cpp_ccls_init_options = {
\   'cache': {
\       'directory': '/tmp/ccls/cache'
\   }
\ }
let g:ale_completion_enabled = 1
" let g:ale_cursor_detail = 1

nmap <C-\>g :ALEGoToDefinition<cr>
nmap <C-\>c :ALEFindReferences<cr>
nmap <C-\>s :ALESymbolSearch<cr>
nmap <leader>i :ALEHover<cr>

" fzf
nmap <C-t> :FZF<cr>

execute pathogen#infect()

" syntax
syntax on

" indent
set copyindent
set preserveindent
set shiftwidth=4
set tabstop=4
set expandtab


" Color scheme
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" highlight search
set hlsearch
set incsearch

" no backup
set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes



" underline of current line
set cursorline

imap jk <esc>
nnoremap <leader>w  <C-w>w
nnoremap <leader>c  :hide<CR>

" tagbar
nmap <F9> :TagbarToggle<CR>


" go down/up one visible, wrapped line rather than one line number
noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj



map   <silent> <F2>        :write<CR>
map   <silent> <F3>        :Explore<CR>
nmap  <silent> <F4>        :exe ":ptag ".expand("<cword>")<CR>
map   <silent> <F5>        :copen<CR>
map   <silent> <F6>        :cclose<CR>
map   <silent> <F7>        :cp<CR>
map   <silent> <F8>        :cn<CR>
"
imap  <silent> <F2>   <Esc>:write<CR>
imap  <silent> <F3>   <Esc>:Explore<CR>
imap  <silent> <F4>   <Esc>:exe ":ptag ".expand("<cword>")<CR>
imap  <silent> <F5>   <Esc>:copen<CR>
imap  <silent> <F6>   <Esc>:cclose<CR>
imap  <silent> <F7>   <Esc>:cp<CR>
imap  <silent> <F8>   <Esc>:cn<CR>



" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
