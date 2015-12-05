"indent with tab for c file
set tabstop=4 
set shiftwidth=4
set autoindent 
set cindent

"
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

"Enable match highlighting when starting vim
set viminfo^=h

inoremap <Space>		<Space><Esc>/\s\s<CR>i
