" vim-bootstrap

set nocompatible
let g:polyglot_disabled = []


"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
"Plug 'dart-lang/dart-vim-plugin'
"Plug 'thosakwe/vim-flutter'
"Plug 'jparise/vim-graphql'
"Plug 'mindriot101/vim-yapf'

"Plug 'psf/black'

"Plug 'racer-rust/vim-racer'
"Plug 'rust-lang/rust.vim'
"Plug 'ARM9/arm-syntax-vim'
"Plug 'VelkyVenik/vim-avr'

"Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-fugitive'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/lightline.vim'
"Plug 'shinchu/lightline-gruvbox.vim'

"Plug 'airblade/vim-gitgutter'
"Plug 'vim-scripts/grep.vim'
"Plug 'vim-scripts/CSApprox'
"Plug 'Raimondi/delimitMate'
"Plug 'majutsushi/tagbar'
"Plug 'w0rp/ale'
"Plug 'Yggdroot/indentLine'
"Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

"if isdirectory('/usr/local/opt/fzf')
    "Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
"else
    "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    "Plug 'junegunn/fzf.vim'
"endif
"let g:make = 'gmake'
"if exists('make')
""    let g:make = 'make'
"endif
"Plug 'Shougo/vimproc.vim', {'do': g:make}

"" Vim-Session
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-session'

"" Snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'

"" Color
"Plug 'tomasr/molokai'
"Plug 'occ55/onedark.vim'
"Plug 'chriskempson/base16-vim'
"Plug 'KeitaNakamura/neodark.vim'
"Plug 'mukiwu/vim-tomorrow-night'
"Plug 'chriskempson/vim-tomorrow-theme'
"Plug 'ayu-theme/ayu-vim'
"Plug 'morhetz/gruvbox'

"Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'jelera/vim-javascript-syntax'

"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
"Plug 'kien/ctrlp.vim'
"Plug 'Chiel92/vim-autoformat'
"Plug 'moll/vim-bbye'
"Plug 'kshenoy/vim-signature'

"Plug 'kylelaker/riscv.vim'
"Plug 'rhysd/vim-clang-format'
"Plug 'prettier/vim-prettier'
"Plug 'makerj/vim-pdf'

call plug#end()
"*****************************************************************************
"*****************************************************************************
"" [MY] Settings


" au BufWrite *.js,*.json :Autoformat
" set mouse=a
" set shell=/bin/zsh

" command! LineCursor :!print -n '\033[6 q'

" map <C-t><up> :tabr<cr>
" map <C-t><down> :tabl<cr>
" map <C-t><left> :tabp<cr>
" map <C-t><right> :tabn<cr>
" map <C-t>w :tabclose<cr>


"*****************************************************************************
"*****************************************************************************
"" CTRLP

"let g:ctrlp_map = ';'
"let g:ctrlp_cmd = 'CtrlP'

"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"            \ 'file': '\v\.(exe|so|dll)$',
"            \ 'link': 'some_bad_symbolic_links',
"            \ }
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


""*****************************************************************************
""*****************************************************************************

"source ~/.config/nvim/coc.vim



"" Include user's extra bundle
"if filereadable(expand("~/.vimrc.local.bundles"))
"    source ~/.vimrc.local.bundles
"endif


" Required:
filetype plugin indent on


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac


" session management
" let g:session_directory = "~/.vim/session"
" let g:session_autoload = "no"
" let g:session_autosave = "no"
" let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
set t_ut=
syntax on
set ruler
set number

let no_buffers_menu=1
set mousemodel=extend
set guioptions=egmrti
set gfn=Monospace\ 10

"if has("gui_running")
"    if has("gui_mac") || has("gui_macvim")
"        set guifont=Menlo:h12
"        set transparency=7
"    endif
"else
"    let g:CSApprox_loaded = 1

"    " IndentLine
"    let g:indentLine_enabled = 1
"    let g:indentLine_concealcursor = 0
"    let g:indentLine_char = '┆'
"    let g:indentLine_faster = 1


"    if $COLORTERM == 'gnome-terminal'
"        "set term=gnome-256color
"    else
"        if $TERM == 'xterm'
"            "set term=xterm-256color
"        endif
"    endif

"endif


"" Disable the blinking cursor.
"set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" if exists("*fugitive#statusline")
"     set statusline+=%{fugitive#statusline()}
" endif

" let g:airline_extensions = [ "ctrlp", "term", "tabline"]

" vim-airline
"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#ale#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tagbar#enabled = 1
"let g:airline_skip_empty_sections = 1

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
"let g:NERDTreeChDirMode=2
"let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
"let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
"let g:NERDTreeShowBookmarks=1
"let g:nerdtree_tabs_focus_on_files=1
"let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
"let g:NERDTreeWinSize = 35
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
"nnoremap <silent> <F2> :NERDTreeFind<CR>
"nnoremap <silent> <leader>; :NERDTreeToggle<CR>

"" grep.vim
"nnoremap <silent> <leader>f :Rgrep<CR>
"let Grep_Default_Options = '-IR'
"let Grep_Skip_Files = '*.log *.db'
"let Grep_Skip_Dirs = '.git node_modules'

"" terminal emulation
"nnoremap <silent> <leader>sh :terminal<CR>


""*****************************************************************************
""" Commands
""*****************************************************************************
"" remove trailing whitespaces
"command! FixWhitespace :%s/\s\+$//e

""*****************************************************************************
""" Functions
""*****************************************************************************
"if !exists('*s:setupWrapping')
"    function s:setupWrapping()
"        set wrap
"        set wm=2
"        set textwidth=79
"    endfunction
"endif

""*****************************************************************************
""" Autocmd Rules
""*****************************************************************************
""" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
"augroup vimrc-sync-fromstart
"    autocmd!
"    autocmd BufEnter * :syntax sync maxlines=200
"augroup END

""" Remember cursor position
"augroup vimrc-remember-cursor-position
"    autocmd!
"    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
"augroup END

""" txt
"augroup vimrc-wrapping
"    autocmd!
"    autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
"augroup END

""" make/cmake
"augroup vimrc-make-cmake
"    autocmd!
"    autocmd FileType make setlocal noexpandtab
"    autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
"augroup END

"set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
" noremap <Leader>ga :Gwrite<CR>
" noremap <Leader>gc :Gcommit<CR>
" noremap <Leader>gsh :Gpush<CR>
" noremap <Leader>gll :Gpull<CR>
" noremap <Leader>gs :Gstatus<CR>
" noremap <Leader>gb :Gblame<CR>
" noremap <Leader>gd :Gvdiff<CR>
" noremap <Leader>gr :Gremove<CR>

" session management
"nnoremap <leader>so :OpenSession<Space>
"nnoremap <leader>ss :SaveSession<Space>
"nnoremap <leader>sd :DeleteSession<CR>
"nnoremap <leader>sc :CloseSession<CR>

"" Tabs
" nnoremap <Tab> gt
" nnoremap <S-Tab> gT
" nnoremap <silent> <S-t> :tabnew<CR>

" "" Set working directory
" nnoremap <leader>. :lcd %:p:h<CR>

" "" Opens an edit command with the path of the currently edited file filled in
" noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" "" Opens a tab edit command with the path of the currently edited file filled
" noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" fzf.vim
"set wildmode=list:longest,list:full
"set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
"let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

"" The Silver Searcher
"if executable('ag')
"    let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
"    set grepprg=ag\ --nogroup\ --nocolor
"endif

"" ripgrep
"if executable('rg')
"    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
"    set grepprg=rg\ --vimgrep
"    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
"endif

"cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
"nnoremap <silent> <leader>b :Buffers<CR>
"nnoremap <silent> <leader>e :FZF -m<CR>
""Recovery commands from history through FZF
"nmap <leader>y :History:<CR>

"" snippets
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-b>"
"let g:UltiSnipsEditSplit="vertical"

"" ale
"let g:ale_linters = {}

"" Tagbar
"nmap <silent> <F4> :TagbarToggle<CR>
"let g:tagbar_autofocus = 1

"" Disable visualbell
"set noerrorbells visualbell t_vb=
"if has('autocmd')
"    autocmd GUIEnter * set visualbell t_vb=
"endif

""" Copy/Paste/Cut
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif

"noremap YY "+y<CR>
"noremap <leader>p "+gP<CR>
"noremap XX "+x<CR>

"if has('macunix')
"    " pbcopy for OSX copy/paste
"    vmap <C-x> :!pbcopy<CR>
"    vmap <C-c> :w !pbcopy<CR><CR>
"endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :Bdelete<CR>

"" Clean search (highlight)

"" Switching windows
" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k
" noremap <C-l> <C-w>l
" noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"*****************************************************************************
"" Custom configs
"*****************************************************************************

" elm
" elm-vim
"let g:elm_setup_keybindings = 0
"let g:elm_format_autosave = 1

" vim-polyglot

" erlang
"let erlang_folding = 1
"let erlang_show_errors = 1



" haskell
"let g:haskell_conceal_wide = 1
"let g:haskell_multiline_strings = 1
"let g:necoghc_enable_detailed_browse = 1
"autocmd Filetype haskell setlocal omnifunc=necoghc#omnifunc


"" javascript
"let g:javascript_enable_domhtmlcss = 1

"" vim-javascript
"augroup vimrc-javascript
"    autocmd!
"    autocmd FileType javascript setl tabstop=2|setl shiftwidth=2|setl expandtab softtabstop=2
"augroup END


"" typescript
"let g:yats_host_keyword = 1


""*****************************************************************************
""*****************************************************************************


""*****************************************************************************
""" Convenience variables
""*****************************************************************************

"" vim-airline
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

"if !exists('g:airline_powerline_fonts')
"    let g:airline#extensions#tabline#left_sep = ' '
"    let g:airline#extensions#tabline#left_alt_sep = '|'
"    let g:airline_left_sep          = '▶'
"    let g:airline_left_alt_sep      = '»'
"    let g:airline_right_sep         = '◀'
"    let g:airline_right_alt_sep     = '«'
"    let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
"    let g:airline#extensions#readonly#symbol   = '⊘'
"    let g:airline#extensions#linecolumn#prefix = '¶'
"    let g:airline#extensions#paste#symbol      = 'ρ'
"    let g:airline_symbols.linenr    = '␊'
"    let g:airline_symbols.branch    = '⎇'
"    let g:airline_symbols.paste     = 'ρ'
"    let g:airline_symbols.paste     = 'Þ'
"    let g:airline_symbols.paste     = '∥'
"    let g:airline_symbols.whitespace = 'Ξ'
"else
"    let g:airline#extensions#tabline#left_sep = ''
"    let g:airline#extensions#tabline#left_alt_sep = ''

"    " powerline symbols
"    let g:airline_left_sep = ''
"    let g:airline_left_alt_sep = ''
"    let g:airline_right_sep = ''
"    let g:airline_right_alt_sep = ''
"    let g:airline_symbols.branch = ''
"    let g:airline_symbols.readonly = ''
"    let g:airline_symbols.linenr = ''
"endif



source ~/.config/nvim/me.vim


