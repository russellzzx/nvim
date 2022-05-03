let g:python3_host_prog='/usr/bin/python3'

set clipboard+=unnamedplus
"set Y same as ctrl+C
"vnoremap Y "+y

"filetype
filetype on
filetype indent on
filetype plugin on

"TAB
set softtabstop=2
set shiftwidth=2
"should run (:retab) after set expandtab
set expandtab
"clear all tail space after :w
autocmd BufWritePre * :%s/\s\+$//e

"window
"set showtabline=2
set splitbelow
set splitright

"search
"set hlsearch
set ignorecase
set smartcase

"stay at previous cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"basic key mapping
noremap <LEADER><CR> :nohlsearch<CR>
"noremap <LEADER>S :w<CR>
"noremap <LEADER>q :q<CR>

"resize window
map h <nop>
map hu :res +5<cr>
map hi :res -5<cr>
map ho :vertical resize -5<cr>
map ht :vertical resize +5<cr>

"split window
map j <nop>
map <leader>r :set splitright<CR>:vsplit<CR>
map <leader>s :set nosplitright<CR>:vsplit<CR>
map <leader>l :set nosplitbelow<CR>:split<CR>
map <leader>n :set splitbelow<CR>:split<CR>

map ju <C-w><up>
map ji <C-w><down>
map jo <C-w><left>
map jt <C-w><right>

"rotate tab
map ja <C-w>t<C-w>H
map je <C-w>t<C-w>K

"tab
map j, :tabe<CR>
map j. :tabclose<CR>

"Plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'connorholyday/vim-snazzy'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mg979/vim-visual-multi'

Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'tpope/vim-repeat'

Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mileszs/ack.vim'

Plug 'tomtom/tcomment_vim'

Plug 'honza/vim-snippets'


Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'kdheepak/lazygit.nvim'

"Plug 'ianding1/leetcode.vim'

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" Other visual enhancement
Plug 'luochen1990/rainbow'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'wincent/terminus'

"Plug 'voldikss/vim-codelf'


" Other useful utilities
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite

Plug 'github/copilot.vim'

call plug#end()

"====================cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 0

"==================== rainbow ====================
let g:rainbow_active = 1

" ==================== suda.vim ====================
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%
let g:suda_smart_edit = 1

" ==================== vim-instant-markdown ====================
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
" let g:instant_markdown_open_to_the_world = 1
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 0
" let g:instant_markdown_mathjax = 1
let g:instant_markdown_autoscroll = 1


" ==================== Bullets.vim ====================
" let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]


" ==================== vim-markdown-toc ====================
"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'


"codelf Example key mappings configuration
"let g:codelf_enable_popup_menu=1
"inoremap <silent> <F9> <C-R>=codelf#start()<CR>
"nnoremap <silent> <F9> :call codelf#start()<CR>

"leetcode setting
"let g:leetcode_china = 1
"let g:leetcode_browser = 'chrome'
"let g:leetcode_solution_filetype = 'cpp'
"let g:leetcode_hide_paid_only = 0
"let g:leetcode_hide_topics = 0
"let g:leetcode_hide_companies = 0
"let g:leetcode_problemset = 'all'

"use ack instead of grep
let g:ackprg = 'ag --nogroup --nocolor --column'
"let g:molokai_original = 1
"let g:rehash256 = 1
"snazzy should be set after Plug
try
  color snazzy
  let g:SnazzyTransparent = 1
catch
  color gruvbox
endtry

" TextEdit might fail if hidden is not set.
set hidden
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let g:coc_global_extensions = [
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-java',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-pyright',
	\ 'coc-snippets',
	\ 'coc-translator',
	\ 'coc-vimlsp',
	\ 'coc-yank',
	\'coc-clangd',
	\'coc-clang-format-style-options',
	\'coc-sh',
	\'coc-cmake',
        \'coc-tabnine']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
if CocAction('hasProvider', 'hover')
call CocActionAsync('doHover')
else
call feedkeys('K', 'in')
endif
endfunction
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)


nmap jj :CocCommand explorer<CR>
" coc-translator
nmap jf <Plug>(coc-translator-p)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" Compile function
noremap jp :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
                set splitbelow
                :sp
                :res -5
                term gcc % -o %< && time ./%<
        elseif &filetype == 'cpp'
                set splitbelow
                exec "!g++ -std=c++17 % -Wall -pedantic -O2 -o %<"
                :sp
                :res -15
                :term<CR>i./%<<CR>
        elseif &filetype == 'cs'
                set splitbelow
                silent! exec "!mcs %"
                :sp
                :res -5
                :term mono %<.exe
        elseif &filetype == 'java'
                set splitbelow
                :sp
                :res -5
                term javac % && time java %<
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'python'
                set splitbelow
                :sp
                :term python3 %
        elseif &filetype == 'markdown'
                exec "InstantMarkdownPreview"
        elseif &filetype == 'tex'
                silent! exec "VimtexStop"
                silent! exec "VimtexCompile"
        elseif &filetype == 'javascript'
                set splitbelow
                :sp
                :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
        elseif &filetype == 'racket'
                set splitbelow
                :sp
                :res -5
                term racket %
        elseif &filetype == 'go'
                set splitbelow
                :sp
                :term go run .
        endif
endfunc

"run
"autocmd BufRead.BufNewFile *.o noremap <F6> :% w !./<Enter>

