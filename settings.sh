#!/bin/bash

pyenv install 3.11.4
pyenv global 3.11.4

curl -sSL https://install.python-poetry.org | python3 -
echo 'export PATH="/root/.local/bin:$PATH"' >> ~/.bashrc
