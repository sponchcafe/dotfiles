FROM alpine

RUN apk add \
    git \
    python3 \
    tmux \
    neovim \
    zsh

COPY tmux.conf /root/.tmux.conf
COPY Vundle.vim /root/.vim/bundle/Vundle.vim
COPY vimrc /root/.vimrc
COPY nvim/init.vim /root/.config/nvim/init.vim

ENV COLORTERM=truecolor
ENV TERM=xterm-256color
ENV SHELL=zsh

RUN nvim +PluginInstall +qall

ENTRYPOINT ["tmux"]

