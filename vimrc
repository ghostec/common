call plug#begin('~/.vim/plugged')
Plug 'Rip-Rip/clang_complete' " c-family auto completion
Plug 'ervandew/supertab' " auto tab context
Plug 'junegunn/goyo.vim' " zen mode
Plug 'tpope/vim-surround' " quick switch enclosing chars
Plug 'jiangmiao/auto-pairs' " insert enclosing chars in pairs
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'hwartig/vim-seeing-is-believing'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'amix/vim-zenroom2' " markdown, text
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight' " c++11/14 highlighting, class/functions
" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Colorscheme
set background=light
"let g:hybrid_reduced_contrast=1
"colorscheme hybrid
"colorscheme solarized
"colorscheme tomorrow
colorscheme PaperColor

" :Goyo shortcut
nnoremap <silent> <leader>z :Goyo<cr>

" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest

" Limit popup menu height
set pumheight=15

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType="context"

" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto=0

" Show clang errors in the quickfix window
let g:clang_complete_copen=1

"let g:SuperTabClosePreviewOnPopupClose = 1
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/'

" vim-airline
set laststatus=2
"let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1

" clang_complete - snips parameters
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='clang_complete'

" NERDTree
nmap <leader>n :NERDTreeToggle<cr>

" Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END

" Line numbers
set number
set numberwidth=5
" Tabs
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" Font
set guifont=Fira_Mono:h20
