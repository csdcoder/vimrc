let mapleader="\\"
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
colorscheme slate
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
set nocompatible
" set ff=unix
set list
set listchars=tab:\|\ ,trail:▫
set hidden
set autoindent
set smartindent
" set autowrite
set wrap
set linebreak
" set colorcolumn=80
set mouse=n
set encoding=utf-8
" set number
" set relativenumber
" set ruler
set cursorline
syntax enable
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set scrolloff=5
set tw=0
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>[6 q" . "\<Esc>]12;white\x7"
let &t_SR = "\<Esc>[3 q" . "\<Esc>]12;white\x7"
let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;white\x7"
" set splitright
" set splitbelow
set shortmess-=S
set hlsearch
" exec "nohlsearch"
"set incsearch
set ignorecase
set smartcase
set updatetime=100
nnoremap <space><cr> :nohlsearch<cr>
noremap n nzz
noremap n nzz


" status/command bar
" set laststatus=2
set autochdir
set showcmd
set formatoptions-=tc

map s nop
map J nop
noremap Q :q<cr>
" noremap S :w<cr>
inoremap ( ()<left>
inoremap () ()
inoremap [ []<left>
inoremap { {}<left>
inoremap ,f <esc>:set nohlsearch<cr>/\(""\\|''\\|()\\|{}\\|><\\|$\)<cr>a

" inoremap jk <esc>
vnoremap Y "+y
nnoremap P "+p
inoremap <c-v> <esc>"+pa
inoremap <c-a> <esc>i

noremap j gj
noremap k gk
noremap gj j
noremap gk k
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

noremap <leader>b :buffers<cr>
noremap <space>n :bnext<cr>
noremap <space>p :bprevious<cr>
noremap <space>d :bdelete<cr>

" use <space> + new arrow keys for moving the cursor around windows
noremap <space>w <c-w>w
noremap <space>k <c-w>k
noremap <space>j <c-w>j
noremap <space>h <c-w>h
noremap <space>l <c-w>l
noremap <space>r <c-w>r

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
autocmd filetype netrw map s nop
map sk :set nosplitbelow<cr>:split<cr>:set splitbelow<cr>
map sj :set splitbelow<cr>:split<cr>
map sh :set nosplitright<cr>:vsplit<cr>:set splitright<cr>
map sl :set splitright<cr>:vsplit<cr>

" === rotate screens ===
noremap sr <c-w>r
noremap sR <c-w>R


" ==================== terminal ==========================
" noremap <leader>t :sp | terminal<cr>
" noremap <leader>vt :vsp | terminal<cr>


" ==================== tab management ====================
" create a new tab with tu
noremap tu :tabe<cr>
noremap tu :tab split<cr>
" move around tabs with tn and ti
noremap tn :-tabnext<cr>
noremap ti :+tabnext<cr>
" move the tabs with tmn and tmi
noremap tmn :-tabmove<cr>
noremap tmi :+tabmove<cr>

" ============= Resize splits with arrow keys================
" noremap <up> :res +5<CR>
" noremap <down> :res -5<CR>
" noremap <left> :vertical resize-5<CR>
" noremap <right> :vertical resize+5<CR>

" ============= 注释 ===============
autocmd filetype vim inoremap <buffer> <leader>/ <esc>0i" 
autocmd filetype vim nnoremap <buffer> <leader>/ 0i" <esc>
autocmd filetype vim vnoremap <buffer> <leader>/ :normal 0i" <cr><esc>


" ==================== markdown settings ====================
autocmd filetype markdown nnoremap s( "aciw()<esc>h"ap
autocmd filetype markdown nnoremap s[ "aciw[]<esc>h"ap
autocmd filetype markdown nnoremap s" "aciw""<esc>h"ap
autocmd filetype markdown nnoremap s' "aciw''<esc>h"ap
autocmd filetype markdown nnoremap s` "aciw``<esc>h"ap
autocmd filetype markdown nnoremap si "aciw**<esc>h"ap
autocmd filetype markdown nnoremap s~ "aciw~~~~<esc>2h"ap
autocmd filetype markdown nnoremap sb "aciw****<esc>2h"ap
autocmd filetype markdown nnoremap su "aciw<u></u><esc>4h"ap

" autocmd filetype markdown inoremap <buffer> ,f <esc>/$<cr>:nohl<cr>a
" autocmd filetype markdown inoremap <buffer> ,w <esc>/$<cr>:nohl<cr>a<bs>
" ,w --- delete surrond
autocmd filetype markdown inoremap ,w <esc>"adiw"_diWh"apa
autocmd filetype markdown nnoremap ,w "adiw"_diWh"ap
autocmd filetype markdown inoremap ,y ---<enter>
autocmd filetype markdown inoremap ,b **** <esc>F*hi
autocmd filetype markdown inoremap ,s ~~~~ <esc>F~hi
autocmd filetype markdown inoremap ,u <u></u><esc>F<i
autocmd filetype markdown inoremap ,i ** <esc>F*i
autocmd filetype markdown inoremap ,d `` <esc>F`i
autocmd filetype markdown inoremap ,c ```<enter><enter>```<enter><enter><++><esc>4ka
autocmd filetype markdown inoremap ,m - [ ]
autocmd filetype markdown inoremap ,p ![]() <esc>f[a
autocmd filetype markdown inoremap ,a []() <esc>f[a
autocmd filetype markdown inoremap ,1 #<space>
autocmd filetype markdown inoremap ,2 ##<space>
autocmd filetype markdown inoremap ,3 ###<space>
autocmd filetype markdown inoremap ,4 ####<space>
autocmd filetype markdown inoremap ,l --------<enter>

autocmd filetype markdown nnoremap <buffer> R :w<cr>:!chrome %:p<cr>
autocmd filetype vim nnoremap <buffer> R :w<cr>:source $MYVIMRC<cr>


noremap <space>rc :e $MYVIMRC<cr>
noremap <leader>rc :e $MYVIMRC<cr>

" nmap <F6> ms:call TitleDet() <cr>'s
nmap <F6> :call TitleDet() <cr>
"在文件中按F6调用
function AddTitle()
    call append (0,"---")
    call append (1,"date    : ".strftime("%Y-%m-%d %H:%M"))
    call append (2,"weather : ")
    call append (3,"tag     : ")
    call append (4,"---")
    call append (5,"")
"     echohl WarningMsg | echo "Adding coryright Successfully !!" | echohl None
    call setpos('.', [0,3,10,0])
endfunction
"在上面代码中添加自己的版权信息
function UpdateTitle()
    normal m'
    execute '/* Last modified\s*:/s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/* Filename\s*:/s@:.*$@\=": ".expand("%:t")@'
    execute "noh"
    normal 'k
"     echohl WarningMsg | echo "Updating coryright Successfully !!" | echohl None
endfunction
function TitleDet()
    let n=1
    while n<7
        let line = getline(n)
        if line =~ '^\s*\*\s*Last\smodified\s*:\s*\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n+1
    endwhile
    call AddTitle()
endfunction

" ==============笔记=======================
" 使用e.可以打开netrw
" 使用edit %:h可以在当前路径打开netrw
" 使用% 可以在netrw 中新建文件
" mf 可以标记文件，cb 可以将标记文件放入buffers
" mksession session.vim 可以保存会话，source session.vim 可以恢复会话
" ctrl+p ctrl+n 插入模式下可以补全
" ctrl+x ctrl+f 可以插入当前目录文件名
" ctrl+e 取消自动补全
" Ctrl + w + K ：移动当前窗口至屏幕顶端，并占用全部宽度
" ^WJ： 移动窗口至屏幕底端，并占用全部宽度
" ^WH：移动窗口至屏幕左端，并占用全部高度
" ^WL：移动窗口至屏幕右端，并占用全部高度
" ^WT ：移动窗口至屏新的现有分页
" Ctrl + W + =  ：让所有窗口调整至相同尺寸（平均划分）
" Ctrl + W + |：将当前窗口的宽度调到最大
" ^Wq，离开当前窗口
" ^Wc，关闭当前的窗口
" ^Wo，关闭当前窗口以外的所有窗口
" ]s 跳到下一处拼写错误
" [s 跳到上一处拼写错误
" z= 为当前单词提供更正建议
" zg 把当前单词添加到拼写文件中
" zw 把当前单词从拼写文件中删除
" zug 撤销针对当前单词的 zg 或 zw 命令
" 插入模式下通过 <C-x>s 命令更正拼写错误
" :vimgrep /something/g % | copen 打开关键字匹配列表
" :x和ZZ和:wq功能类似，但是不会写入没有被修改的g文件
" g; g, 跳到上/下一次修改过的地方
" Ctrl-B和Ctrl- F，以及PageUp和PageDown滚动的整版
" Ctrl-U和Ctrl-D默认滚动半页
" Ctrl-Y和Ctrl-E滚动一行


" ====== netrw ======
"设置是否显示横幅
" let g:netrw_banner = 1
"设置目录列表的样式：树形
" let g:netrw_liststyle = 3
"在之前的窗口编辑文件，类似按下大写 P
" let g:netrw_browse_split = 4
"水平分割时，文件浏览器始终显示在左边
" let g:netrw_altv = 1
"设置文件浏览器窗口宽度为 25%
" let g:netrw_winsize = 25
" "自动打开文件浏览器 netrw
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
