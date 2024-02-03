FROM r-base:latest

ENV TZ Asia/Tokyo
ARG UID
ARG GID
ARG PROJECT
ARG USERNAME=neovim

RUN apt-get update && apt-get install -y curl git sudo tmux ripgrep

ENTRYPOINT ["sh", "-c"]
