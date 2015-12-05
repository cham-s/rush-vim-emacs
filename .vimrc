syntax on
set nu
"indent with tab for c file
set tabstop=4
set shiftwidth=4
set autoindent
set cindent

" close pairs
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     ]
inoremap []     []

inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
inoremap ''     ''

inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap ""     ""

" display cursor column
set statusline+=col:\ %c

" config spaces side by side
highlight DoubleSpaces ctermbg=green guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\s/
autocmd InsertLeave * match ExtraWhitespace /\s\s/
autocmd BufWinLeave * call clearmatches()

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"toggle on and off hlsearch
nnoremap <F4> :set hlsearch! hlsearch?<CR>
inoremap <F4> <Esc>:set hlsearch! hlsearch?<CR>i
