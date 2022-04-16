syntax on

set encoding=UTF-8
set termguicolors
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4
set number
set relativenumber
set numberwidth=4
set incsearch
set nohlsearch
set scrolloff=8
set undofile
set mouse=a
set ignorecase
set smartcase
set clipboard=unnamedplus
set background=dark
set ttyfast
set swapfile
set dir=~/.vim/tmp

" only load plugins if Plug detected
if filereadable(expand("~/.vim/autoload/plug.vim"))
    call plug#begin('~/.local/share/vim/plugins')
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdcommenter'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'davidhalter/jedi-vim'
    Plug 'morhetz/gruvbox'
    call plug#end()

    colorscheme gruvbox

    " NERDTree
    nmap <F2> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1

    " NERDTree Commenter
    filetype plugin on
    nmap <C-_> <Plug>NERDCommenterToggle

    " Airline Settings
    let g:airline#extensions#tabline#enabled=1
    nmap <leader>1 :bp<CR>
    nmap <leader>2 :bn<CR>
    nmap <C-w> :bd<CR>

    " Run python command on current file
    nmap <F9> :w<CR>:!clear;python %<CR>

endif
