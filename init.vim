" load coc setting
source ~/.config/nvim/coc-setting.vim



set nu
set relativenumber
let mapleader=" "
set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible




" Enable copying from vim to clipboard
"if has('win32')
"  set clipboard=unnamed  
"else
"  set clipboard=unnamedplus
"endif




call plug#begin("~/.config/nvim/pluggins")
Plug 'neoclide/coc.nvim', {'branch': 'release'}	
Plug 'preservim/nerdtree'
Plug 'sainnhe/everforest'
Plug 'windwp/nvim-autopairs'
Plug 'PhilRunninger/nerdtree-visual-selection'
call plug#end()

lua << EOF
require("nvim-autopairs").setup {
    map_cr = false,
}
EOF



" theme config
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:everforest_background='soft'
let g:everforest_better_performance=1
syntax enable
colorscheme everforest




" NERDTree setting
nnoremap <C-f> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='n' " Mở file trong tab mới từ NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif "exit vim if nerdtree is only tab




" switch tab page mapping
nnoremap <C-w> :tabclose<CR>
nnoremap <C-p> :tabprevious<CR>
nnoremap <C-n> :tabnext<CR>




" change focus tab mapping
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k




" terminal mapping
nnoremap <nowait> <C-t> :below 15split \| terminal<CR>
"thoát terminal mode -> terminal-normal
tnoremap <Esc> <C-\><C-n>
