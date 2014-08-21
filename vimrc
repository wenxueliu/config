
"################ Dependent ################
"#### ubuntu
"sudo apt-get install ctags
"sudo apt-get install build-essential cmake python-dev  #编译YCM自动补全插件依赖

"#### centos
"sudo yum install python-devel.x86_64
"sudo yum groupinstall 'Development Tools'

"#### mac
"brew install ctags

"if you are pythonic
"sudo pip install pyflakes
"sudo pip install pylint
"sudo pip install pep8

"1.当你正在编辑时，留意那些重复的和（或者）花费相当多时间的动作。
"2.寻找一个能更快完成这个动作的编辑器命令。你可以阅读文档，询问朋友，或者看看别人是怎么做的。
"3.练习使用这个命令，直到无需思考你的手指就能输入。
"注意
"1. 我想把工作做好，我没有时间去翻阅文档寻找一些新命令。”如果你这样想，你将会停留在计算石器时代。有些人什么事都使用Notepad，然后惊讶于其他人使用一半的时间完成了工作。
"2. 在需要的时候才寻找新的替代方法,而不要成为玩vim工具的，vim是为更好地写代码。



"###################### BASE ########################

set nocompatible "be iMproved
filetype off     "required

"Color SETTINGS {
"set colorcolumn=85 "彩色显示第85行
set t_Co=256 "设置256色显示
set background=dark "使用color solarized
set cursorline "the cursor highlight
"set cursorcolumn "the cursor higthlight by column
set ttyfast
set magic "For regular expressions turn magic on

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
set shiftround "use multiple of shiftwidth when indenting with '<' and '>'
"}

"nmap SETTING {
"<leader> is \
nmap <leader>s :source $MYVIMRC
nmap <leader>e :e $MYVIMRC
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
set laststatus=2 "" Always show the status line

"set laststatus=2
"set number "显示行号
"set relativenumber "相对行号 要想相对行号起作用要放在显示行号后面
"set undofile "无限undo
"autocmd! bufwritepost _vimrc source % "自动载入配置文件不需要重启

"将-连接符也设置为单词
set isk+=-

"set gdefault

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

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" tabnext tabpreviouse

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/





"################ Abbr ################
abbr op openstack


"################ Vundle "################
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

"目录导航
Bundle 'scrooloose/nerdtree'
nnoremap <silent> <F8> :NERDTree <CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

"for minibufferexpl
"Bundle 'fholgado/minibufexpl.vim'
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"解决FileExplorer窗口变小问题
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplorerMoreThanOne=2
"let g:miniBufExplCycleArround=1
"
"" 默认方向键左右可以切换buffer
"nnoremap <TAB> :MBEbn<CR>
"nnoremap <leader>bn :MBEbn<CR>
"nnoremap <leader>bp :MBEbp<CR>
"nnoremap <leader>bd :MBEbd<CR>

"navigation by Tags
"https://github.com/majutsushi/tagbar/blob/master/doc/tagbar.txt
" 's' : change sort in Tagbar window
" 'Enter' : switch to the item when in Tagbar Window
" 'zc|zo|zR|zM' : fold to the item when in Tagbar Window
" 'h' : help when in Tagbar window

Bundle 'majutsushi/tagbar'
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_map_help = "h"
let g:tagbar_left = 1 
let g:tagbar_width = 20
let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1

Bundle 'vim-scripts/taglist.vim'
set tags=tags;/
let Tlist_Ctags_Cmd="/usr/bin/ctags"
nnoremap <silent> <F7> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 0
let Tlist_WinWidth = 25

"Bundle 'AutoClose'

"神级插件，ZenCoding可以让你以一种神奇而无比爽快的感觉写HTML、CSS
"Bundle 'ZenCoding.vim'

"在()、""、甚至HTML标签之间快速跳转；
Bundle 'matchit.zip'

"自动识别文件编码；
"Bundle 'FencView.vim'
"let g:fencview_autodectect=1

"显示行末的空格；
"Bundle 'ShowTrailingWhitespace'

"highlight all trailing whitespace in red
Bundle 'bronson/vim-trailing-whitespace'

"JS代码格式化插件；
"Bundle '_jsbeautify'

"用全新的方式在文档中高效的移动光标，革命性的突破
"Bundle 'EasyMotion'

"必不可少，在VIM的编辑窗口树状显示文件目录
"https://github.com/scrooloose/nerdtree
"Bundle 'vim-scripts/The-NERD-tree'
""设置相对行号
"nmap <leader>nt :NERDTree<cr>:set rnu<cr>
"let NERDTreeShowBookmarks=1
"let NERDTreeShowFiles=1
"let NERDTreeShowHidden=1
"let NERDTreeIgnore=['\.$','\~$']
"let NERDTreeShowLineNumbers=1
"let NERDTreeWinPos=1

"NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码；
"Bundle 'The-NERD-Commenter'
"let NERDShutUp=1


"解放生产力的神器，简单配置，就可以按照自己的风格快速输入大段代码。
"Bundle 'UltiSnips'
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

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
"https://github.com/Valloric/YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'

"power man page 

Bundle 'powerman/vim-plugin-viewdoc'

"support markdown syntax 
Bundle 'plasticboy/vim-markdown'
let g:vim_makrdown_folding_disabled = 1

"check python syntast"
Bundle 'scrooloose/syntastic'
let g:syntastic_lua_checkers = ['luac']
let g:syntastic_python_checkers = ['pep8']

"} END Vundle SETTINGS
"################ Vundle END ################

"set bs=indent,eol,start
set ai
set wildmenu "complement the cmd auto"
set wildignore=*.o,*~,*.pyc,*.class " Ignore compiled files

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
set wrap "自动换行
"set nowrap " Do not wrap text
set textwidth=80 " Place automatic text breaks
set hlsearch  " highlight the match word as yellow"

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
syntax enable
syntax on


"these are useful for snippetsemu plugin such as taglist
"filetype off
filetype plugin on
set runtimepath+=~/.vim/textmateOnly
set runtimepath+=~/.vim/textmateOnly/after

"################ quickfix ################
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw 10<cr>
",<space>“(先按,再按空格):编译
",cp : 跳到上一个错误
",cn : 跳到下一个错误
",cw : 打开quickfix窗口


"################ python ################
"highlight
set filetype=python
au BufNewFile, BufRead *.py, *.pyw setf python
"indent

set completeopt=longest,menu
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set omnifunc=python3complete#Complete
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent



"################ auto fcitx  ################
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
"################ auto fcitx end ################


"################ SetTitle ################
""定义函数SetTitle，自动插入文件头 尅自定义文件头信息
autocmd BufNewFile *.sh,*.py exec ":call SetTitle()"
func SetTitle()
"如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

"################ SetTitle ################




"################ Bundle Base ##################
"####original repos on GitHub
"Bundle 'tpope/vim-rails.git' equal to Bundle 'http://github.com/tpope/vim-fugitive.git'


"####vim-scripts repos
"Bundle 'L9'

"####non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" referenc : https://github.com/wklken/k-vim/blob/master/vimrc
