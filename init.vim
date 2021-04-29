call plug#begin()
Plug 'craigemery/vim-autotag'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'pangloss/vim-javascript'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/fzf.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'christoomey/vim-tmux-navigator'
Plug 'takac/vim-hardtime'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'sjl/badwolf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'https://github.com/ycm-core/YouCompleteMe.git', { 'do': './install.py --ts-completer --all' }
Plug 'itchyny/lightline.vim'
Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine'
Plug 'martinda/Jenkinsfile-vim-syntax'
"Plug 'frazrepo/vim-rainbow'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'fatih/molokai'
Plug 'simeji/winresizer'
Plug 'preservim/nerdtree'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-system-copy'
Plug 'mhinz/vim-startify'

call plug#end()

colorscheme dracula
set background=dark
let g:palenight_terminal_italics=1

"FZF
set rtp+=~/.fzf

"Scroll offset
set scrolloff=4

set tabstop=4 shiftwidth=4 "expandtab

set number
set relativenumber

"Find references
nnoremap <leader>gtr :GoReferrers<CR>
nnoremap <leader>dec :GoDecls<CR>
nnoremap <leader>decd :GoDeclsDir<CR>

"GoAlternate and splits for it
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

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
"Ale-lightline vim
autocmd FileType go setlocal expandtab

set colorcolumn=120

" Find/replace. Now with coc-nvim I can use <leader>rn
" vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>

" Spell checking
" nnoremap <leader>sp :set spellmm[s1z=`m<CR>
":set spellmm[sz=

"Make navigation harder. Use hjkl only once per second
"let g:hardtime_default_on = 1

"Rainbow colors on brackets
let g:rainbow_active = 1

set cursorcolumn
nmap <silent> <C-o> :NERDTreeToggle<cr>

"enables folds by default. I did not like them so I commented it out
"set foldmethod=indent
"set foldcolumn=1
inoremap jj <ESC>

nnoremap <SPACE> <Nop>
"make <leader> space
let mapleader = ' '

source ~/.config/nvim/plugin-config/ultisnips.vim
source ~/.config/nvim/plugin-config/fzf.vim
source ~/.config/nvim/plugin-config/vim-go.vim
source ~/.config/nvim/plugin-config/indentline.vim
source ~/.config/nvim/plugin-config/ale.vim
source ~/.config/nvim/plugin-config/lightline.vim
source ~/.config/nvim/plugin-config/coc.vim
source ~/.config/nvim/plugin-config/fugitive.vim
