# Build neovim separately in the first stage
FROM alpine:latest AS base

RUN apk --no-cache add \
    autoconf \
    automake \
    build-base \
    cmake \
    ninja \
    coreutils \
    curl \
    gettext-tiny-dev \
    git \
    libtool \
    pkgconf \
    unzip

# Build neovim (and use it as an example codebase
RUN git clone https://github.com/neovim/neovim.git

ARG VERSION=master
RUN cd neovim && git checkout ${VERSION} && make CMAKE_BUILD_TYPE=RelWithDebInfo install

# To support kickstart.nvim
RUN apk --no-cache add \
    fd  \
    ctags \
    ripgrep \
    git

# Copy the kickstart.nvim init.lua
COPY ./init.lua /root/.config/nvim/init.lua

# Install lua-language-server
RUN apk --no-cache add \
    git \
    build-base \
    ninja \
    bash

RUN mkdir -p /root/.local && \
    cd /root/.local &&  \
    git clone --recursive https://github.com/sumneko/lua-language-server && \
    cd lua-language-server/3rd/luamake && \
    ./compile/install.sh && \
    cd ../.. && \
    ./3rd/luamake/luamake rebuild

ENV ENV="/root/.ashrc"

RUN echo "export PATH=$PATH:/root/.local/lua-language-server/bin" >> "$ENV"

# Add clangd extras
RUN apk --no-cache add \
    clang-extra-tools

WORKDIR /neovim
