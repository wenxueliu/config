set nocompatible "be iMproved
filetype off     "required

"Color SETTINGS {
"set colorcolumn=85 "彩色显示第85行
set t_Co=256 "设置256色显示
set background=dark "使用color solarized
set cursorline "the cursor highlight
"set cursorcolumn "the cursor higthlight by column
set ttyfast

set backspace=indent,eol,start "set the backspace workstyle"

"colorscheme solarized
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"
"}

"set nobackup 
"set noswapfile

"Tab SETTING {
set tabstop=4 "the width of tab
set shiftwidth=4 "the number of spaces when alignment"
set softtabstop=4 "delete four space when type backspace
set smarttab "delete four space when type backspace
set expandtab "transform the tab to space
"}

" Encode SETTINGS {
set encoding=utf-8  "the default encode
"try the file encode in sequence"
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
"}

set scrolloff=3
set fenc=utf-8
set autoindent
set hidden

"set laststatus=2
"set number "显示行号
"set relativenumber "相对行号 要想相对行号起作用要放在显示行号后面
"set undofile "无限undo
"set nowrap "禁止自动换行
set wrap "自动换行
"autocmd! bufwritepost _vimrc source % "自动载入配置文件不需要重启

"将-连接符也设置为单词
set isk+=-

set ignorecase "ignore the upper or lower of alphabet when searching
set smartcase
"set gdefault
set incsearch
set showmatch  "add the match character, eg you input '(' will add ')' automatably
set hlsearch

set numberwidth=4 "行号栏的宽度
"set columns=135 "初始窗口的宽度
"set lines=50 "初始窗口的高度
"winpos 620 45 "初始窗口的位置

set whichwrap=b,s,<,>,[,]
"让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）

"插入模式下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>

"=====================================
"Vundle SETTINGS {
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let Vundle manage Vundle
"required!
Bundle 'gmarik/vundle'

" vim-sripts repos
"Bundle 'vim-plugin-foo'
"Bundle 'vim-plugin-bar'
filetype indent on " required, adapt the indent to different filetype
filetype plugin on " allow the plugin 
filetype plugin indent on "complete the alphabet intelligently

"相较于Command-T等查找文件的插件，ctrlp.vim最大的好处在于没有依赖，干净利落
Bundle 'ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrl_map = '<leader>p'



Bundle 'AutoClose'

"神级插件，ZenCoding可以让你以一种神奇而无比爽快的感觉写HTML、CSS
"Bundle 'ZenCoding.vim'

"在()、""、甚至HTML标签之间快速跳转；
Bundle 'matchit.zip'

"自动识别文件编码；
"Bundle 'FencView.vim'
"let g:fencview_autodectect=1

"显示行末的空格；
Bundle 'ShowTrailingWhitespace'

"highlight all trailing whitespace in red
Bundle 'bronson/vim-trailing-whitespace'

"JS代码格式化插件；
"Bundle '_jsbeautify'

"用全新的方式在文档中高效的移动光标，革命性的突破
"Bundle 'EasyMotion'

"必不可少，在VIM的编辑窗口树状显示文件目录
Bundle 'vim-scripts/The-NERD-tree'
"设置相对行号
nmap <leader>nt :NERDTree<cr>:set rnu<cr>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.$','\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos=1

"NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码；
Bundle 'The-NERD-Commenter'
let NERDShutUp=1

"navigation by Tags
"Bundle 'majutsushi/tagbar'
"nmap <F9> :TagbarToggle<CR>"
""let g:tagbar_autofocus=1

"解放生产力的神器，简单配置，就可以按照自己的风格快速输入大段代码。
Bundle 'UltiSnips'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"让代码更加易于纵向排版，以=或,符号对齐
Bundle 'Tabular'

"switch the source file and header file smoothly
""Bundle 'vim-scripts/a.vim'

"provides closing of quotes,parenthesis,brackets and so on automaticly 
Bundle  'Raimondi/delimitMate'

Bundle 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '|'

"the best complete plugin in vim currently
"Bundle 'Valloric/YouCompleteMe'

"support markdown syntax 
Bundle 'plasticboy/vim-markdown'
let g:vim_makrdown_folding_disabled = 1

"} END Vundle SETTINGS



"map
nnoremap <slient> <F8> :TlistToggle<CR>

"taglist setting 
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Auto_Open=1
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlit_Process_File_Always=1
let Tlist_GainFocus_On_ToggleOpen=1
"taglist ending


"set bs=indent,eol,start
set ai
"make the compleate like IDE
set completeopt+=longest





"set paste
"set backup " Keep a backup file
set nu
set ruler " Show the cursor position all the time

colorscheme elflord " Make the colors brighter for transparent terminals
"set ts=4 " Set TAB Stop
set shiftwidth=4 " Set shift width in programming when using >>
set textwidth=0 " Don't wrap words by default
set ignorecase " Ignore case in searching
set smartcase " Search case-sensitively when capitalized letter found in pattern
set showcmd " Show (partial) command in status line
set showmatch " Show matching brackets
set incsearch " Incremental Search
"set autowrite " Automatically save file before :next and : prev
"set nowrap " Do not wrap text
set textwidth=80 " Place automatic text breaks

" Enable Chinese encoding support
"set encoding=euc-cn
"if v:lang =~ "^zh_CN"
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,enc-jp,euc-kr,latin1
"set guifontset=*liquan* " You may change the font to your like
"endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
syntax on
set hlsearch
endif

"set nohlsearch "If you do not like highlighting search pattern

set autoindent
set cindent


"these are useful for snippetsemu plugin such as taglist
"filetype off
filetype plugin on
set runtimepath+=~/.vim/textmateOnly
set runtimepath+=~/.vim/textmateOnly/after

"========================using for python ==============================
"highlight
set filetype=python
au BufNewFile, BufRead *.py, *.pyw setf python
"indent

set completeopt=longest,menu
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set omnifunc=python3complete#Complete
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent



"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######


