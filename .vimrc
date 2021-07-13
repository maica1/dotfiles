"# Plugins
packloadall 

"#general
   filetype plugin on 
   syntax on
   set encoding=utf-8
   map <leader>s :!clear && shellcheck % <CR>
   map <leader>S :%s//g<left><left>
"# autocomplete commands
   set wildmode=longest,list,full

   map <F7> set spell spelllang=pt,en_us

"# bout tabs
   set ts=3 softtabstop=3
   set shiftwidth=3
   set expandtab
   set smartindent

   "set splits order and shortcuts
   set splitbelow splitright
   map <C-h> <C-w>h
   map <C-j> <C-w>j
   map <C-k> <C-w>k
   map <C-l> <C-w>l

"#bout  lns
   set nu relativenumber

"#bout coluns
"   set signcolumn=yes


"# bout search
   set nohlsearch
   set ignorecase
   set smartcase "scs
"set incsearch

"#bout buffers
   set hidden
   set noswapfile
   set scrolloff=8

"config to ident yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

"Save Without sudo
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
