" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'


au BufWrite *.ts :PrettierAsync
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
