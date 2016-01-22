""
"
" @file 	.vimrc
" @author 	Nakhyun Jeon, 0xsecret@gmail.com
"
""

set number " 줄 번호
set hlsearch " 검색어 하이라이팅
set autoindent " 자동 들여쓰기
set smartindent
"set smarttab
set showmatch " 일치하는 괄호 하이라이팅
set autoread " 작업중인 파일 외부에서 수정시 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set ignorecase " 검색시 대소문자 무시
set cursorline " 현재 라인 표시
set cursorcolumn " 현재 행 표시
set tabstop=2 " tab 4칸으로
set expandtab " tab 대신 띄어쓰기로
set nobackup " bakup파일 생성 안함
set mouse=a " 마우스로 커서이동
set fencs=usc-bom,utf-8,cp949 " 파일 읽을때 인코딩
set nowrap " 자동 줄바꿈 안함
set shiftwidth=2 " 자동 들여쓰기 크기 설정
set ruler " 현재 커서 위치 표시
set visualbell " 잘못된 키 눌렀을때 화면 반전
set clipboard=unnamed "클립보드 복사
set nocompatible "vi와 호환하지 않음

execute pathogen#infect()
filetype plugin indent on

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

colorscheme desert

filetype on "파일 종류 자동인식
filetype plugin indent on
syntax enable "문법 강조

" 한글 깨짐 방지
set encoding=utf-8
set fileencodings=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'ctrlp.vim'
Plugin 'grep.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'Trinity'
Plugin 'SrcExpl'
Plugin 'taglist.vim'
Plugin 'The-NERD-tree'
Plugin 'AutoComplPop'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrlp
let g:ctrlp_custom_ignore={'dir': '\v[\/](boost)$',}
map <C-p>1 <ESC>:CtrlPMixed<CR>
map <C-p>2 <ESC>:CtrlPBuffer<CR>

map <C-p>3 <ESC>:FufChangeList!<CR>
map <C-p>4 <ESC>:FufLine!<CR>
map <C-p>5 <ESC>:FufJumpList!<CR>

" grep
let g:Grep_Skip_files='tags'
let g:Grep_Skip_Dirs='boost .git CMakeFiles'
map <F2> :Rgrep<CR><CR><CR><CR>

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='jellybeans'
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline#extensions#tabline#left_sep='>'
let g:airline#extensions#tabline#right_sep='<'
let g:airline_enable_branch = 1
let g:airline_detect_modified = 1

let NERDTreeShowHidden=1 " show hiddle file

"Open and close all the three plugins on the same time
nmap <F8> :TrinityToggleAll<CR> 
" Open and close the srcexpl.vim separately 
nmap <F9> :TrinityToggleSourceExplorer<CR> 
" Open and close the taglist.vim separately 
nmap <F10> :TrinityToggleTagList<CR> 
" Open and close the NERD_tree.vim separately 
nmap <F11> :TrinityToggleNERDTree<CR>
