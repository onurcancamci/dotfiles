

let g:rustfmt_on_save = 1
let g:rustfmt_edition = '2018'

au BufWrite *.rs :Autoformat


au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)



