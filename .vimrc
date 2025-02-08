 "__      _______ __  __   _____  _             _           
 "\ \    / /_   _|  \/  | |  __ \| |           (_)          
  "\ \  / /  | | | \  / | | |__) | |_   _  __ _ _ _ __  ___ 
   "\ \/ /   | | | |\/| | |  ___/| | | | |/ _` | | '_ \/ __|
    "\  /   _| |_| |  | | | |    | | |_| | (_| | | | | \__ \
     "\/   |_____|_|  |_| |_|    |_|\__,_|\__, |_|_| |_|___/
                                          "__/ |            
                                         "|___/             

call plug#begin('~/.vim/plugged')

" Codeium - AI ассистент
Plug 'Exafunction/codeium.vim'

" Coc - является интегрированной средой разработки (IDE) для Vim
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() }}

" предоставляет пользователю красивый и информативный интерфейс статусной строки.
Plug 'vim-airline/vim-airline'  " require vim-airline/vim-airline-themes
" содержит большое количество тем оформления для статусной строки.
Plug 'vim-airline/vim-airline-themes'
" добавляет в статусную строку часы с текущим временем.
"Plug 'enricobacis/vim-airline-clock'

" Auto brackets
" автоматически добавляет закрывающие скобки, кавычки и другие символы при 
" вводе открывающих
Plug 'jiangmiao/auto-pairs' 

"For vim-sandwich
" позволяет быстро обрамлять выделенный текст или текущее слово другими 
" символами, такими как кавычки, скобки или HTML-теги.
" Как пользовать:
" sae и нужный символ - вылелить и "окружить" в нужный символ
" sdb - убрать "окружение"
Plug 'machakann/vim-sandwich' 

" nerdtree плагин для навигации по файловой системе внутри Vim
" Как пользовать:
" найти текущий файл в  nerdtree: <leader>n;
" открыть nerdtree: Ctrl-n
Plug 'scrooloose/nerdtree'
" nerdtree-git-plugin расширяет функциональность Nerdtree, добавляя возможность работы с git-репозиториями
Plug 'Xuyuanp/nerdtree-git-plugin'
" плагин для подсветки синтаксиса файлов в дереве файлов NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" nerdcommenter плагин для комментирования кода
Plug 'preservim/nerdcommenter'

" содержит файлы фрагментов для различных языков программирования.
Plug 'honza/vim-snippets' 

"темы 
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin'  }

" vim-floaterm - плагин для создания терминала во всплывающем окне
Plug 'voldikss/vim-floaterm'

" позволяет быстро перемещаться по файлу с помощью различных маркеров.
Plug 'easymotion/vim-easymotion'

" Vimspector - плагин для отладки
Plug 'puremourning/vimspector'

" Color mark
Plug 'vim-scripts/ingo-library'
Plug 'WanGong/vim-mark'  " require vim-scripts/ingo-library"
 
" Поиск
Plug 'dyng/ctrlsf.vim'

"ALE проверку синтаксиса и семантические ошибки
Plug 'dense-analysis/ale'
"vim-cpp-enhanced-highlight включает дополнительную подсветку синтаксиса
"C++11/14/17
Plug 'octol/vim-cpp-enhanced-highlight'
"python-syntax включает дополнительную подсветку синтаксиса
Plug 'vim-python/python-syntax'

Plug 'ryanoasis/vim-devicons'
Plug 'preservim/tagbar'

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'  " require fugitive
Plug 'airblade/vim-gitgutter'

"Indent Guides - это плагин для визуального отображения уровней отступов
Plug 'Yggdroot/indentLine'

Plug 'rhysd/vim-clang-format'

Plug 'junegunn/goyo.vim' 

Plug 'psf/black'

Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
call plug#end()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
 
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"
 "__      _______ __  __    _____      _   _   _                 
 "\ \    / /_   _|  \/  |  / ____|    | | | | (_)                
  "\ \  / /  | | | \  / | | (___   ___| |_| |_ _ _ __   __ _ ___ 
   "\ \/ /   | | | |\/| |  \___ \ / _ \ __| __| | '_ \ / _` / __|
    "\  /   _| |_| |  | |  ____) |  __/ |_| |_| | | | | (_| \__ \
     "\/   |_____|_|  |_| |_____/ \___|\__|\__|_|_| |_|\__, |___/
                                                       "__/ |    
                                                      "|___/     


set mouse=nicr
"set laststatus=1
" устанавливает кодировку символов UTF-8
set enc=utf-8

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<> 
  
nmap Ж : 
" yank 
nmap Н Y 
nmap з p 
nmap ф a 
nmap щ o 
nmap г u 
nmap З P
nmap ёё \
nmap ее tt

set spell spelllang=en_us,ru_ru

" Очистка выделений поиска
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[] ]

" cursorline включает подсветку текущей строки
" listchars включает отображение невидимых символов
" list включает отображение невидимых символов
" cursorcolumn включает подсветку текущей колонки
set listchars=tab:\|\ 
set list
"set cursorcolumn
"set cursorline

" параметры обратного удаления (backspace) для редактирования текста. 
" Значение "indent" позволяет удалить пробелы, созданные при нажатии клавиши Tab для отступов. 
" Значение "eol" позволяет удалить символы в конце строки. 
" Значение "start" позволяет удалить символы в начале строки. 
set cul backspace=indent,eol,start

" set number устанавливает отображение номеров строк в редакторе,
" set nu
" relativenumber позволяет отображать номера строк относительно текущей строки.
set rnu nu
" history устанавливает количество сохраняемых команд в истории команд.
set history=1000

" позволяет выделять различные элементы кода разными цветами, что делает его
" более читабельным и удобным для работы
syntax on

 
" expandtab говорит Vim использовать пробелы вместо табуляции
" tabstop, shiftwidth и softtabstop устанавливают количество пробелов, которые будут использоваться для отступов.
" textwidth определяет максимальную длину строки текста
" colorcolumn устанавливает вертикальную линию на 80-м символе
" autoindent и smartindent устанавливают автоматическое добавление отступов при переходе на новую строку 
set et ts=4 sts=4 sw=4 tw=120 cc=120 ai si
autocmd FileType cpp setlocal tw=80 cc=80
" Устанавливает цвет вертикальной линии
highlight ColorColumn ctermbg=DarkGray guibg=LightGray
" очищает стиль подсветки для неправильно написанных слов, если он был 
" установлен ранее.
highlight clear SpellBad
" определяет стиль подсветки для неправильно написанных слов, в данном случае, 
" это подчеркивание и курсивный шрифт.
highlight SpellBad cterm=underline,italic gui=underline,italic

set clipboard=unnamed


" incsearch включает инкрементальный поиск в Vim, который отображает результаты поиска по
" мере ввода символов.
" hlsearch включает подсветку результатов поиска
set is hls 
" определяет стиль подсветки результатов поиска
highlight Search ctermbg=LightYellow ctermfg=Red cterm=bold,italic guibg=LightYellow guifg=Red gui=bold,italic

" matchpairs определяет пары символов, для которых будет автоматически выделяться 
" закрывающий символ при его вводе. В данном случае, это угловые скобки 
" и двоеточие.
set mps+=<:>
" определяет стиль подсветки для выделенных пар символов, в данном случае, это
" зеленый фон и синий шрифт
highlight MatchParen ctermbg=green ctermfg=blue guibg=green guifg=blue



" создает резервные копии файлов
set backup
set backupdir=~/.vim/backup/
" создает резервную копию файла перед его сохранением, чтобы сохранить 
" предыдущую версию файла
set writebackup
" перезаписывает оригинальный файл резервной копией при сохранении
set backupcopy=yes 
" устанавливает формат имени резервной копии в формате filename@2015-04-05.14:59.
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
" устанавливает открытие новых окон терминала Vim в нижней части экрана
set splitbelow


" Fix crazy wrong code, ref to:
" https://www.reddit.com/r/vim/comments/gv410k/strange_character_since_last_update_42m/fsmfxxv/
" убирают проблемы с неправильным отображением кодировки 
let &t_TI = ""
let &t_TE = ""

  "_____  _             _              _____      _   _   _                 
 "|  __ \| |           (_)            / ____|    | | | | (_)                
 "| |__) | |_   _  __ _ _ _ __  ___  | (___   ___| |_| |_ _ _ __   __ _ ___ 
 "|  ___/| | | | |/ _` | | '_ \/ __|  \___ \ / _ \ __| __| | '_ \ / _` / __|
 "| |    | | |_| | (_| | | | | \__ \  ____) |  __/ |_| |_| | | | | (_| \__ \
 "|_|    |_|\__,_|\__, |_|_| |_|___/ |_____/ \___|\__|\__|_|_| |_|\__, |___/
                  "__/ |                                           __/ |    
                 "|___/                                           |___/     

let g:onedark_terminal_italics = 1
let g:gruvbox_italic = 1
" Темы 
colo gruvbox
"colo onedark
"colo catppuccin-frappe
set termguicolors
set bg=dark
" определяет стиль подсветки для строк, в кавычках -  курсивный шрифт
highlight String cterm=italic gui=italic

" Привязка G-H-P для предварительного просмотра изменений
nnoremap <leader>ghp :GitGutterPreviewHunk<CR>
"
" " Привязка G-H-U для отмены изменений
nnoremap <leader>ghu :GitGutterUndoHunk<CR>

"for clang-format
autocmd BufWritePre *.c,*.cpp,*.h,*.hpp,*.cc,*.cxx,*.hh,*.hxx,*.c++,*.cxx++,*.h++,*.hxx++ :ClangFormat

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" The plugins for the coc.nvim
let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-clangd',
\ 'coc-tabnine',
\ 'coc-pyright',
\ 'coc-git',
\ '@yaegassy/coc-black-formatter'
"\ 'coc-go'
"\ '@yaegassy/coc-mypy',
"\ 'coc-jedi'
\ ]

" COC
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(2) : "\<S-Tab>"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd ColorScheme * highlight CocHighlightText ctermfg=LightMagenta guifg=LightMagenta cterm=bold gui=bold
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h c nmap <leader>rn <Plug>(coc-rename)oc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" NERDTree
" Как пользовать:
" найти текущий файл в  nerdtree: <leader>n;
" открыть и обновить дерево nerdtree: Ctrl-n
let NERDTreeMinimalUI=1 " remove the first line help info
let NERDTreeWinSize=40  " set width
let NERDTreeHighlightCursorline=1 " does not highlight the cursor of current file
let NERDTreeChDirMode = 2 " setting for current directory
let NERDTreeShowHidden = 1
" Auto quit NERDTree when vim is quited
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

nnoremap <leader>n :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeMapOpenInTab='\r'

" For airline
let g:airline_theme='gruvbox'                                                                                                             
let g:airline_powerline_fonts = 1                                                                                                         
"let g:airline_section_b = '%{fugitive#statusline()} %{getcwd()}' " in section B of the status line display the CWD                                                 

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.paste = 'ρ'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#coc#show_coc_status=1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '✗: '
let g:airline#extensions#ale#warning_symbol = '⚠ : '
let g:airline#extensions#ale#show_line_numbers = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline_skip_empty_sections = 1
let g:airline_stl_path_style = 'short'
let g:airline_section_c = '%t'
let g:airline_section_error = ''
let g:airline_section_warning = ''

function! AirlineInit()
    call airline#parts#define_raw('linenr', '%l')
    call airline#parts#define_accent('linenr', 'bold')
    let g:airline_section_z = airline#section#create(['%3p%% ', g:airline_symbols.linenr, 'linenr', ':%c'])
endfunction
autocmd VimEnter * call AirlineInit()

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


" 'voldikss/vim-floaterm'
" Usage: (1) toggle floaterm: tt;
let g:floaterm_keymap_new    = '<leader>tt'
let g:floaterm_keymap_kill   = '<leader>tk'
let g:floaterm_keymap_prev   = '<leader>tn'
let g:floaterm_keymap_next   = '<leader>tp'
let g:floaterm_keymap_toggle = 'tt'
let g:floaterm_title         = '$1/$2'

" Как пользоваться:
" выделять текущее слово: <leader>m;
" отменить выделение текущего слова: <leader>m;
" отменить все выделения: mm
nnoremap mm :MarkClear<CR>

" For 'dyng/ctrlsf.vim'
" ctrlsf is the ultimate global search tool.
" Usage:
" (1) search current word: K;
" (2) switch display style: M(in result window);
" (3) preview current result: Ctrl-p(in result window)
" (4) custom search: <leader>s;
" (5) toggle search reslt: cc
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_preview_position = 'outside'
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_winsize = '50%'
let g:ctrlsf_compact_winsize = '30%'
let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 0
    \}
let g:ctrlsf_auto_focus = { "at": "start" }
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_backend = 'rg'
let g:ctrlsf_mapping = { "popen": "<C-P>" }

nnoremap cc :CtrlSFToggle<CR>
nmap <leader>s <Plug>CtrlSFPrompt
nmap K <Plug>CtrlSFCwordPath<CR>


"ALE
let g:ale_linters = {
            \   'cpp': ['cc', 'clang', 'cppcheck', 'clang++'],
            \   'python': ['pylint'],
            \   'go': ['gopls'],
            \}
let g:ale_python_pylint_options = "--load-plugins pylint_django --django-settings-module=core.settings.dev" 
";--init-hook='import sys; sys.path.append(\".\")'"
let g:ale_python_auto_virtualenv = 1
let g:ale_fixers = {
            \   'cpp': ['clang-format'],
            \   'python': ['black'],
            \   'go': ['gofmt', 'goimports', 'gofumpt'],
            \}
let g:ale_linters_ignore = {'cpp': ['clangcheck', 'clangtidy']}
let g:ale_cpp_cc_options = "-std=c++17 -Wall"
let g:ale_cpp_clangd_options = "-std=c++17 -Wall"
" Опции для golangci-lint
let g:ale_go_golangci_lint_options = '--enable-all --fast'
" Не подсвечивать ошибки
let g:ale_set_highlights = 0
" Не линтить при изменении текста
let g:ale_lint_on_text_changed = 'never'
" Не линтить при входе в файл
let g:ale_lint_on_enter = 0
" Колонка с индикаторами ошибок/предупреждений
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" For cpp highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1


" For vim-gutentags
" The gutentags is used to auto generate tag, it is still usefull for most,
" as it is quite fast, although the match result maybe wrong at sometimes.
" Usage:
" (1) go to definition of current word: Ctrl-];
" (2) go back: Ctrl-t

" Project root flag, stop to find in the parent dir
let g:gutentags_enabled = 1
let g:gutentags_trace = 0
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', 'package.json']
" Tag file name
let g:gutentags_ctags_tagfile = 'tags'
" Put the tags into ~/.cache/tags
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" Tags parameter
let g:gutentags_ctags_extra_args = ['-R', '--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--language-force=C++']
" Create the dir if needed
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

let g:gutentags_add_default_project_roots = 0
let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git', 'cmake']
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0

" Maybe also exclude 'build'
let g:gutentags_ctags_exclude = [
\  '*.git', '*.svn', '*.hg',
\  'cache', 'dist', 'bin', 'node_modules', 'bower_components',
\  '*-lock.json',  '*.lock',
\  '*.min.*',
\  'CMakeLists.txt',
\  '*.bak',
\  '*.zip',
\  '*.pyc',
\  '*.class',
\  '*.sln',
\  '*.csproj', '*.csproj.user',
\  '*.tmp',
\  '*.cache',
\  '*.vscode',
\  '*.pdb',
\  '*.pb',
\  '*.exe', '*.dll', '*.bin',
\  '*.mp3', '*.ogg', '*.flac',
\  '*.swp', '*.swo',
\  '.DS_Store', '*.plist',
\  '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.svg',
\  '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
\  '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx', '*.xls',
\]

" Add "'detach': 1," to the build_default_job_options in autoload/gutentags.vim
" ref to:
" https://github.com/ludovicchabant/vim-gutentags/issues/178
" https://github.com/ludovicchabant/vim-gutentags/issues/167
" https://github.com/ludovicchabant/vim-gutentags/issues/168


" For tagbar
" Usage:
" (1) toggle tagbar: tb;
" (2) preview current tag: p(in tagbar window);
" (3) toggle maximize tagbar window: x(in tagbar window)
let g:tagbar_compact = 1 " remove the first line help info
let g:tagbar_width = 30
let g:tagbar_autoshowtag = 1 " auto highlight tags when edit file
let g:tagbar_iconchars = ['▸', '▾']

nnoremap tb :TagbarToggle<CR>

"for vim-indent-guides
let g:indentLine_setColors = 1
let g:indentLine_color_term = 239

   "_____        __ _      _____           _       _       
  "/ ____|      / _| |    / ____|         (_)     | |      
 "| (___   ___ | |_| |_  | (___   ___ _ __ _ _ __ | |_ ___ 
  "\___ \ / _ \|  _| __|  \___ \ / __| '__| | '_ \| __/ __|
  "____) | (_) | | | |_   ____) | (__| |  | | |_) | |_\__ \
 "|_____/ \___/|_|  \__| |_____/ \___|_|  |_| .__/ \__|___/
                                           "| |            
                                           "|_|            

nnoremap <C-n> :call NERDTreeToggleAndRefresh()<CR>
function NERDTreeToggleAndRefresh()
  :NERDTreeToggle
  if g:NERDTree.IsOpen()
    :NERDTreeRefreshRoot
  endif
endfunction


" Highlight all instances of word under cursor
" Type z/ to toggle highlighting on/off.
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

  "_  __            __  __          _____  
 "| |/ /           |  \/  |   /\   |  __ \ 
 "| ' / ___ _   _  | \  / |  /  \  | |__) |
 "|  < / _ \ | | | | |\/| | / /\ \ |  ___/ 
 "| . \  __/ |_| | | |  | |/ ____ \| |     
 "|_|\_\___|\__, | |_|  |_/_/    \_\_|     
            "__/ |                         
           "|___/                          

nnoremap <leader>o :only<CR>
nnoremap <leader>e :tabedit<CR>
nnoremap <leader>R :so<CR>

nnoremap <leader>w :w!<CR>
nnoremap <C-s> :w!<CR>
nnoremap <leader>Q :Q<CR>
nnoremap <leader>q :q!<CR>

nnoremap <leader>ц :w!<CR>
nnoremap <leader>й :q!<CR>

nnoremap <C-w>s :sp<CR>
nnoremap <C-w>v :vs<CR>

