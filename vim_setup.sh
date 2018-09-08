#!/usr/bin/env bash

cd ~

mkdir -p .vim/syntax
curl "https://raw.githubusercontent.com/albertgoncalves/haskell.vim/master/syntax/haskell.vim" > .vim/syntax/haskell.vim

mkdir .vim/colors
curl "https://raw.githubusercontent.com/albertgoncalves/Gummybears/master/colors/gummybears.vim" > .vim/colors/gummybears.vim

echo "syntax on"                                        > .vimrc
echo "set colorcolumn=80"                              >> .vimrc
echo "set number"                                      >> .vimrc
echo "colorscheme gummybears"                          >> .vimrc
echo "highlight ColorColumn ctermbg=0 guibg=lightgrey" >> .vimrc
echo "xnoremap <leader>p xi()<Esc>P"                   >> .vimrc
echo "xnoremap <leader>c xi{}<Esc>P"                   >> .vimrc
echo "xnoremap <leader>s xi[]<Esc>P"                   >> .vimrc
echo "xnoremap <leader>q xi""<Esc>P"                   >> .vimrc
echo "autocmd BufWritePre * %s/\s\+$//e"               >> .vimrc