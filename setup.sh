#!/usr/bin/env bash

cp gitignore_global ~/.gitignore_global
# don't forget to add this file to git config!

cd ~

# echo "export PS1=\"-> \w $ \""                >> .bash_profile
# echo "export CLICOLOR=1"                      >> .bash_profile
# echo "export LSCOLORS=ExFxBxDxCxegedabagacad" >> .bash_profile
# echo "alias ls='ls -GFh'"                     >> .bash_profile

mkdir -p .vim/syntax
curl "https://raw.githubusercontent.com/albertgoncalves/haskell.vim/master/syntax/haskell.vim" > \
    .vim/syntax/haskell.vim
curl "https://raw.githubusercontent.com/albertgoncalves/typescript-vim/master/syntax/typescript.vim" > \
    .vim/syntax/typescript.vim
curl "https://raw.githubusercontent.com/albertgoncalves/stan.vim/master/syntax/stan.vim" > \
    .vim/syntax/stan.vim

mkdir .vim/colors
curl "https://raw.githubusercontent.com/albertgoncalves/gruvbox/master/colors/gruvbox.vim" > \
    .vim/colors/gruvbox.vim

echo "syntax on"                                                     > .vimrc
echo "set colorcolumn=80"                                           >> .vimrc
echo "set number"                                                   >> .vimrc
echo "set background=dark"                                          >> .vimrc
echo "colorscheme gruvbox"                                          >> .vimrc
echo "xnoremap <leader>b xi()<Esc>P"                                >> .vimrc
echo "xnoremap <leader>c xi{}<Esc>P"                                >> .vimrc
echo "xnoremap <leader>s xi[]<Esc>P"                                >> .vimrc
echo "xnoremap <leader>q xi""<Esc>P"                                >> .vimrc
echo "autocmd BufWritePre * %s/\s\+$//e"                            >> .vimrc
echo "set tabstop=4 shiftwidth=4 expandtab"                         >> .vimrc
echo "vmap <leader>y :w! /tmp/vitmp<CR>"                            >> .vimrc
echo "nmap <leader>p :r! cat /tmp/vitmp<CR>"                        >> .vimrc
echo "autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript" >> .vimrc
echo "autocmd BufNewFile,BufRead *.stan setlocal filetype=stan"     >> .vimrc
echo "set cursorline"                                               >> .vimrc
