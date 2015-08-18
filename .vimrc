"fix for windows to find *nix style configuration folders (.vim)
if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

"bootstrap pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"vim-go shortcuts
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

"tab sizes
set tabstop=4
set softtabstop=4
set shiftwidth=4

"colorschemes and display settings
colorscheme gruvbox

set background=dark

"set OS-specific fonts
if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h10:cANSI
  elseif has("gui_gtk2")
    "set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    "set guifont=Menlo\ Regular:h14
  endif
endif

set number
