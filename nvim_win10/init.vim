" Borrowed from https://jdhao.github.io/2018/11/15/neovim_configuration_windows/

call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" " add the plugin you want to use here.
 Plug 'joshdick/onedark.vim'
 Plug 'iCyMind/NeoSolarized'

 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'

 Plug 'scrooloose/nerdtree'
 Plug 'junegunn/goyo.vim'
 Plug 'junegunn/limelight.vim'
 Plug 'elzr/vim-json'
 Plug 'plasticboy/vim-markdown'
 Plug 'vim-pandoc/vim-pandoc-syntax'
 Plug 'vim-pandoc/vim-pandoc'
 Plug 'iamcco/markdown-preview.nvim'

 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-lua/popup.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-telescope/telescope-fzy-native.nvim'

 Plug 'sindrets/diffview.nvim'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
 let g:UltiSnipsJumpForwardTrigger="<c-j>"
 let g:UltiSnipsJumpBackwardTrigger="<c-k>"

 " disable header folding
 let g:vim_markdown_folding_disabled = 1

 " do not use conceal feature, the implementation is not so good
 let g:vim_markdown_conceal = 0

 " disable math tex conceal feature
 let g:tex_conceal = ""
 let g:vim_markdown_math = 1

 " support front matter of various format
 let g:vim_markdown_frontmatter = 1  " for YAML format
 let g:vim_markdown_toml_frontmatter = 1  " for TOML format
 let g:vim_markdown_json_frontmatter = 1  " for JSON format

 " Color name (:help cterm-colors) or ANSI code
  let g:limelight_conceal_ctermfg = 'gray'
  let g:limelight_conceal_ctermfg = 240

  " Color name (:help gui-colors) or RGB color
  let g:limelight_conceal_guifg = 'DarkGray'
  let g:limelight_conceal_guifg = '#777777'

  let g:goyo_width = '70%'

 let g:mkdp_auto_close = 0
 nnoremap <M-m> :MarkdownPreview<CR>

 autocmd! User GoyoEnter Limelight
 autocmd! User GoyoLeave Limelight!

 augroup pandoc_syntax
   au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
 augroup END


 let g:python3_host_prog = 'C:\Program Files\WindowsApps\PythonSoftwareFoundation.Python.3.9_3.9.1520.0_x64__qbz5n2kfra8p0'

 let mapleader="."

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" NERDTree
nnoremap <leader>o <cmd>NERDTree<cr>

" Saving and Closing
nnoremap <leader>q <cmd>q<cr>
nnoremap <leader>w <cmd>w<cr>

" Diffing
nnoremap <leader>do <cmd>DiffviewOpen<cr>
nnoremap <leader>dq <cmd>DiffviewClost<cr>

" Toc
nnoremap <leader>t <cmd>Toc<cr>

" Highlights
nnoremap <leader>n <cmd>noh<cr>

" ESC
inoremap df <esc>
cnoremap df <C-C>

 call plug#end()

 highlight ExtraWhitespace ctermbg=red guibg=red
 call matchadd("ExtraWhitespace", '\s\+$')
 call matchadd("ExtraWhitespace", '\w\s\s\w')

 set colorcolumn=150

 set tabstop=2
 set shiftwidth=2
 set expandtab
 set smartindent

 set number relativenumber
