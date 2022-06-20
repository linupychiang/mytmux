set splitbelow
set splitright
let mapleader=","
nmap <silent> <Leader>e :Defx <cr>
set colorcolumn=120


" 光标行高亮
" set cursorcolumn  " set cuc
set cursorline " set cul
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" refer: https://www.jianshu.com/p/b8763c23ea64

set timeoutlen=500
set nocompatible
set backspace=indent,eol,start

call plug#begin()
"call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'scrooloose/nerdtree' " 文件目录
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify' " 修改启动界面
Plug 'vim-airline/vim-airline' "状态栏美化
Plug 'yggdroot/indentline' "增加代码缩进线条
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'godlygeek/tabular'
Plug 'luochen1990/rainbow' " 彩虹括号
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive' "git 相关
Plug 'tpope/vim-surround' "ds 删除一个配对符号 (delete a surrounding) "cs 更改一个配对符号 (change a surrounding) "ys 增加一个配对符号 (yank a surrounding) "yS 在新的行增加一个配对符号并进行缩进 "yss 在整行增加一个配对符号 "ySs/Yss 行增加一个配对符号，配对符号单独成行并进行缩进
Plug 'jiangmiao/auto-pairs' "括号引号自动补齐
Plug 'preservim/nerdcommenter'  "代码注释 <leader>c<space>  加上/解开注释, 智能判断
Plug 'thinca/vim-quickrun'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" 文件树
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'kristijanhusak/defx-icons'

call plug#end()

" jedi  使用 Tab 键选择完成选择
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" defx 配置
"call defx#custom#option('_', {
"     \ 'winwidth': 30,
"    \ 'split': 'vertical',
"      \ 'direction': 'topleft',
"      \ 'show_ignored_files': 0,
"      \ 'buffer_name': '',
"      \ 'toggle': 1,
"      \ 'resume': 1
"      \ })


"autocmd FileType defx call s:defx_mappings()

" 配置文件夹/文件打开或关闭
function! s:defx_mappings() abort
  nnoremap <silent><buffer><expr> l     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
  nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
endfunction

function! s:defx_toggle_tree() abort
    " Open current file, or toggle directory expand/collapse
    if defx#is_directory()
        return defx#do_action('open_or_close_tree')
    endif
    return defx#do_action('multi', ['drop'])
endfunction

" ========================
" ctrl+n 打开或关闭侧边栏
map <C-n> :NERDTreeToggle<CR>
" 在当前目录打开文件树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"窗口位置
let g:NERDTreeWinPos='left'
"窗口尺寸
let g:NERDTreeSize=30
"窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
"打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"打开vim时自动打开NERDTree
autocmd vimenter * NERDTree
" ========================






"" coc
set updatetime=100 "更新时间100ms



syntax on	" 自动语法高亮
set number " 显示行号
set cindent
set smartindent " 开启新行时使用智能自动缩进
set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
set ruler " 打开状态栏标尺
set mouse=a "在vim所有模式下开鼠标，复制文档就可以不包含行号了
set nocompatible
filetype plugin indent on
set ic
set hlsearch
set fileencodings=utf-8,ucs-bom,GB2312,big5
"set cursorline
set scrolloff=4

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nocompatible              " required
filetype off                  " required

filetype plugin indent on    " required
nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

