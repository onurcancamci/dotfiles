" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'


au BufWrite *.tsx :PrettierAsync
autocmd Filetype typescriptreact setlocal ts=2 sw=2 expandtab

