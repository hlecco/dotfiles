call plug#begin('~/.local/share/nvim/plugged')
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()

autocmd BufReadPost *.rs setlocal filetype=rust

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ }

" Automatically start language servers
let g:LanguageClient_autoStart = 1

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

" Find placeholders
nmap <c-j> /<++><Enter>
nmap <c-k> ?<++><Enter>
