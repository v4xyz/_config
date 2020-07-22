set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" 支持鼠标
set mouse=a
" 不兼容vi模式
set nocompatible
" 显示当前模式
set showcmd
" 名利模式下按tab补全名利
set wildmenu
" 显示当前选中行
set cursorline
" 显示行号
set number
" 显示相对行号
set relativenumber
" 查找时忽略大小写
set ignorecase
" 查找时智能大小写
set smartcase
" 高亮查询结果
set hlsearch
" 查询时实时高亮
set incsearch
" 打开文件时清除上一次搜索
"exec "nohlsearch"
" 自动折行
set wrap
" noremap s <nop>
let mapleader=" "
map R :source ~/.config/nvim/init.vim<CR>
map <LEADER>cc :e ~/.vimrc<CR>
map <LEADER>cv :e ~/.config/nvim/init.vim<CR>
set background=dark
inoremap jk <esc>

" Better tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" FZF插件配置
noremap <C-p> :FZF<CR>
noremap <C-f> :Ag<CR>

" NERDTree插件配置
" 默认打开NERDTree
" autocmd vimenter * NERDTree
noremap <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 默认打开收藏夹
let g:NERDTreeShowBookmarks='1'

" Resize splits with arrow keys
noremap <C-up> :res +5<CR>
noremap <C-down> :res -5<CR>
noremap <C-left> :vertical resize-5<CR>
noremap <C-right> :vertical resize+5<CR>

" develop-enhance
nmap <F8> :TagbarToggle<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'

" develop-enhance
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'

" git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'
Plug 'kkoomen/vim-doge'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
call plug#end()
