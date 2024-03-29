call plug#begin()

Plug 'sirver/ultisnips'  | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
let g:tex_flavor='pdflatex -shell-escape'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

setlocal spell! spelllang=en_us

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'arcticicestudio/nord-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'bluz71/vim-nightfly-guicolors'

" Use release branch (recommend)

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc

Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" plugins for rust lang
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'

Plug 'vim-scripts/c.vim'
Plug 'jiangmiao/auto-pairs'


call plug#end()





"colorscheme molokai
"colorscheme 256_noir

set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight




set number
set expandtab shiftwidth=4 softtabstop=4
set relativenumber
nmap <C-n> :NERDTreeToggle<CR>


let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


nnoremap <C-l> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
set mouse=a


" nnoremap <C-p> :Files<Cr>
" 
" 
" " Automatically closing braces
" inoremap {<CR> {<CR>}<Esc>ko<tab>
" inoremap [<CR> [<CR>]<Esc>ko<tab>
" inoremap (<CR> (<CR>)<Esc>ko<tab>
" set hidden
" 
" map <F6> :setlocal spell! spelllang=en_us<CR>
" 
" 
" set nocompatible              " be iMproved, required
" filetype off                  " required
" 
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
 
 
 
 
" call vundle#begin()
" Plugin 'davidhalter/jedi-vim'
" call vundle#end()            " required

" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" 
" " plugin on GitHub repo
" "Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Plugin 'ascenator/L9', {'name': 'newL9'}
" 
" 
" " All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" "
" "
" "
" set shell=/bin/bash
" set vb
" 
" set mouse=a
" map <ScrollWheelUp> <C-Y>
" map <ScrollWheelDown> <C-E>
" set encoding=utf-8
