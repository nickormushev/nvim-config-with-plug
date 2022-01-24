call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'ibhagwan/fzf-lua'


Plug 'pangloss/vim-javascript'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dhruvasagar/vim-table-mode'
Plug 'christoomey/vim-tmux-navigator'
Plug 'takac/vim-hardtime'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/ReplaceWithRegister'
"Plug 'Yggdroot/indentLine'
Plug 'simeji/winresizer'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'christoomey/vim-system-copy'
Plug 'mhinz/vim-startify'

call plug#end()

colorscheme gruvbox
set background=dark

"FZF
set rtp+=~/.fzf

"Scroll offset
set scrolloff=4

set tabstop=4 shiftwidth=4 "expandtab

set number
set relativenumber

"Stop arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set scrolloff=4

syntax on

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

set showtabline=2

"Remove scratch
set completeopt-=preview

set statusline+=%{FugitiveStatusline()}
set colorcolumn=120

set cursorcolumn
nmap <silent> <C-o> :NvimTreeToggle<cr>

"enables folds by default. I did not like them so I commented it out
"set foldmethod=indent
"set foldcolumn=1
inoremap jj <ESC>

nnoremap <SPACE> <Nop>
"make <leader> space
let mapleader = ' '

source ~/.config/nvim/plugin-config/ultisnips.vim
source ~/.config/nvim/plugin-config/nvimtree.vim
source ~/.config/nvim/plugin-config/lspconfig.vim
source ~/.config/nvim/plugin-config/fzf.vim
source ~/.config/nvim/plugin-config/indentline.vim
source ~/.config/nvim/plugin-config/lightline.vim
source ~/.config/nvim/plugin-config/fugitive.vim
