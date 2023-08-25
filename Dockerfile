FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

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

WORKDIR ${HOME}

RUN git clone --depth=1 https://github.com/pyenv/pyenv.git .pyenv

ENV LANG="ko_KR.UTF-8"
ENV PYENV_ROOT="${HOME}/.pyenv"
ENV PATH="${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"

RUN pyenv install 3.11.4 && pyenv global 3.11.4

RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /lightning_template

COPY . .
