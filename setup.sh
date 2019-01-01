#!/usr/bin/env bash

cp gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

cd ~

cat << 'EOF' >> .bash_profile
. /Users/albert/.nix-profile/etc/profile.d/nix.sh
export PS1="\n\[\e[1m\]\[\e[36m\][\w]$\[\e[m\]\[\e[0m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -al'
EOF

mkdir -p .vim/syntax
curl "https://raw.githubusercontent.com/albertgoncalves/haskell.vim/master/syntax/haskell.vim" > \
    .vim/syntax/haskell.vim
curl "https://raw.githubusercontent.com/albertgoncalves/typescript-vim/master/syntax/typescript.vim" > \
    .vim/syntax/typescript.vim
curl "https://raw.githubusercontent.com/albertgoncalves/stan.vim/master/syntax/stan.vim" > \
    .vim/syntax/stan.vim
curl "https://raw.githubusercontent.com/albertgoncalves/vim-nix/master/syntax/nix.vim" > \
    .vim/syntax/nix.vim

mkdir .vim/colors
curl "https://raw.githubusercontent.com/albertgoncalves/gruvbox/master/colors/gruvbox.vim" > \
    .vim/colors/gruvbox.vim

cat << 'EOF' >> .vimrc
syntax on
set colorcolumn=80
set number
set background=dark
colorscheme gruvbox
xnoremap <leader>b xi()<Esc>P
xnoremap <leader>c xi{}<Esc>P
xnoremap <leader>s xi[]<Esc>P
xnoremap <leader>q xi""<Esc>P
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * retab
set tabstop=4 shiftwidth=4 expandtab
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufNewFile,BufRead *.stan setlocal filetype=stan
autocmd BufNewFile,BufRead *.nix setlocal filetype=nix
autocmd BufRead *.go retab
set cursorline
set laststatus=2
set statusline+=%F
set t_Co=256
EOF

# last line needed on the Pi!

cat << 'EOF' >> .tmux.conf
set-option -g default-shell "/bin/bash"
set -g default-terminal "xterm-256color"
set -g status-right '#(date +"%a, %b %d, %Y at %I:%M %p")'
setw -g mode-keys vi
bind-key -r -T prefix M-k resize-pane -U
bind-key -r -T prefix M-j resize-pane -D
bind-key -r -T prefix M-h resize-pane -L
bind-key -r -T prefix M-l resize-pane -R
EOF
