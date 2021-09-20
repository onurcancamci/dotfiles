"Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
"Plug 'ludwig/split-manpage.vim'

let g:clang_format#code_style = 'llvm'

autocmd FileType c setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType cpp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

au BufWrite *.c,*.cpp :ClangFormat

