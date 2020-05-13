set number              "set line number always on
set cursorline          "highlight current line.
set softtabstop=4       "delete 4 space
set smarttab            "trans tab into 4 space auto
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,latin1,gbk

""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight settings
highlight CursorLine  cterm=underline cterm=bold guibg=Grey40
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey ctermbg=yellow
hi clear SpellBad
hi SpellBad cterm=reverse ctermbg=13 term=standout


""""""""""""""""""""""""""""""""""""""""""""""""""
" Show and Removes trailing spaces
function TrimWhiteSpace()
    %s/\s*$//
endfunction
autocmd FileWritePre, FileAppendPre, BufWritePre * call TrimWhiteSpace()
map <F2> call TrimWhiteSpace<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""
" set control char list. but close it first.
set list listchars=trail:.,extends:>,tab:>.,precedes:<,eol:$
set nolist
nnoremap <leader>elc :set list!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-s> :w<CR>

source ~/.config/nvim/others/init_plugins.vim
