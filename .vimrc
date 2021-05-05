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

" TODO: Add spellcheck


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
   set signcolumn=yes


"# bout search
   set nohlsearch
   set ignorecase
   set smartcase "scs
"set incsearch

"#bout buffers
   set hidden
   set noswapfile
   set scrolloff=8


