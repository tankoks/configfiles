" Formatting
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
syntax on


" Visual cues
set cursorline
set nu


" No delay on <Esc>
set timeoutlen=1000
set ttimeoutlen=0

" Theme
let g:molokai_original = 1
let g:rehash256 = 1
colo monokai

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
