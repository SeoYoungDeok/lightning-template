FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

WORKDIR /lightning_template

ENV DEBIAN_FRONTEND="noninteractive" \
    TZ="Asia/Seoul"

RUN apt-get update -y && apt-get install -y \
    curl \
    gcc \
    make \
    git \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    liblzma-dev \
    wget \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils tk-dev \
    language-pack-ko

RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv

RUN echo 'export LANG="ko_KR.UTF-8"' >> ~/.bashrc; \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc; \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc; \
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc;

COPY . .
