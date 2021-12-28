" ------------------------
" THIS IS KEYBINDS SECTION
" ------------------------
let mapleader = "\\"

" Source VIMCONF
nnoremap <silent> <leader>sss :source $VIMCONF<CR>

" Resize Windows
noremap <silent> <M-l> :vertical resize +1<CR>
noremap <silent> <M-h> :vertical resize -1<CR>
noremap <silent> <M-k> :resize +1<CR>
noremap <silent> <M-j> :resize -1<CR>

" Buffer Navigation
nnoremap <TAB> :bnext<CR>
nnoremap <M-TAB> :bprevious<CR>

" New Split Window
nnoremap <leader>- :split<CR>
nnoremap <leader>_ :vsplit<CR> 

" Split Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch to Horizontal/Vertical
map <leader>th <C-w>t<C-w>H
map <leader>tv <C-w>t<C-w>K

" Easier Navigation
map $ <Nop>
map ^ <Nop>
map { <Nop>
map } <Nop>
noremap K {
noremap J }
noremap H ^
noremap L $

" NvimTree
nnoremap <M-t> :NvimTreeToggle<CR>
nnoremap <M-f> :NvimTreeFocus<CR>
nnoremap <M-r> :NvimTreeRefresh<CR>
nnoremap <M-n> :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

" LspSaga: Find The Cursor Word Definition and Reference
nnoremap <silent><leader>lfr <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent><leader>lfr :Lspsaga lsp_finder<CR>

" LspSaga: Code Action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" LspSaga: Show Hover Doc
nnoremap <silent><leader>ld <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent><leader>ld :Lspsaga hover_doc<CR>
" scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" LspSaga: Show Signature Help
nnoremap <silent><leader>sh <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
nnoremap <silent><leader>sh :Lspsaga signature_help<CR>

" LspSaga: Rename
nnoremap <silent><leader>lr <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent><leader>lr :Lspsaga rename<CR>

" LspSaga: Preview Definition
nnoremap <silent><leader>lfd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
nnoremap <silent><leader>lfd :Lspsaga preview_definition<CR>

" Telescope
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tm <cmd>Telescope marks<cr>
nnoremap <leader>tre <cmd> Telescope registers<cr>
nnoremap <leader>tc <cmd> Telescope commands<cr>

" cmp: Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" cmp: Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" cmp: Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" cmp: Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" cmp: If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}

" C++
:command BearInit :!bear -- clang++ -std=c++20 *.cpp -o main
:command Cpc :!clang++ -std=c++20 *.cpp -o main
:command Cpr :!./main
:command Cpsc :!clang++ -std=c++20 %:t -o main

" Flutter
:command Flrundev :FlutterRun
:command Flrunrel :!flutter run --release
:command Fldevices :FlutterDevices
:command Flhrel :FlutterReload
:command Flhres :FlutterRestart
nnoremap <leader>flr :FlutterRestart<CR>
nnoremap <leader>flc :FlutterLogClear<CR> 

" Python
:command Pyr :!python3 main.py

" Toggle IndentLine
nnoremap <leader>il :IndentBlanklineToggle<CR>

" Touble
nnoremap <leader>trt :TroubleToggle<CR>
