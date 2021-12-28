" -------------------------------
" THIS IS A CONFIGURATION SECTION
" -------------------------------
" Default Split Direction
set splitright splitbelow

" Turn Off Mode in  Status Line
set noshowmode

" Use Clipboard
set clipboard=unnamedplus

" Show Relative Line Number 
set relativenumber
set number

" Hide Buffer when Not Saved and Go to Other File
set hidden

" Set Tab Width
set shiftwidth=2
set tabstop=2

" Set Dark Theme
set background=dark

" Lazily Redraw Screen
set lazyredraw

" For Command Completion
set wildmenu

"Set Cursor Line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey20

" Set Line Number Color
hi LineNr guifg=Grey50
hi CursorLineNR guifg=White

" Set Hightlight Color
hi Visual guifg=transparent
hi Visual guibg=#525387

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

" Pop-up Menu Size
set pumwidth=8
set pumheight=12

" Auto Source init.vim
au! BufWritePost $VIMCONF source %
