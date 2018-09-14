#!/usr/bin/env bash

cd ~

echo "syntax on"                              > .vimrc
echo "set colorcolumn=80"                    >> .vimrc
echo "set number"                            >> .vimrc
echo "colorscheme industry"                  >> .vimrc
echo "xnoremap <leader>b xi()<Esc>P"         >> .vimrc
echo "highlight ColorColumn ctermbg=7"       >> .vimrc
echo "xnoremap <leader>c xi{}<Esc>P"         >> .vimrc
echo "xnoremap <leader>s xi[]<Esc>P"         >> .vimrc
echo "xnoremap <leader>q xi<Esc>P"           >> .vimrc
echo "autocmd BufWritePre * %s/\s\+$//e"     >> .vimrc
echo "set tabstop=4 shiftwidth=4 expandtab"  >> .vimrc
echo "vmap <leader>y :w! /tmp/vitmp<CR>"     >> .vimrc
echo "nmap <leader>p :r! cat /tmp/vitmp<CR>" >> .vimrc
