" 启用扩展功能
set nocompatible
" as same as set nocompatible
set nocp
" 语法高亮显示
syntax on

set backspace=indent,eol,start
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set laststatus=2
set ruler
set incsearch
set ic
:set fileencodings=utf-8
:set fileencoding=utf-8
:set encoding=utf-8

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8

set foldmethod=manual

filetype on
filetype indent on
filetype plugin on

let OmniCpp_NamespacwSearch=1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_ShowAccess=1 
let OmniCpp_ShowPrototypeInAbbr=1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot=1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow=1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope=1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces=["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口 
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest

" clang 
packadd clang_complete
let g:clang_complete_copen=1  
let g:clang_snippets=1  
let g:clang_close_preview=1  
let g:clang_use_library=1  
let g:clang_user_options='-stdlib=libstdc++ -std=c++11 IncludePath'  
let g:clang_library_path="/usr/lib64/llvm" 

" 自动语法检查插件 ALE
let g:ale_sign_column_always = 1
" 在状态栏显示错误和告警
let g:airline#extensions#ale#enabled = 1

nmap zn zf%
nmap <F2> gg=G<C-o>
nmap <leader>ctags :!ctags -R *.c --c++-kinds=+p --fields=+iaS --extra=+q<cr>

" colorscheme gruvbox setting
" :packaddd gruvbox
colorscheme gruvbox
:set bg=dark

"格式化xml
function Xml()
	set filetype=xml
	:%s/></>\r</g "把><替换成>回车<
	:normal gg=G<cr>
	endfunction
map  <leader>xml  :call Xml()
map <leader>sync :windo set scb

" doxygen
packadd doxygen
:packadd doxygen
let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="pyq mail:pyqhaoku@163.com" 
let g:DoxygenToolkit_licenseTag="My own license <-- !!! Does not end with \<enter>"

